# -*- coding: utf-8 -*-
"""Fetch the full YI Master Guide catalog and images for offline bundling."""
import json, os, sys, time, urllib.request, urllib.error

OUT = os.path.abspath(os.environ.get('OUT', 'offline_ml_data'))
BASE = 'https://uscamera-api.xiaoyi.com'
UA = 'okhttp/3.8.0'

os.makedirs(OUT, exist_ok=True)
for sub in ('g', 'p', 'x', 'i'):
    os.makedirs(os.path.join(OUT, sub), exist_ok=True)


def get(url, timeout=60, tries=4, binary=False):
    last = None
    for i in range(tries):
        try:
            req = urllib.request.Request(url, headers={'User-Agent': UA})
            with urllib.request.urlopen(req, timeout=timeout) as r:
                data = r.read()
            return data if binary else json.loads(data.decode('utf-8'))
        except Exception as e:
            last = e
            time.sleep(1.5 * (i + 1))
    raise last


def download(url, dest):
    if os.path.exists(dest) and os.path.getsize(dest) > 0:
        return os.path.getsize(dest)
    data = get(url, binary=True)
    tmp = dest + '.part'
    with open(tmp, 'wb') as f:
        f.write(data)
    os.replace(tmp, dest)
    return len(data)


def en(d, key):
    v = d.get(key + '_en')
    if v is None or str(v).strip() == '':
        v = d.get(key)
    return '' if v is None else str(v)


list_path = os.path.join(OUT, 'list.json')
if not os.path.exists(list_path):
    lst = get(BASE + '/templatepic/list?begin=0&end=100&language=en&userId=')
    open(list_path, 'w', encoding='utf-8').write(json.dumps(lst, ensure_ascii=False))
lst = json.load(open(list_path, encoding='utf-8'))
items = lst['data']
print('list items:', len(items))

catalog = []
total = 0
for it in items:
    pid = str(it['picId'])
    dpath = os.path.join(OUT, 'detail_%s.json' % pid)
    if os.path.exists(dpath):
        detail = json.load(open(dpath, encoding='utf-8'))
    else:
        detail = get(BASE + '/templatepic/detail?picId=%s&language=en&userId=' % pid)
        open(dpath, 'w', encoding='utf-8').write(json.dumps(detail, ensure_ascii=False))
    dt = detail['data']

    down_name = str(it.get('downFileName') or dt.get('downFileName') or '')
    if not down_name:
        print('SKIP no downFileName', pid)
        continue

    sizes = {}
    sizes['guide'] = download(dt['downUrl'], os.path.join(OUT, 'g', down_name))
    sizes['pic'] = download(dt['picUrl'], os.path.join(OUT, 'p', pid + '.jpg'))
    sizes['shadow'] = download(dt['shadowUrl'], os.path.join(OUT, 'x', pid + '.png'))
    item_url = dt.get('listUrl') or it.get('listUrl')
    sizes['item'] = download(item_url, os.path.join(OUT, 'i', pid + '.jpg'))
    total += sum(sizes.values())

    entry = {
        'picId': pid,
        'dsId': str(dt.get('dsId') or it.get('dsId') or ''),
        'downFileName': down_name,
        'picOrder': str(it.get('picOrder') or ''),
        'picName': en(dt, 'picName'),
        'label': en(dt, 'label'),
        'description': en(dt, 'description'),
        'author': en(dt, 'author'),
        'picColor': str(it.get('picColor') or ''),
        'picType': str(dt.get('picType') or '0'),
        'payStatus': str(dt.get('payStatus') or '0'),
        'isDown': '1',
        'version': str(dt.get('version') or it.get('version') or '0'),
        'fileVersion': str(dt.get('fileVersion') or it.get('fileVersion') or '0'),
        'listUrl': 'asset:///offline_ml/i/%s.jpg' % pid,
        'picUrl': 'asset:///offline_ml/p/%s.jpg' % pid,
        'shadowUrl': 'asset:///offline_ml/x/%s.png' % pid,
    }
    for k in ('draw', 'exposureProgram', 'fNumber', 'isoSpeedRatings', 'meteringMode',
              'focusMode', 'flash', 'lensModel', 'focalLength', 'exposureTime',
              'exposureBiasValue', 'lightSource', 'model', 'module'):
        entry[k] = en(dt, k)
    catalog.append(entry)
    print('%-4s %-14s %-22s guide=%7d pic=%7d shadow=%7d item=%7d' % (
        pid, down_name, entry['picName'][:22], sizes['guide'], sizes['pic'],
        sizes['shadow'], sizes['item']))

catalog.sort(key=lambda e: int(e['picOrder'] or 0), reverse=True)
open(os.path.join(OUT, 'catalog.json'), 'w', encoding='utf-8').write(
    json.dumps(catalog, ensure_ascii=False, indent=1))
print('catalog entries:', len(catalog), 'bytes downloaded this run:', total)

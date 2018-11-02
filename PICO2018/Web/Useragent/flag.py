#!/usr/bin/env python

import re
import requests

url = 'http://2018shell3.picoctf.com:11421/flag'
headers = {'User-Agent': 'Mozilla/5.0 compatible; Googlebot/2.1'}

r = requests.get(url, headers=headers)
print re.findall('picoCTF{.*}', r.text)[0]

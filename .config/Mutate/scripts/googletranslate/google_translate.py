#!/usr/bin/python2
#!encoding = utf-8

import re
import urllib
import urllib2
import json
import sys
reload(sys)
sys.setdefaultencoding('utf-8')

PL_ACTIVATE_PHRASE = "`"

for i in range(1, len(sys.argv)):
    if sys.argv[i].startswith(PL_ACTIVATE_PHRASE):
        sys.argv[i] = sys.argv[i][len(PL_ACTIVATE_PHRASE):]
        source_languege = "pl-PL"
        target_languege = "en"
    else:
        source_languege = "en"
        target_languege = "pl-PL"
    url = 'http://translate.google.cn/translate_a/t'
    payload = {
        'client': 'p',
        'text'  : sys.argv[i],
        'hl'    : 'en-EN',
        'sl'    : source_languege,
        'tl'    : target_languege,
        'multires': '1',
        'ssel'  : '0',
        'tsel'  : '0',
        'sc'    : '1',
        'ie'    : 'UTF-8',
        'oe'    : 'UTF-8'
        }
    response = urllib2.Request(url,urllib.urlencode(payload))
    browser = "Mozilla/5.0 (Windows NT 6.1; WOW64)"
    response.add_header('User-Agent', browser)
    response = urllib2.urlopen(response)
    get_page = response.read()
    get_page = json.loads(get_page)
    j = i
    if 'dict' in get_page.keys() and 'entry' in  get_page['dict'][0]:
        for i in get_page['dict'][0]['entry']:
            print '[' + i['word'] + ']'
            subtext = ''
            for tm in range(0, len(i['reverse_translation']) - 1):
                subtext = subtext + i['reverse_translation'][tm] + ', '
            subtext += i['reverse_translation'][-1] 
            print 'command=save_translated_anki ' + '"' + sys.argv[j] + '"' + ' ' + '"' + i['word'] + '"'
            print 'icon='
            print 'subtext=' + subtext
    else:
        for i in get_page['sentences']:
            if 'trans' in i.keys():
                print '[' + i['trans'] + ']'
                print 'command=save_translated_anki ' + '"' + i['orig'] + '"' + ' ' + '"' + i['trans'] + '"'
                print 'icon='
                print 'subtext=' + i['orig']

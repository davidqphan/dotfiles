#!/usr/bin/env python
from __future__ import print_function
from json import loads
from sys import argv
from requests import get

btc_url = 'https://api.coinbase.com/v2/prices/BTC-USD/spot'
eth_url = 'https://api.coinbase.com/v2/prices/ETH-USD/spot'
xrp_url = 'https://data.ripple.com/v2/exchange_rates/XRP/USD+rvYAfWj5gh67oV6fW32ZzP3Aw4Eubs59B?live=true'

try:
    btc = loads(get(btc_url).text)['data']['amount']
    eth = loads(get(eth_url).text)['data']['amount']
    xrp = loads(get(xrp_url).text)['rate']

    print("BTC: {:.2f}".format(float(btc)), end=' ')
    print("ETH: {:.2f}".format(float(eth)), end=' ')
    print("XRP: {:.5f}".format(float(xrp)), end='')

except:
    pass

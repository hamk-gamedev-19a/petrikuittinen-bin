#!/usr/bin/python3
import urllib.request

with urllib.request.urlopen("https://yle.fi/uutiset") as f:
    data = f.read()
    print(data.decode("utf-8")[:1000])
    

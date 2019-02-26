#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-

import json

def main():
    with open("izlazna.json", "r") as f:
        x = json.load(f)
        print x["ime"]
        print x["prezime"]
        print x["godine"]

if __name__ == "__main__":
    main()



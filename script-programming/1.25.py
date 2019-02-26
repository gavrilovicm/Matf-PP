#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-

import json

def main():
    
    ngrami = {}

    datoteka = raw_input("Unesite ime datoteke: ")
    n = int(raw_input("Unesite broj n: "))
    with open(datoteka, "r") as f:
        sadrzaj = f.read()
        for i in range(len(sadrzaj) - n + 1):
            if ngrami.has_key(sadrzaj[i:i+n]):
                ngrami[sadrzaj[i:i+n]] += 1
            else:
                ngrami[sadrzaj[i:i+n]]  = 1

    with open("rezultat.json", "w") as f:
        json.dump(ngrami, f)

if __name__ == "__main__":
    main()



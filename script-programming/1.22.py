#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-

import json

def main():
    ime = raw_input("Unesite svoje ime: ")
    prezime = raw_input("Unesite svoje prezime: ")
    godine = raw_input("Unesite svoje godine: ")

    junak = {"ime":ime, "prezime":prezime, "godine":godine}
    print json.dumps(junak)

    with open("izlazna.json", "w") as fr:
        json.dump(junak, fr)

if __name__ == "__main__":
    main()



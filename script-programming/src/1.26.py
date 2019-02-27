#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-

import json

def main():
    # korpa ima {ime, kolicina}
    # prodavnica ima {ime, cena}

    try:
        with open("korpa.json", "r") as f:
            korpa = json.load(f)
    except IOError:
        print "Greska pri citanju fajla"
    
    try:
        with open("idea.json", "r") as f:
            idea = json.load(f)
    except IOError:
        print "Greska pri citanju fajla"

    try:
        with open("maksi.json", "r") as f:
            maxi = json.load(f)
    except IOError:
        print "Greska pri citanju fajla"

    try:
        with open("shopngo.json", "r") as f:
            shopngo = json.load(f)
    except IOError:
        print "Greska pri citanju fajla"

    cena_maxi = 0;
    cena_idea= 0;
    cena_shopngo = 0;

    for kljuc in korpa:
        for k in maxi:
            if k["ime"] == kljuc["ime"]:
                cena_maxi += kljuc["kolicina"] * k["cena"]
        for k in idea:
            if k["ime"] == kljuc["ime"]:
                cena_idea += kljuc["kolicina"] * k["cena"]
        for k in shopngo:
            if k["ime"] == kljuc["ime"]:
                cena_shopngo += kljuc["kolicina"] * k["cena"]

    mini= min(cena_idea, cena_maxi, cena_shopngo)
    print mini


if __name__ == "__main__":
    main()



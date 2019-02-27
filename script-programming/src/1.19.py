#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-

def main():
    try:
        with open("ulaz.txt", "r") as f:
            for linija in f:
                for karakter in linija:
                    print karakter
            print "That's it.."
    except IOError:
        print "Doslo je do greske pri otvaranju datoteke."

if __name__ == "__main__":
    main()



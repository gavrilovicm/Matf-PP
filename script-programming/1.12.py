#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-

import random

def main():

    n = random.randint(0,100)

    print "Hello. I want to play a game..."
    print "I made up a number. Can you guess it?"

    while True:
        broj = int(raw_input())
        if (broj == n):
            print "Good for you, live to see another day."
            break
        elif (broj < n):
            print "Think bigger!"
        else:
            print "Not that big, something smaller"
    

if __name__ == "__main__":
    main()



#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-

import random
import math

def rastojanje(x,y):
        if math.sqrt((x - 0.5)**2 + (y - 0.5)**2) <= 0.5:
            return True
        else:
            return False


def main():
    n = int(raw_input("Unesite broj uzoraka: "))
    
    #a je broj tacaka unutar kruga
    a = 0;
    for i in range(n):
        x = random.random()
        y = random.random()

        print "({}, {})".format(x, y)
        if rastojanje(x,y):
            a += 1

    print float(4)*a/n




if __name__ == "__main__":
    main()



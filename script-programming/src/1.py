#!/usr/bin/env python3
# -*- coding: utf-8 -*-

def main():
    
    with open("ispit.json") as f:
        sadrzaj = f.read()


    lista = list(sadrzaj)

    
    for i in range(len(lista)):
        if lista[i] == "\'":
            lista[i] = '\"'
            
    sadrzaj = ''.join(lista)
    print sadrzaj

    with open("ispit.json", "w") as f:
        f.write(sadrzaj)

if __name__ == "__main__":
    main()



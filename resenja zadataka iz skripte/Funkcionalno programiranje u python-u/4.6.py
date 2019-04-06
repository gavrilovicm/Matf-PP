from functools import reduce
n = int(input("Unesite prirodan broj n: "))

brojevi = range(n+1)
print(reduce(lambda a, b: a+b, brojevi))

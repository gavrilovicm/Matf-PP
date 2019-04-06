niska = input("Unesite neku nisku: ")

#print(''.join([elem for elem in filter(lambda a: (a>='a' and a<='z'), niska)]))

# moze i ovako
print(''.join([elem for elem in filter(lambda a: a.isdigit(), niska)]))

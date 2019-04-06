ocena1 = int(input())
ocena2 = int(input())
ocena3 = int(input())

studenti = ["Marko", "Petar", "Pavle"]

for elem in zip(studenti, [ocena1, ocena2, ocena3]):
    print(elem)



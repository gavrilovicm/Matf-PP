import constraint


problem = constraint.Problem()


problem.addVariable("o",range(1,35))
problem.addVariable("p",range(1,15))
problem.addVariable("j",range(1,25))
problem.addVariable("m",range(1,25))
problem.addVariable("t",range(1,10))


def o(ovseni, piletina, jaje, mleko, tiramisu):
    if (ovseni*110 + piletina*205 + jaje*160 + mleko*160 + tiramisu*420 >= 2500) and (ovseni*110 + piletina*205 + jaje*160 + mleko*160 + tiramisu*420 <= 3500):
        if (ovseni*4 + piletina*32 + jaje*13 + mleko*8 + tiramisu*4 >= 60) and (ovseni*2 + piletina*12 + jaje*285 + mleko*22 + tiramisu*22 >= 500 and ovseni*2 + piletina*12 + jaje*285 + mleko*22 + tiramisu*22 <= 1000):
            if (ovseni < 5 and piletina < 4 and jaje < 11 and mleko < 9 and tiramisu < 3):
                return True
    return False


problem.addConstraint(o,"opjmt")

def cena(mapa):
    return mapa['o']*80 + mapa['p']*200 + mapa['j']*20 + mapa['m']*90 + mapa['t']*190

resenje = problem.getSolutions()
min = float('inf')
for key in resenje:
    if (cena(key) < min):
        min = cena(key)

print(min)


numerais = [x for x in range(10)]

# def mymap(map,lista):
#     for i in range (len(lista)):
#         lista[i] = map(lista[i])
#     return lista

def mymap(map,lista):
    for i in range (len(lista)):
        lista[i] = map(lista[i])
    return lista
def soma3(x):
    return x+3

print(mymap(soma3,numerais))       # [3,4,5,6,7,8,9,10,11,12]

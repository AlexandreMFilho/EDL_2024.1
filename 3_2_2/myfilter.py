numerais = [1,2,3,4,5,6,7,8,9,0]
alfabeto = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

def myFilter (filtro,lista):
    if len(lista) == 0:
        return []
    aux = lista.pop()
    newlista = myFilter(filtro,lista)
    if filtro(aux):
        newlista.append(aux)
    return newlista

def par(x):
    if(x%2 == 0):
        return True
    return False
    
def vogal(x):
    if x in 'aeiou':
        return True
    return False

print(myFilter(par,numerais))       # [0,2,4,6,8]
print(myFilter(vogal,alfabeto))     # ['a','e','i','o','u']
print(myFilter(lambda x: x%2 == 0,numerais))       # [0,2,4,6,8]


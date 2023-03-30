class Caracter:
    def __init__(self,v):
        self.max = len(v)# max recebido pelo construtor
        self.s = v
    def __iter__(self):
        self.cur = -1#estado atual do iterador
        return self
    def __next__(self):
        if self.cur > (self.max - 2):
            raise StopIteration#max atingido
        self.cur +=1#incremental atual
        return self.s[self.cur]

for v in Caracter("QUalquer coisa ai"):
    print(v)

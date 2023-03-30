class quadrado:
    def __init__(self):
        self.max = 10# max recebido pelo construtor
        self.state = 'dir'
    def __iter__(self):
        self.cur = 0#estado atual do iterador
        return self
    def __next__(self):
        if self.cur > self.max:
            raise StopIteration#max atingido
        if(self.cur == 10):
            self.cur = 0
            match self.state:
                case 'dir':
                    self.state = 'cima'
                case 'cima':
                    self.state = 'esq'
                case 'esq':
                    self.state = 'baixo'
                case 'baixo':
                    self.state = 'dir'
        self.cur +=1#incremental atual
        return self.state
    
for v in quadrado():
    print(v)

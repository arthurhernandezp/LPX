class Arvore:
    def __init__(self, a):
        self.curr = [a]
        
    def __iter__(self):
        return self
        
    def __next__(self):
        while self.curr:
            no = self.curr.pop()
            if isinstance(no, list):
                for f in reversed(no):
                    self.curr.append(f)
            else:
                return no
        raise StopIteration

a = [
    'aaa',
    [
        'xxx',
        'yyy',
    ],
    'bbb'
]

for f in Arvore(a):
    print(f) 

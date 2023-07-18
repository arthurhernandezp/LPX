function Quadrado()
   direcoes = {"dir", "esq", "cima", "baixo"}
   contador = 0
   
   co = coroutine.wrap( --criacao da coroutine
      function()
      for i = 1, 40 do
         pos = direcoes[math.floor((i-1) / 10) + 1]
         coroutine.yield(pos) -- retorna pos 
      end
   end)
   
   return co 
end

for dir in Quadrado() do
   print(dir)
end

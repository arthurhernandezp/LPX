function F()
    f = io.open("arquivo.txt", "r") 
    letra = f:read(1)
    while letra do
        coroutine.yield(letra)
        letra= f:read(1)
    end
    f:close()
end

for c in coroutine.wrap(F) do
    print(c)
end

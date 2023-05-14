function verificaPrimo(n)
  if n <= 1 then
    return false
  end
  for i = 2, math.sqrt(n) do
    if n % i == 0 then
      return false
    end
  end
  return true
end

function Primos()
  local n = 2
  return function()
    while true do
      if verificaPrimo(n) then
        local primo = n
        n = n + 1
        return primo
      end
      n = n + 1
    end
  end
end

for primo in Primos() do
  print(primo)
end

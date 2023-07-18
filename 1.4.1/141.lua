function Arquivo(nome_arquivo)
  local arquivo = io.open(nome_arquivo, "r") 
  local conteudo = arquivo:read("*all") 
  arquivo:close()

  local palavras = {} 

  for palavra in conteudo:gmatch("%S+") do 
    table.insert(palavras, palavra) 
  end

  local indice = 1 
  
  return function()
    local palavra_atual = palavras[indice]
    indice = indice + 1
    return palavra_atual
  end
end

for palavra in Arquivo("arquivo.txt") do
  print(palavra)
end

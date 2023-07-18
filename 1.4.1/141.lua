function Arquivo(nome_arquivo)
  local arquivo = io.open(nome_arquivo, "r") 
  local conteudo = arquivo:read("*all") -- p ler todo o conteudo do arquivo
  arquivo:close()

  -- vai armazenar as palavras lidas no txt
  local palavras = {} 

  for palavra in conteudo:gmatch("%S+") do -- funcao gmatch para encontrar todas as ocorrencias de espaços q n sejam em branco
    table.insert(palavras, palavra) -- Adicionar a palavra à tabela
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

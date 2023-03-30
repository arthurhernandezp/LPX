function Caracteres (str)
    local i = 0
    return function ()
        if i < string.len(str) then
            i = i + 1
            return string.sub(str,i,i)
        else
            return nil
        end

    end
end

for c in Caracteres("ola mundo") do
    print(c)
end

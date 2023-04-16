function pre(a)
  local ret = {}
  for _, v in ipairs(a) do
    if type(v) == "string" then
      table.insert(ret, v)
    else
      local subret = pre(v)
      for _, subv in ipairs(subret) do
        table.insert(ret, subv)
      end
    end
  end
  return ret
end

Arvore = {}
function Arvore:new(a)
  local obj = {}
  obj.vec = pre(a)
  obj.i = 0
  setmetatable(obj, self)
  self.__index = self
  return obj
end

function Arvore:next()
  self.i = self.i + 1
  if self.i > #self.vec then
    return nil
  end
  return self.vec[self.i]
end

function Arvore:pairs()
  return function()
    return self:next()
  end, self, nil
end

a = {
    'aaa',
    {
        'xxx',
        'yyy',
    },
    'bbb'
}

for f in Arvore:new(a):pairs() do
  print(f)
end

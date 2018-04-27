function keypressedsave(key)
  if key == "l"  then
      saverstringmana =  json.encode(mana) -- tradsave mana
      saverendmana = love.filesystem.write("save/mana", saverstringmana) --save mana

      saverstringvie =  json.encode(vie) -- tradsave vie
      saverendvie = love.filesystem.write("save/vie", saverstringvie) --save vie

      saverstringlevel = json.encode(level) -- tradsave level
      saverendlevel = love.filesystem.write("save/level", saverstringlevel)  --save level

      mana1 = love.filesystem.read("save/mana") --charge mana
      manaprint = json.decode(mana1) -- tradcharge mana

      vie1 = love.filesystem.read("save/vie") --charge vie
      vieprint = json.decode(vie1) -- tradcharge vie

      level1 = love.filesystem.read("save/level") --charge level
      levelprint = json.decode(level1) -- tradcharge level
  end
end

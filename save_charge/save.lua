function keypressedsave(key)
  if key == "l"  then
    saverstringmana =  json.encode(mana) -- tradsave mana
    saverendmana = love.filesystem.write("mana", saverstringmana) --save mana

    saverstringvie =  json.encode(vie) -- tradsave vie
    saverendvie = love.filesystem.write("vie", saverstringvie) --save vie

    saverstringlevel = json.encode(level) -- tradsave level
    saverendlevel = love.filesystem.write("level", saverstringlevel)  --save level

    mana1 = love.filesystem.read("mana") --charge mana
    manaprint = json.decode(mana1) -- tradcharge mana

    vie1 = love.filesystem.read("vie") --charge vie
    vieprint = json.decode(vie1) -- tradcharge vie

    level1 = love.filesystem.read("level") --charge level
    levelprint = json.decode(level1) -- tradcharge level
  end
end

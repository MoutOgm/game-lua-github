function keypressedcharge(key)
  if key == "m" then
    gamesave = json.decode(love.filesystem.read("game"))
    mana = gamesave.mana
    vie = gamesave.vie
    level = gamesave.level
  end
end

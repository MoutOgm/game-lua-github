function keypressedcharge(key)
  if key == "m" then
    game = json.decode(love.filesystem.read("game"))
    mana = game.mana
    vie = game.vie
    level = game.level
  end
end

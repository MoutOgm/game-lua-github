function keypressedcharge(key)
  if key == "m" then
    gamesave = json.decode(love.filesystem.read("game"))
    mana = gamesave.mana
    vie = gamesave.vie
    level = gamesave.level
    player = gamesave.player
    world:add(player, player.x, player.y, player.w, player.h)
  end
end

function keypressedsave(key)
  if key == "l"  then
    love.filesystem.write("game", json.encode({
      mana = mana,
      vie = vie,
      level = level,
      player = player
    }))
  end
end

function levelload()
  level = {}
  level.level = 1
  level.xp = 0
  level.xpmax = 0
end
function levelupdate(dt)
  pourcentxp = (level.xp / level.xpmax) * 100
  if level.level == 1 then
    level.xpmax = level.xpmax + 50
  elseif level.level <= 5 and level.level > 1 then
    mana.mana = mana.mana + 10 * level.level
    vie.vie = vie.vie + 10 * level.level
    level.xpmax = level.xpmax + 50 * level.level
  end
end
function leveldraw()
  love.graphics.setColor(255, 255, 255)
  love.graphics.rectangle("fill",width/2 - 100, height - 190, 100, yrec / 2)


end

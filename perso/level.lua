function levelload()
  level = {}
  level.level = 1
  level.xp = 0
  level.xpmax = 0
end
function levelupdate(dt)

  level.xp = 100
  if level.level == 1 then
    level.xpmaxlevel = level.xpmax + 50 * level.level
    mana.manamaxlevel = mana.manamax
    vie.viemaxlevel = vie.viemax
  end
  if level.xp >= level.xpmaxlevel then
    level.xp = level.xp - level.xpmaxlevel
    level.level = level.level + 1
    if level.level <= 5 and level.level > 1 then
      mana.manamaxlevel = mana.manamax + 10 * level.level
      vie.viemaxlevel = vie.viemax + 10 * level.level
      level.xpmaxlevel = level.xpmax + 50 * level.level
    elseif level.level <= 10 and level.level > 5 then
      mana.manamaxlevel = mana.manamax + 20 * level.level
      vie.viemaxlevel = vie.viemax + 20 * level.level
      level.xpmaxlevel = level.xpmax + 100 * level.level
    elseif level.level > 10 then
      level.level = 10
      level.xp = level.xpmaxlevel
    end
    mana.mana = mana.manamaxlevel
    vie.vie = vie.viemaxlevel
  end
  pourcentxp = (level.xp / level.xpmaxlevel) * 100
end
function leveldraw()
  love.graphics.setColor(255, 255, 255)
  love.graphics.rectangle("fill",width/2 - 100, height - 190, pourcentxp * 2, yrec)
  love.graphics.print("level : "..level.level, width/2 - 21, height - 179)
  love.graphics.setColor(255, 20, 20)
  love.graphics.print(math.ceil(level.xp), width/2 - 10 , height - 192)
end

function addworld()
  -- world
  ground = {}
  ground[1] = {x = 0, y = 850, w = 4800, h = 50}
  world:add(ground[1], ground[1].x, ground[1].y, ground[1].w, ground[1].h)
  grav = 200
  -- terrain
  local numblock = 1
  block = {}
  for numblock = 1, 10, 1 do
    block[numblock] = {x = math.random(0, 4750), y = math.random(0, 750), w = 50, h = 50}
    world:add(block[numblock], block[numblock].x, block[numblock].y, block[numblock].w, block[numblock].h)
  end
  --ennemis
  local numennemi = 1
  ennemis = {}
  num = math.random(25, 50)
  for numennemi = 1, num, 1 do
    ennemis[numennemi] = {x = math.random(0, 4750), y = math.random(0, 750), w = 10, h = 10}
    world:add(ennemis[numennemi], ennemis[numennemi].x, ennemis[numennemi].y, ennemis[numennemi].w, ennemis[numennemi].h)
    num = numennemi
  end

end
function worlddraw()
  --perso
  love.graphics.setColor(10, 255, 30, 70)
  love.graphics.rectangle("fill", world:getRect(ground[1]))
  love.graphics.setColor(10, 255, 30)
  love.graphics.rectangle("line", world:getRect(ground[1]))
  --terrain
  for numblock = 1, 10, 1 do
    love.graphics.setColor(10, 255, 30, 70)
    love.graphics.rectangle("fill", world:getRect(block[numblock]))
    love.graphics.setColor(10, 255, 30)
    love.graphics.rectangle("line", world:getRect(block[numblock]))
  end
  --ennemis
  for numennemi = 1, num, 1 do
    love.graphics.setColor(10, 200, 130, 70)
    love.graphics.rectangle("fill", world:getRect(ennemis[numennemi]))
    love.graphics.setColor(10, 200, 130)
    love.graphics.rectangle("line", world:getRect(ennemis[numennemi]))
  end
end

function addworld()
  -- world
  ground = {}
  ground[1] = {x = 0, y = 850, w = 1600, h = 50}
  world:add(ground[1], ground[1].x, ground[1].y, ground[1].w, ground[1].h)
  grav = 200
  -- terrain
  local num = 1
  block = {}
  for num = 1, 10, 1 do
    block[num] = {x = math.random(0, 1550), y = math.random(0, 750), w = 50, h = 50}
    world:add(block[num], block[num].x, block[num].y, block[num].w, block[num].h)
  end
end
function worlddraw()
  --perso
  love.graphics.setColor(10, 255, 30, 70)
  love.graphics.rectangle("fill", world:getRect(ground[1]))
  love.graphics.setColor(10, 255, 30)
  love.graphics.rectangle("line", world:getRect(ground[1]))
  --ennemis
  for num = 1, 10, 1 do
    love.graphics.setColor(255, 30, 10, 70)
    love.graphics.rectangle("fill", world:getRect(block[num]))
    love.graphics.setColor(255, 10, 30)
    love.graphics.rectangle("line", world:getRect(block[num]))
  end
end

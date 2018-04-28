function addworld()
  -- world
  ground = {}
  ground[1] = {x = 0, y = 850, w = 4800, h = 50}
  world:add(ground[1], ground[1].x, ground[1].y, ground[1].w, ground[1].h)
  grav = 200
  -- terrain
  block = {}
  block[1] = {x = 4750, y = 800, w = 50, h = 50}
  world:add(block[1], block[1].x, block[1].y, block[1].w, block[1].h)
end
function worlddraw()
  love.graphics.setColor(10, 255, 30, 70)
  love.graphics.rectangle("fill", world:getRect(ground[1]))
  love.graphics.setColor(10, 255, 30)
  love.graphics.rectangle("line", world:getRect(ground[1]))

  love.graphics.setColor(255, 30, 10, 70)
  love.graphics.rectangle("fill", world:getRect(block[1]))
  love.graphics.setColor(255, 10, 30)
  love.graphics.rectangle("line", world:getRect(block[1]))
end

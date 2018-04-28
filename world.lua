function addworld()
  -- world
  ground = {}
  ground[1] = {x = 0, y = 850, w = 1600, h = 50}
  world:add(ground[1], ground[1].x, ground[1].y, ground[1].w, ground[1].h)
  grav = 200
  -- terrain
end
function worlddraw()
  love.graphics.rectangle('fill', world:getRect(ground[1]))
end

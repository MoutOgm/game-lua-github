function playerload()
  player = {x = 50, y = 50, w = 25, h = 25, speed = 100}
  world:add(player, player.x, player.y, player.w, player.h)
  jump = false
  onground = false
  friction = 20
  maxSpeed = 600
  jumpAcc = 500
  jumpMaxSpeed = 9.5
  dymax = 50
end
function playerupdate(dt)
  dx, dy = 0, 0

  dx = dx * (1 - math.min(dt * friction, 1))
  dy = dy * (1 - math.min(dt * friction, 1))

  dy = dy + grav * dt
  if love.keyboard.isDown("d") and dx < maxSpeed then
    dx = player.speed * dt
  elseif love.keyboard.isDown("q") and dx > - maxSpeed then
    dx = - player.speed * dt
  end
  if love.keyboard.isDown("z") then
    if dy <  jumpMaxSpeed then
      dy = dy - jumpAcc * dt
    end
  end

  if dx ~= 0 or dy ~= 0 then
    player.x, player.y, cols, cols_len = world:move(player, player.x + dx, player.y + dy)
    for i=1, cols_len do
      col = cols[i]
      onground = true
    end
  end
end
function playerdraw()
  love.graphics.rectangle('fill', world:getRect(player))
end

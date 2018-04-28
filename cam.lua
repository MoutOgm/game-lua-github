function camload()
  camworld = {width = 1600, height = 900}
  cam = gamera.new(0, 0, 1600, 900)
  cam:setWorld(0, 0, 3200, 900)
end
function camupdate(dt)
  cam:setPosition(player.x, player.y)
end

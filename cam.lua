function camload()
  camworld = {width = 1600, height = 900}
  cam = gamera.new(0, 0, 1600, 900)
  cam:setWorld(0, 0, camworld.width, camworld.height)
end
function camupdate(dt)
  cam:setPosition(player.x + 12.5, player.y + 12.5)
end

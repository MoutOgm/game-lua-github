function worldload()
  world = {}
  world.world = love.physics.newWorld(0, 100, true)

  world.body = {}
  world.body.x1 =  10
  world.body.y1 = 10
  world.body.body1 = love.physics.newBody(world.world, world.body.x1, world.body.y1, "dynamic")

  world.body.body2 = love.physics.newBody(world.world, 800, 900, "static")

  world.shape  = {}
  world.shape.body1 = love.physics.newRectangleShape(20, 20)

  world.shape.body2 = love.physics.newRectangleShape(1600, 100)


  world.fixture = {}
  world.fixture.body1 = love.physics.newFixture(world.body.body1, world.shape.body1, 1)

  world.fixture.body2 = love.physics.newFixture(world.body.body2, world.shape.body2, 1)

  world.fixture.body1:setRestitution(0.2)
end
function worlddraw()
  love.graphics.polygon("fill", world.body.body1:getWorldPoints(world.shape.body1:getPoints()))
  love.graphics.polygon("fill", world.body.body2:getWorldPoints(world.shape.body2:getPoints()))
end
function worldupdate(dt)
  world.world:update(dt)
end

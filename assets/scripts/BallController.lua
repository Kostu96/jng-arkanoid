BallController = LuaScript:create()

BallController.Speed = 10

function BallController:onCreate()
    math.randomseed(os.time())

    self.rigidbody = self:getComponent(Component.Rigidbody2D)

    self:respawn()
end

function BallController:respawn()
    local angle = math.random(0, 180)
    local xVel = math.cos(math.rad(angle)) * self.Speed
    local yVel = math.sin(math.rad(angle)) * self.Speed
    self.rigidbody:setLinearVelocity(xVel, yVel)
end

return BallController

BallController = LuaScript:create()

BallController.Speed = 10

local function respawn(ballController)
    local angle = math.random(15, 180 - 15)
    local xVel = math.cos(math.rad(angle)) * ballController.Speed
    local yVel = math.sin(math.rad(angle)) * ballController.Speed
    ballController.rigidbody:setLinearVelocity(xVel, yVel)
end

function BallController:onCreate()
    math.randomseed(os.time())

    self.rigidbody = self:getComponent(Component.Rigidbody2D)

    respawn(self)
end

return BallController

BallController = {}

BallController.Speed = 10

function BallController:onCreate()
    math.randomseed(os.time())

    self.rigidbody = self.entity:getComponent(ComponentTypeID.Rigidbody2D)
end

BallController.started = false;

function BallController:respawn()
    local angle = math.random(15, 180 - 15)
    local xVel = math.cos(math.rad(angle)) * self.Speed
    local yVel = math.sin(math.rad(angle)) * self.Speed
    self.rigidbody:setLinearVelocity(xVel, yVel)
end

function BallController:onUpdate(dt)
    if (not self.started) then
        self.started = true
        self:respawn()
    end
end

return BallController

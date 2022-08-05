PlayerController = LuaScript:new()

PlayerController.Speed = 100

function PlayerController:onCreate()
    self.rigidbody = self:getComponent(Components.Rigidbody2D)
end

function PlayerController:onUpdate(dt)
    local xVel = 0
    if (Input.isKeyPressed(Input.Key.A)) then
        xVel = -self.Speed
    elseif (Input.isKeyPressed(Input.Key.D)) then
        xVel = self.Speed
    end

    self.rigidbody:setVelocity(xVel * dt, 0)
end

return PlayerController

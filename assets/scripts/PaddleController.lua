PaddleController = {}

PaddleController.Speed = 10
PaddleController.XConstrain = 13.75

function PaddleController:onCreate()
    self.rigidbody = self.entity:getComponent(ComponentTypeID.Rigidbody2D)
end

function PaddleController:onUpdate(dt)
    local xScale = self.entity:getScale()
    local xPos = self.entity:getPosition()

    local xVel = 0
    if (Input.isKeyPressed(Input.Key.A) and
        xPos - xScale / 2 > -self.XConstrain) then
        xVel = -self.Speed
    elseif (Input.isKeyPressed(Input.Key.D) and
            xPos + xScale / 2 < self.XConstrain) then
        xVel = self.Speed
    end

    self.rigidbody:setLinearVelocity(xVel, 0)
end

return PaddleController

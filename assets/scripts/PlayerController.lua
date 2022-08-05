PlayerController = LuaScript:new()

PlayerController.Speed = 30

function PlayerController:onCreate()
    self.rigidbody = self:getComponent(Components.Rigidbody2D)
end

function PlayerController:onUpdate(dt)

end

return PlayerController

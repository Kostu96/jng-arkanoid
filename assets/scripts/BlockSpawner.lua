BlockSpawner = {}

BlockSpawner.Columns = 13
BlockSpawner.Rows = 7
BlockSpawner.Spacing = 0.1

function BlockSpawner:onCreate()
    local xPos, yPos = self.entity:getPosition()

    for c = 0, self.Columns - 1 do
        for r = 0, self.Rows - 1 do
            local block = self.scene:createEntity("Block" .. c .. r)
            block:scale(2, 0.5, 1)
            block:setPosition(
                xPos + (2 + self.Spacing) * c,
                yPos - (0.5 + self.Spacing) * r,
                0
            )
            block:addComponent(ComponentTypeID.SpriteRenderer)
            block:addComponent(ComponentTypeID.Rigidbody2D)
            block:addComponent(ComponentTypeID.BoxCollider2D)
        end
    end
end

return BlockSpawner

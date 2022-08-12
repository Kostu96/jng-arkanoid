BlockSpawner = LuaScript:create()

BlockSpawner.Columns = 8
BlockSpawner.Rows = 5

function BlockSpawner:onCreate()
    for c = 0, self.Columns - 1 do
        for r = 0, self.Rows - 1 do
            local block = self:createEntity("Block" .. c .. r)
        end
    end
end

return BlockSpawner

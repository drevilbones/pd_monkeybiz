import "character"

class('Enemy').extends(Character)

function Enemy:init()
    Enemy.super.init(self, imageFile, x, y, hp)
    
end

function Enemy:update()
    Enemy.super.update(self)
    
end
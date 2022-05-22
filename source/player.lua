class('Player').extends(Character)

function Player:init()
    Player.super.init(self, imageFile, x, y, hp)
    
end

function Player:update()
    Player.super.update(self)
    
end
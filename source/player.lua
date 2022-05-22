import "character"

class('Player').extends(Character)

function Player:init(x,y)
    Player.super.init(self, "images/smiley.png", x, y, 3)
    
end

function Player:update()
    Player.super.update(self)
    
    if playdate.buttonIsPressed(playdate.kButtonUp) then
		if self.y > 16 then
			self:moveBy(0, -2)
        end
	end
	if playdate.buttonIsPressed(playdate.kButtonRight) then
		if self.x < 384 then
			self:moveBy(2, 0)
        end
	end
	if playdate.buttonIsPressed(playdate.kButtonDown) then
		if self.y < 224 then
			self:moveBy(0, 2)
        end
	end
	if playdate.buttonIsPressed(playdate.kButtonLeft) then
		if self.x > 16 then
			self:moveBy(-2, 0)
        end
	end
end
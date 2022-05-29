import "CoreLibs/sprites"
import "CoreLibs/animation"

local gfx = playdate.graphics

class('Player').extends(gfx.sprite)

function Player:init()
    Player.super.init(self)

	self.hp = 3

	self.sprSheet = gfx.imagetable.new("images/stick_sprite")
	self.anim = gfx.animation.loop.new(100,self.sprSheet, true)
    --self:secCollideRect(0,0,32,32)
	self:setZIndex(1000)

	self.sprStanding = 1
	self.sprRunning = 2

	self.anim.startFrame = self.sprRunning

	self:moveTo(100,100)
	self:add()
end

function Player:update()
    Player.super.update(self)
    
    if playdate.buttonIsPressed(playdate.kButtonUp) then
		if self.y > 16 then
			self:moveBy(0, -2)
			self:setImage(self.anim:image())
        end
	elseif playdate.buttonIsPressed(playdate.kButtonRight) then
		if self.x < 384 then
			self:moveBy(2, 0)
			self:setImage(self.anim:image())
        end
	elseif playdate.buttonIsPressed(playdate.kButtonDown) then
		if self.y < 224 then
			self:moveBy(0, 2)
			self:setImage(self.anim:image(), gfx.kImageFlippedX)
        end
	elseif playdate.buttonIsPressed(playdate.kButtonLeft) then
		if self.x > 16 then
			self:moveBy(-2, 0)
			self:setImage(self.anim:image(), gfx.kImageFlippedX)
        end
	else
		self:setImage(self.sprSheet[1])
	end

end
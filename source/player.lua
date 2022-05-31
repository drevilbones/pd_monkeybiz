import "CoreLibs/sprites"
import "CoreLibs/animation"

local gfx <const> = playdate.graphics

class('Player').extends(gfx.sprite)

function Player:init(x, y)
    Player.super.init(self)

	self.hp = 3

	self.sprSheet = gfx.imagetable.new("images/stick_sprite")
	self.anim = gfx.animation.loop.new(100,self.sprSheet, true)
	self:setZIndex(1000)

	self.sprStanding = 1
	self.sprRunning = 2

	self.anim.startFrame = self.sprRunning

	self:setCenter(0.5, 1) --bottom middle
	self:moveTo(x,y)
	self:add()
end

function Player:update()
    Player.super.update(self)

	if self.hp == 0 then
		self:remove()
	end

	local moving = false

    if playdate.buttonIsPressed(playdate.kButtonUp) then
		self:moveBy(0, -2)
		self:setImage(self.anim:image())
		moving = true
	end
	if playdate.buttonIsPressed(playdate.kButtonDown) then
		self:moveBy(0, 2)
		self:setImage(self.anim:image())
		moving = true
	end	
	if playdate.buttonIsPressed(playdate.kButtonRight) then
		self:moveBy(2, 0)
		self:setImage(self.anim:image())
		moving = true
	end
	if playdate.buttonIsPressed(playdate.kButtonLeft) then
		self:moveBy(-2, 0)
		self:setImage(self.anim:image(), gfx.kImageFlippedX)
		moving = true
	end
	if not moving then
		self:setImage(self.sprSheet[1])
	end
end
--local hello = display.newText("Hello,Corona！",160,20,native.systemFont, 44)

--local tree = display.newImage("green.png", 160, 300)

--[[
local rect = display.newRect(100, 100,  100, 100 )
rect:setFillColor( 1, 0.5, 0.1, 1 )
rect.alpha = 0.5
--]]

--[[
local function onTouch( event )
	local rect = display.newRect(200, 200,  100, 100 )
end
Runtime:addEventListener( "touch", onTouch )
--]]

--[[
local rect = display.newRect(100, 100,  100, 100 )
local function moveRect( event )
	if( event.phase == "moved" ) then
		rect.x = event.x
		rect.y = event.y
	end
end
rect:addEventListener( "touch", moveRect )
--]]

--[[
local BGM = audio.loadSound( "bgm.mp3")
audio.play( BGM,{ loops = -1 } )
--channel = 1,
--duration = 30000,
--fadein = 5000,
--onComplete = callbackListener
--]]

--[[
local rect = display.newRect(100, 100,  100, 100 )
local SE = audio.loadSound( "se.mp3" )
local function onTouch( event ) 
	if( event.phase == "began" ) then
		audio.play( SE )
	end
end
rect:addEventListener( "touch", onTouch )
--]]

--[[
local rect = display.newRect(100, 100,  100, 100 )
local function mR( event )
      rect.x = rect.x + 1
      rect.rotation = rect.rotation + 1
end
Runtime:addEventListener("enterFrame", mR )
--]]

--[[
local rect = display.newRect(100, 100,  100, 100 )
local function moveRect( event ) 
	if( event.phase == "ended" ) then
		transition.to( rect, {time = 1000, y = 400, } )
	end
end
rect:addEventListener( "touch", moveRect )
--]]

--[[
local physics = require ( "physics")
physics.start( )
local land = display.newRect(160, 360,  320, 10 )
physics.addBody( land, "static", { friction = 0.3 } )
local circle = display.newCircle( 50, 50, 25 )
physics.addBody( circle, { bounce = 0.6, radius = 25 } )
--]]

--[[
local physics = require ( "physics" )
physics.start( )
local land = display.newRect(160, 360,  320, 10 )
physics.addBody( land, "static", { friction = 0.3 } )
local circle = display.newCircle( 50, 50, 25 )
physics.addBody( circle, { bounce = 0.6, radius = 25 } )
local function onCollision( )
	land:setFillColor( 1, 0.5, 0.04 )
end
land:addEventListener( "collision", onCollision )
--]]


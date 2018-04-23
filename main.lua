-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By: Amin Zeina
-- Created On: Apr 2018
--
-- Calculates Pi
-----------------------------------------------------------------------------------------

local iterationsEntered
local invalidText  = display.newText( '', display.contentCenterX, 900, native.systemFont, 110 )
invalidText.id = 'Invalid Text'
display.setStatusBar(display.HiddenStatusBar)

local instructions = display.newText( 'Enter # of iterations:', 700, 200, native.systemFont, 110 )
instructions.id = "instructions"

local iterationsTextField = native.newTextField( 1600, 200, 500, 128)
iterationsTextField.id = "Iterations Text Field"

local enterButton = display.newImageRect( './assets/sprites/clickButton.png', 625, 300 )
enterButton.x = display.contentCenterX
enterButton.y = 500
enterButton.id = "Enter Button"

local function enterButtonClicked ( event )
	if ( event.phase == "ended" ) then
		if tonumber( iterationsTextField.text ) ~= nil then
			-- check if number
			iterationsEntered = tonumber( iterationsTextField.text)
			if string.match(iterationsEntered, '.') then 
   				--check if number entered is a decimal
   				invalidText  = display.newText( 'Invalid Entry', display.contentCenterX, 900, native.systemFont, 110 )
			end
		end
 	end
end

enterButton:addEventListener( 'touch', enterButtonClicked )
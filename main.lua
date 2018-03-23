-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonzales
-- Created On March 23 2018
--
-- This program will tell the user what movie that he/she can watch based on their age 
-----------------------------------------------------------------------------------------

-- Making Varabiles
local age 

 -- Changing Background
 display.setDefault("background", 1, 1, 1 )

-- Adding Text
local instructions = display.newText("Type In your age", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 100 )
instructions:setFillColor (0,0,0)

local whatMovie = display.newText("You can watch a", display.contentCenterX, display.contentCenterY + 400, native.systemFont, 75)
whatMovie:setFillColor ( 0, 0, 0 )

-- Adding Text Field
local userInputField = native.newTextField(display.contentCenterX, display.contentCenterY, 1000, 125)

--Adding Button
local button = display.newImageRect("./assets/sprites/Button.png",406,157)
button.x = display.contentCenterX
button.y = display.contentCenterY + 200

--Making Function
local function tellMovie ( event )
	-- This function will tell what movie that the user can watch 

	-- Assgining varibles
	age = tonumber(userInputField.text) 
	
		-- Making if statment
		if age > 17 then
			whatMovie.text = "You can watch a R rated movie"
		elseif age > 13 then
			whatMovie.text = "You can watch a PG 13 movie"
		elseif age < 13 then
			whatMovie.text = "You can watch a G rated movie"
		else 
			whatMovie.text = "Invaild Age"
	end

end

button:addEventListener("touch",tellMovie)

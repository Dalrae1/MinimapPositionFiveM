# MinimapPositionFiveM
A script for FiveM to calculate the minimap position on any aspect ratio

Thanks to Glitchdetector for providing the calculations for the width

Example usage (Draws all corners and center of minimap):
```
CreateThread(function()
	while true do
		local map = getMapPosition()
		local rectSize = 0.01
		DrawRect(map.leftX+rectSize/2, map.topY, rectSize, rectSize, 0,0,0,255) -- Top left
		DrawRect(map.leftX+rectSize/2, map.bottomY, rectSize, rectSize, 0,0,0,255) -- Bottom left
		DrawRect(map.rightX+rectSize/2, map.topY, rectSize, rectSize, 0,0,0,255) -- Top right
		DrawRect(map.rightX+rectSize/2, map.bottomY, rectSize, rectSize, 0,0,0,255) -- Bottom right
		DrawRect(map.X+rectSize/2, map.Y, rectSize, rectSize, 0,0,0,255) -- Middle
		Wait(0)
	end
end)
```

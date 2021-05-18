# MinimapPositionFiveM
A script for FiveM to calculate the minimap position on any aspect ratio

Thanks to Glitchdetector for providing the calculations for the width

Example usage (Draws all corners and center of minimap):
```
CreateThread(function()
	while true do
		local map = getMapPosition()
		local rectSize = 0.01
		DrawRect(map.leftX+rectSize/2, map.topY, rectSize, rectSize, 0,0,0,255)
		DrawRect(map.leftX+rectSize/2, map.bottomY, rectSize, rectSize, 0,0,0,255)
		DrawRect(map.rightX+rectSize/2, map.topY, rectSize, rectSize, 0,0,0,255)
		DrawRect(map.rightX+rectSize/2, map.bottomY, rectSize, rectSize, 0,0,0,255)
		DrawRect(map.X+rectSize/2, map.Y, rectSize, rectSize, 0,0,0,255)
		Wait(0)
	end
end)
```

function getMapPosition()
	local minimap = {}
	local resX, resY = GetActiveScreenResolution()
	local aspectRatio = GetAspectRatio()
	local scaleX = 1/resX
	local scaleY = 1/resY
	local minimapRawX, minimapRawY
	SetScriptGfxAlign(string.byte('L'), string.byte('B'))
	if IsBigmapActive() then
		minimapRawX, minimapRawY = GetScriptGfxPosition(-0.003975, 0.022 + (-0.460416666))
		minimap.width = scaleX*(resX/(2.52*aspectRatio))
		minimap.height = scaleY*(resY/(2.3374))
	else
		minimapRawX, minimapRawY = GetScriptGfxPosition(-0.0045, 0.002 + (-0.188888))
		minimap.width = scaleX*(resX/(4*aspectRatio))
		minimap.height = scaleY*(resY/(5.674))
	end
	ResetScriptGfxAlign()
	minimap.leftX = minimapRawX
	minimap.rightX = minimapRawX+minimap.width
	minimap.topY = minimapRawY
	minimap.bottomY = minimapRawY+minimap.height
	minimap.X = minimapRawX+(minimap.width/2)
	minimap.Y = minimapRawY+(minimap.height/2)
	return minimap
end

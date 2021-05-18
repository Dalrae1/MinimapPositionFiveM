function getMapPosition()
	local minimap = {}
	SetScriptGfxAlign(string.byte('L'), string.byte('B'))
	local minimapRawX, minimapRawY = GetScriptGfxPosition(-0.0045, 0.002 + (-0.188888))
	ResetScriptGfxAlign()
	local resX, resY = GetActiveScreenResolution()
	local aspectRatio = resX/resY--GetAspectRatio()
	local scaleX = 1/resX
	local scaleY = 1/resY
	minimap.width = scaleX*(resX/(4*aspectRatio))
	minimap.height = scaleY*(resY/(5.674))
	minimap.leftX = minimapRawX
	minimap.rightX = minimapRawX+minimap.width
	minimap.topY = minimapRawY
	minimap.bottomY = minimapRawY+minimap.height
	minimap.X = minimapRawX+(minimap.width/2)
	minimap.Y = minimapRawY+(minimap.height/2)
	return minimap
end

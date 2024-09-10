-- VorshimTp.Server = {}
local Commands = {}
Commands.VorshimTp = {}

function Commands.VorshimTp.teleportPlayer(player, args)
    player:setX(args.x)
    player:setY(args.y)
    player:setZ(args.z)
    player:setLx(args.x)
    player:setLy(args.y)
    player:setLz(args.z)
end




local function onClientCommand(module, command, player, args)
	if Commands[module] and Commands[module][command] then
		local argStr = ''
		for k,v in pairs(args) do argStr = argStr..' '..k..'='..tostring(v) end
		-- noise('received '..module..' '..command..' '..tostring(player)..argStr)
		Commands[module][command](player, args)
	end
end

Events.OnClientCommand.Add(onClientCommand)
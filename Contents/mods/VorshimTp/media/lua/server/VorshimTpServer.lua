-- VorshimTp.Server = {}
local Commands = {}
Commands.VorshimTp = {}

function Commands.VorshimTp.teleportPlayer(player, args)
    if player and args.x and args.y and args.z then
        print('inside teleportPlayer: ' .. player:getUsername() .. ' ' .. args.x .. ' ' .. args.y .. ' ' .. args.z)
        player:setX(args.x)
        player:setY(args.y)
        player:setZ(args.z)
        player:setLx(args.x)
        player:setLy(args.y)
        player:setLz(args.z)
    end
end




local function onClientCommand(module, command, player, args)
	if module == 'VorshimTp' and Commands[module][command] then
        print('Received command: ' .. module .. '.' .. command .. ' from ' .. player:getUsername())
		Commands[module][command](player, args)
	end
end

Events.OnClientCommand.Add(onClientCommand)
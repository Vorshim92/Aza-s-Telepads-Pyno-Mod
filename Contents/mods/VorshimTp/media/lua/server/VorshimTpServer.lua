-- VorshimTp.Server = {}
local Commands = {}
Commands.VorshimTp = {}

function Commands.VorshimTp.teleportPlayer(player, args)
    print('inside teleportPlayer: ' .. player:getUsername() .. ' ' .. args.x .. ' ' .. args.y .. ' ' .. args.z)
    if player and args.x and args.y and args.z then
    local players = getOnlinePlayers();
		if players then
			for i=1,players:size() do
				local p = players:get(i-1)
				if p and p == player then
                    print('p and player are equal')
                    p:setX(args.x)
                    p:setY(args.y)
                    p:setZ(args.z)
                    p:setLx(args.x)
                    p:setLy(args.y)
                    p:setLz(args.z)
                    break
                end
            end
        end
    end
end




local function onClientCommand(module, command, player, args)
	if module == 'VorshimTp' and Commands[module][command] then
        print('Received command: ' .. module .. '.' .. command .. ' from ' .. player:getUsername())
		Commands[module][command](player, args)
	end
end

Events.OnClientCommand.Add(onClientCommand)
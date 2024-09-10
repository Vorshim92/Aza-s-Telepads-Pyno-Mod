-- VorshimTp.Server = {}
local Commands = {}
Commands.VorshimTp = {}

function Commands.VorshimTp.teleportPlayer(player, args)
    if player and args.x and args.y and args.z then
    local players = getOnlinePlayers();
		if players then
			for i=1,players:size() do
				local p = players:get(i-1)
				if p and p == player then
                p:setX(args.x)
                p:setY(args.y)
                p:setZ(args.z)
                p:setLx(args.x)
                p:setLy(args.y)
                p:setLz(args.z)
                end
            end
        end
    end
end




local function onClientCommand(module, command, player, args)
	if module == 'VorshimTp' and Commands[module][command] then
		Commands[module][command](player, args)
	end
end

Events.OnClientCommand.Add(onClientCommand)
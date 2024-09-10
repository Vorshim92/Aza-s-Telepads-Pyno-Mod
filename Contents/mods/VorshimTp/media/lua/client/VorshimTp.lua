VorshimTp = {}

VorshimTp_playersToTeleport = {} --each entry: {isoPlayer, x, y, z, timeInMs}

-- Don't Fuck with this except changing the VorshimTp thing with find replace function.
local function addPlayersToTeleport(player,x,y,z,delay)
    table.insert(VorshimTp_playersToTeleport,{player, x, y, z, getTimestampMs()+(delay or 10)})
end

local function teleportPlayer(player, cords)

      player:setX(tonumber(cords[1]));
      player:setY(tonumber(cords[2]));
      player:setZ(tonumber(cords[3]));
      player:setLx(tonumber(cords[1]));
      player:setLy(tonumber(cords[2]));
      player:setLz(tonumber(cords[3]));
end

-- Events.OnTick.Add(teleportPlayer)


function VorshimTp.effect1(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.VorshimTp_1 + 0.5, SandboxVars.VorshimTp_1 + 0.5, SandboxVars.VorshimTp_1 + 0, 100) -- x, y, z, plus their offsets!
end

function VorshimTp.effect2(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.VorshimTp_2 + 0.5, SandboxVars.VorshimTp_2 + 0.5, SandboxVars.VorshimTp_2 + 0, 100) -- x, y, z, plus their offsets!
end


function VorshimTp.trigger(player)
    if not player then return end
    local cord = {player:getX(), player:getY(), player:getZ()}
	if not cord then return end
    
		if cord then
      -- 
			print("VorshimTp: " .. cord[1] .. " " .. cord[2] .. " " .. cord[3])
			
        end
end

-- Events.OnPlayerMove.Remove(VorshimTp.trigger) 
Events.OnPlayerMove.Add(VorshimTp.trigger)
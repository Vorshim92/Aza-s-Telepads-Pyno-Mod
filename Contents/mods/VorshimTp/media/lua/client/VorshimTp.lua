VorshimTp = {}

VorshimTp_playersToTeleport = {} --each entry: {isoPlayer, x, y, z, timeInMs}

-- Don't Fuck with this except changing the VorshimTp thing with find replace function.
local function addPlayersToTeleport(player,x,y,z,delay)
    table.insert(VorshimTp_playersToTeleport,{player, x, y, z, getTimestampMs()+(delay or 10)})
end

local function teleportPlayer(player, cords)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?

      player:setX(cords[1]+1);
      player:setY(cords[2]+1);
      player:setZ(cords[3]);
      player:setLx(cords[1]+1);
      player:setLy(cords[2]+1);
      player:setLz(cords[3]);
end



function VorshimTp.trigger(player)
    if not player then return end

    -- Ottieni le coordinate del giocatore
    local cords = {
        math.floor(player:getX()), 
        math.floor(player:getY()), 
        math.floor(player:getZ())
    }
    if cords == nil then return end
    -- print("VorshimTp: " .. cords[1] .. " " .. cords[2] .. " " .. cords[3])

    -- Ottieni le coordinate target dalla variabile SandboxVars
    local targetCoordsStr = SandboxVars.VorshimTp_1
    local targetCoords = luautils.split(targetCoordsStr, ",")

    -- Assicurati che targetCoords abbia 3 valori e convertili in numeri
    if #targetCoords == 3 then
        local targetX = tonumber(targetCoords[1])
        local targetY = tonumber(targetCoords[2])
        local targetZ = tonumber(targetCoords[3])

        -- Comparazione delle coordinate una per una
        if cords[1] == targetX and cords[2] == targetY and cords[3] == targetZ then
            print("Coordinates match, teleporting player!")
            teleportPlayer(player, cords)
        else
            print("Coordinates do not match.")
        end
    else
        print("Invalid coordinate format in SandboxVars.VorshimTp_1")
    end
end

-- Events.OnPlayerMove.Remove(VorshimTp.trigger) 
Events.OnPlayerMove.Add(VorshimTp.trigger)

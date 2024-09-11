

VorshimTp = {}

local function teleportPlayer(player, cords)
    player:setX(cords[1])
    player:setY(cords[2])
    player:setZ(cords[3])
    player:setLx(cords[1])
    player:setLy(cords[2])
    player:setLz(cords[3])
end

 function VorshimTp.Panel(player, args)
    local modal = ISModalDialog:new(getCore():getScreenWidth() / 2 - 175,getCore():getScreenHeight() / 2 - 75, 350, 150, "Vuoi essere teletrasportato?", true, nil, VorshimTp.onAnswer);
    modal:initialise()
    modal:addToUIManager()
    modal.player = player
    modal.args = args
    modal.moveWithMouse = true;

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

    -- Cicla attraverso i diversi valori di A1, A2, ecc.
    for i = 1, 2 do  -- Cambia 2 in base al numero di coppie A/B che hai (es. se hai A1, A2,... A10, usa 10)
        local targetA = SandboxVars.VorshimTp["A" .. i]
        local targetB = SandboxVars.VorshimTp["B" .. i]

        -- Se le variabili A e B sono valide
        if targetA and targetB then
            local targetCoordsA = luautils.split(targetA, ",")
            local targetCoordsB = luautils.split(targetB, ",")

            -- Assicurati che targetCoordsA e targetCoordsB abbiano 3 valori e convertili in numeri
            if #targetCoordsA == 3 and #targetCoordsB == 3 then
                local targetAX = tonumber(targetCoordsA[1])
                local targetAY = tonumber(targetCoordsA[2])
                local targetAZ = tonumber(targetCoordsA[3])

                -- Comparazione delle coordinate del giocatore con quelle di A
                if cords[1] == targetAX and cords[2] == targetAY and cords[3] == targetAZ then
                    Events.OnPlayerMove.Remove(VorshimTp.trigger)

                    print("Coordinates match for A" .. i .. ", teleporting player to B" .. i)
                    
                    -- Teletrasporta il giocatore alle coordinate di B
                    local targetBX = tonumber(targetCoordsB[1])
                    local targetBY = tonumber(targetCoordsB[2])
                    local targetBZ = tonumber(targetCoordsB[3])
                    local args = {x = targetBX, y = targetBY, z = targetBZ}
                    -- sendClientCommand(player, 'VorshimTp', 'teleportPlayer', args)
                    VorshimTp.Panel(player, args)
                    -- teleportPlayer(player, {targetBX, targetBY, targetBZ})
                    -- Events.OnPlayerMove.Add(VorshimTp.trigger)
                    return -- Uscita dopo il teletrasporto
                end
            else
                print("Invalid coordinate format in VorshimTp.A" .. i .. " or VorshimTp.B" .. i)
            end
        end
    end
end

function VorshimTp.onAnswer(button)
    if button.internal == "YES" then

    sendClientCommand(button.parent.player, 'VorshimTp', 'teleportPlayer', button.parent.args)
    end


    -- Ripristina l'evento

    Events.OnPlayerMove.Add(VorshimTp.trigger)

end

-- Aggiungi l'evento
Events.OnPlayerMove.Add(VorshimTp.trigger)

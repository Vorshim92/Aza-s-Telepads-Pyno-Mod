AzaTelepads = {}

AzaTelepads_playersToTeleport = {} --each entry: {isoPlayer, x, y, z, timeInMs}

-- Don't Fuck with this except changing the AzaTelepads thing with find replace function.
local function addPlayersToTeleport(player,x,y,z,delay)
    table.insert(AzaTelepads_playersToTeleport,{player, x, y, z, getTimestampMs()+(delay or 10)})
end

local function teleportPlayers()
  for i = #AzaTelepads_playersToTeleport, 1, - 1 do
    local entry = AzaTelepads_playersToTeleport[i];
    if getTimestampMs() >= entry[5] then
      entry[1]:setX(tonumber(entry[2]));
      entry[1]:setY(tonumber(entry[3]));
      entry[1]:setZ(tonumber(entry[4]));
      entry[1]:setLx(tonumber(entry[2]));
      entry[1]:setLy(tonumber(entry[3]));
      entry[1]:setLz(tonumber(entry[4]));
      table.remove(AzaTelepads_playersToTeleport, i);
    end
  end
end

Events.OnTick.Add(teleportPlayers)


function AzaTelepads.effect1(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Pink_A_x + 0.5, SandboxVars.AzaTelepads.Pink_A_y + 0.5, SandboxVars.AzaTelepads.Pink_A_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect2(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Red_A_x + 0.5, SandboxVars.AzaTelepads.Red_A_y + 0.5, SandboxVars.AzaTelepads.Red_A_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect3(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Orange_A_x + 0.5, SandboxVars.AzaTelepads.Orange_A_y + 0.5, SandboxVars.AzaTelepads.Orange_A_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect4(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Yellow_A_x + 0.5, SandboxVars.AzaTelepads.Yellow_A_y + 0.5, SandboxVars.AzaTelepads.Yellow_A_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect5(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Green_A_x + 0.5, SandboxVars.AzaTelepads.Green_A_y + 0.5, SandboxVars.AzaTelepads.Green_A_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect6(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Teal_A_x + 0.5, SandboxVars.AzaTelepads.Teal_A_y + 0.5, SandboxVars.AzaTelepads.Teal_A_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect7(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Cyan_A_x + 0.5, SandboxVars.AzaTelepads.Cyan_A_y + 0.5, SandboxVars.AzaTelepads.Cyan_A_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect8(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Blue_A_x + 0.5, SandboxVars.AzaTelepads.Blue_A_y + 0.5, SandboxVars.AzaTelepads.Blue_A_z + 0, 100) -- x, y, z, plus their offsets!
end


function AzaTelepads.effect9(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Pink_B_x + 0.5, SandboxVars.AzaTelepads.Pink_B_y + 0.5, SandboxVars.AzaTelepads.Pink_B_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect10(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Red_B_x + 0.5, SandboxVars.AzaTelepads.Red_B_y + 0.5, SandboxVars.AzaTelepads.Red_B_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect11(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Orange_B_x + 0.5, SandboxVars.AzaTelepads.Orange_B_y + 0.5, SandboxVars.AzaTelepads.Orange_B_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect12(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Yellow_B_x + 0.5, SandboxVars.AzaTelepads.Yellow_B_y + 0.5, SandboxVars.AzaTelepads.Yellow_B_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect13(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Green_B_x + 0.5, SandboxVars.AzaTelepads.Green_B_y + 0.5, SandboxVars.AzaTelepads.Green_B_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect14(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Teal_B_x + 0.5, SandboxVars.AzaTelepads.Teal_B_y + 0.5, SandboxVars.AzaTelepads.Teal_B_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect15(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Cyan_B_x + 0.5, SandboxVars.AzaTelepads.Cyan_B_y + 0.5, SandboxVars.AzaTelepads.Cyan_B_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect16(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Blue_B_x + 0.5, SandboxVars.AzaTelepads.Blue_B_y + 0.5, SandboxVars.AzaTelepads.Blue_B_z + 0, 100) -- x, y, z, plus their offsets!
end


function AzaTelepads.effect17(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Pink_C_x + 0.5, SandboxVars.AzaTelepads.Pink_C_y + 0.5, SandboxVars.AzaTelepads.Pink_C_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect18(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Red_C_x + 0.5, SandboxVars.AzaTelepads.Red_C_y + 0.5, SandboxVars.AzaTelepads.Red_C_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect19(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Orange_C_x + 0.5, SandboxVars.AzaTelepads.Orange_C_y + 0.5, SandboxVars.AzaTelepads.Orange_C_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect20(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Yellow_C_x + 0.5, SandboxVars.AzaTelepads.Yellow_C_y + 0.5, SandboxVars.AzaTelepads.Yellow_C_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect21(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Green_C_x + 0.5, SandboxVars.AzaTelepads.Green_C_y + 0.5, SandboxVars.AzaTelepads.Green_C_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect22(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Teal_C_x + 0.5, SandboxVars.AzaTelepads.Teal_C_y + 0.5, SandboxVars.AzaTelepads.Teal_C_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect23(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Cyan_C_x + 0.5, SandboxVars.AzaTelepads.Cyan_C_y + 0.5, SandboxVars.AzaTelepads.Cyan_C_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect24(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Blue_C_x + 0.5, SandboxVars.AzaTelepads.Blue_C_y + 0.5, SandboxVars.AzaTelepads.Blue_C_z + 0, 100) -- x, y, z, plus their offsets!
end


function AzaTelepads.effect25(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Pink_D_x + 0.5, SandboxVars.AzaTelepads.Pink_D_y + 0.5, SandboxVars.AzaTelepads.Pink_D_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect26(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Red_D_x + 0.5, SandboxVars.AzaTelepads.Red_D_y + 0.5, SandboxVars.AzaTelepads.Red_D_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect27(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Orange_D_x + 0.5, SandboxVars.AzaTelepads.Orange_D_y + 0.5, SandboxVars.AzaTelepads.Orange_D_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect28(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Yellow_D_x + 0.5, SandboxVars.AzaTelepads.Yellow_D_y + 0.5, SandboxVars.AzaTelepads.Yellow_D_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect29(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Green_D_x + 0.5, SandboxVars.AzaTelepads.Green_D_y + 0.5, SandboxVars.AzaTelepads.Green_D_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect30(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Teal_D_x + 0.5, SandboxVars.AzaTelepads.Teal_D_y + 0.5, SandboxVars.AzaTelepads.Teal_D_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect31(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Cyan_D_x + 0.5, SandboxVars.AzaTelepads.Cyan_D_y + 0.5, SandboxVars.AzaTelepads.Cyan_D_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect32(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Blue_D_x + 0.5, SandboxVars.AzaTelepads.Blue_D_y + 0.5, SandboxVars.AzaTelepads.Blue_D_z + 0, 100) -- x, y, z, plus their offsets!
end


function AzaTelepads.effect33(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Pink_E_x + 0.5, SandboxVars.AzaTelepads.Pink_E_y + 0.5, SandboxVars.AzaTelepads.Pink_E_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect34(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Red_E_x + 0.5, SandboxVars.AzaTelepads.Red_E_y + 0.5, SandboxVars.AzaTelepads.Red_E_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect35(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Orange_E_x + 0.5, SandboxVars.AzaTelepads.Orange_E_y + 0.5, SandboxVars.AzaTelepads.Orange_E_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect36(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Yellow_E_x + 0.5, SandboxVars.AzaTelepads.Yellow_E_y + 0.5, SandboxVars.AzaTelepads.Yellow_E_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect37(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Green_E_x + 0.5, SandboxVars.AzaTelepads.Green_E_y + 0.5, SandboxVars.AzaTelepads.Green_E_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect38(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Teal_E_x + 0.5, SandboxVars.AzaTelepads.Teal_E_y + 0.5, SandboxVars.AzaTelepads.Teal_E_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect39(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Cyan_E_x + 0.5, SandboxVars.AzaTelepads.Cyan_E_y + 0.5, SandboxVars.AzaTelepads.Cyan_E_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect40(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Blue_E_x + 0.5, SandboxVars.AzaTelepads.Blue_E_y + 0.5, SandboxVars.AzaTelepads.Blue_E_z + 0, 100) -- x, y, z, plus their offsets!
end


function AzaTelepads.effect41(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Pink_D_x + 0.5, SandboxVars.AzaTelepads.Pink_D_y + 0.5, SandboxVars.AzaTelepads.Pink_D_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect42(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Red_D_x + 0.5, SandboxVars.AzaTelepads.Red_D_y + 0.5, SandboxVars.AzaTelepads.Red_D_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect43(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Orange_D_x + 0.5, SandboxVars.AzaTelepads.Orange_D_y + 0.5, SandboxVars.AzaTelepads.Orange_D_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect44(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Yellow_D_x + 0.5, SandboxVars.AzaTelepads.Yellow_D_y + 0.5, SandboxVars.AzaTelepads.Yellow_D_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect45(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Green_D_x + 0.5, SandboxVars.AzaTelepads.Green_D_y + 0.5, SandboxVars.AzaTelepads.Green_D_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect46(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Teal_D_x + 0.5, SandboxVars.AzaTelepads.Teal_D_y + 0.5, SandboxVars.AzaTelepads.Teal_D_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect47(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Cyan_D_x + 0.5, SandboxVars.AzaTelepads.Cyan_D_y + 0.5, SandboxVars.AzaTelepads.Cyan_D_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect48(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Blue_D_x + 0.5, SandboxVars.AzaTelepads.Blue_D_y + 0.5, SandboxVars.AzaTelepads.Blue_D_z + 0, 100) -- x, y, z, plus their offsets!
end


function AzaTelepads.effect49(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Pink_G_x + 0.5, SandboxVars.AzaTelepads.Pink_G_y + 0.5, SandboxVars.AzaTelepads.Pink_G_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect50(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Red_G_x + 0.5, SandboxVars.AzaTelepads.Red_G_y + 0.5, SandboxVars.AzaTelepads.Red_G_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect51(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Orange_G_x + 0.5, SandboxVars.AzaTelepads.Orange_G_y + 0.5, SandboxVars.AzaTelepads.Orange_G_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect52(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Yellow_G_x + 0.5, SandboxVars.AzaTelepads.Yellow_G_y + 0.5, SandboxVars.AzaTelepads.Yellow_G_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect53(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Green_G_x + 0.5, SandboxVars.AzaTelepads.Green_G_y + 0.5, SandboxVars.AzaTelepads.Green_G_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect54(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Teal_G_x + 0.5, SandboxVars.AzaTelepads.Teal_G_y + 0.5, SandboxVars.AzaTelepads.Teal_G_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect55(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Cyan_G_x + 0.5, SandboxVars.AzaTelepads.Cyan_G_y + 0.5, SandboxVars.AzaTelepads.Cyan_G_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect56(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Blue_G_x + 0.5, SandboxVars.AzaTelepads.Blue_G_y + 0.5, SandboxVars.AzaTelepads.Blue_G_z + 0, 100) -- x, y, z, plus their offsets!
end


function AzaTelepads.effect57(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Pink_H_x + 0.5, SandboxVars.AzaTelepads.Pink_H_y + 0.5, SandboxVars.AzaTelepads.Pink_H_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect58(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Red_H_x + 0.5, SandboxVars.AzaTelepads.Red_H_y + 0.5, SandboxVars.AzaTelepads.Red_H_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect59(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Orange_H_x + 0.5, SandboxVars.AzaTelepads.Orange_H_y + 0.5, SandboxVars.AzaTelepads.Orange_H_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect60(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Yellow_H_x + 0.5, SandboxVars.AzaTelepads.Yellow_H_y + 0.5, SandboxVars.AzaTelepads.Yellow_H_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect61(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Green_H_x + 0.5, SandboxVars.AzaTelepads.Green_H_y + 0.5, SandboxVars.AzaTelepads.Green_H_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect62(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Teal_H_x + 0.5, SandboxVars.AzaTelepads.Teal_H_y + 0.5, SandboxVars.AzaTelepads.Teal_H_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect63(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Cyan_H_x + 0.5, SandboxVars.AzaTelepads.Cyan_H_y + 0.5, SandboxVars.AzaTelepads.Cyan_H_z + 0, 100) -- x, y, z, plus their offsets!
end

function AzaTelepads.effect64(player)
	-- player:getEmitter():playSound("soundeffect"); -- play a sound effect?
	addPlayersToTeleport(player, SandboxVars.AzaTelepads.Blue_H_x + 0.5, SandboxVars.AzaTelepads.Blue_H_y + 0.5, SandboxVars.AzaTelepads.Blue_H_z + 0, 100) -- x, y, z, plus their offsets!
end
function AzaTelepads.trigger(player)
    if not player then return end
    local sq = player:getCurrentSquare()
	if not sq then return end
    for i=0, sq:getObjects():size()-1 do
		local obj = sq:getObjects():get(i)
		local spr = obj:getSprite():getName()
		
		if spr then
      -- 
			if spr == "aza_telepads_0" then -- Pink A
				AzaTelepads.effect1(player)
			end
			if spr == "aza_telepads_1" then -- Red A
				AzaTelepads.effect2(player)
			end
			if spr == "aza_telepads_2" then -- Orange A
				AzaTelepads.effect3(player)
			end
			if spr == "aza_telepads_3" then -- Yellow A
				AzaTelepads.effect4(player)
			end
			if spr == "aza_telepads_4" then -- Green A
				AzaTelepads.effect5(player)
			end
			if spr == "aza_telepads_5" then -- Teal A
				AzaTelepads.effect6(player)
			end
			if spr == "aza_telepads_6" then -- Cyan A
				AzaTelepads.effect7(player)
			end
			if spr == "aza_telepads_7" then -- Blue A
				AzaTelepads.effect8(player)
			end
			if spr == "aza_telepads_8" then -- Pink B
				AzaTelepads.effect9(player)
			end
			if spr == "aza_telepads_9" then -- Red B
				AzaTelepads.effect10(player)
			end
			if spr == "aza_telepads_10" then -- Orange B
				AzaTelepads.effect11(player)
			end
			if spr == "aza_telepads_11" then -- Yellow B
				AzaTelepads.effect12(player)
			end
			if spr == "aza_telepads_12" then -- Green B
				AzaTelepads.effect13(player)
			end
			if spr == "aza_telepads_13" then -- Teal B
				AzaTelepads.effect14(player)
			end
			if spr == "aza_telepads_14" then -- Cyan B
				AzaTelepads.effect15(player)
			end
			if spr == "aza_telepads_15" then -- Blue B
				AzaTelepads.effect16(player)
			end
			if spr == "aza_telepads_16" then -- Pink C
				AzaTelepads.effect17(player)
			end
			if spr == "aza_telepads_17" then -- Red C
				AzaTelepads.effect18(player)
			end
			if spr == "aza_telepads_18" then -- Orange C
				AzaTelepads.effect19(player)
			end
			if spr == "aza_telepads_19" then -- Yellow C
				AzaTelepads.effect20(player)
			end
			if spr == "aza_telepads_20" then -- Green C
				AzaTelepads.effect21(player)
			end
			if spr == "aza_telepads_21" then -- Teal C
				AzaTelepads.effect22(player)
			end
			if spr == "aza_telepads_22" then -- Cyan C
				AzaTelepads.effect23(player)
			end
			if spr == "aza_telepads_23" then -- Blue C
				AzaTelepads.effect24(player)
			end
			if spr == "aza_telepads_24" then -- Pink D
				AzaTelepads.effect25(player)
			end
			if spr == "aza_telepads_25" then -- Red D
				AzaTelepads.effect26(player)
			end
			if spr == "aza_telepads_26" then -- Orange D
				AzaTelepads.effect27(player)
			end
			if spr == "aza_telepads_27" then -- Yellow D
				AzaTelepads.effect28(player)
			end
			if spr == "aza_telepads_28" then -- Green D
				AzaTelepads.effect29(player)
			end
			if spr == "aza_telepads_29" then -- Teal D
				AzaTelepads.effect30(player)
			end
			if spr == "aza_telepads_30" then -- Cyan D
				AzaTelepads.effect31(player)
			end
			if spr == "aza_telepads_31" then -- Blue D
				AzaTelepads.effect32(player)
			end
			if spr == "aza_telepads_32" then -- Pink E
				AzaTelepads.effect33(player)
			end
			if spr == "aza_telepads_33" then -- Red E
				AzaTelepads.effect34(player)
			end
			if spr == "aza_telepads_34" then -- Orange E
				AzaTelepads.effect135(player)
			end
			if spr == "aza_telepads_35" then -- Yellow E
				AzaTelepads.effect36(player)
			end
			if spr == "aza_telepads_36" then -- Green E
				AzaTelepads.effect37(player)
			end
			if spr == "aza_telepads_37" then -- Teal E
				AzaTelepads.effect38(player)
			end
			if spr == "aza_telepads_38" then -- Cyan E
				AzaTelepads.effect39(player)
			end
			if spr == "aza_telepads_39" then -- Blue E
				AzaTelepads.effect40(player)
			end
			if spr == "aza_telepads_40" then -- Pink F
				AzaTelepads.effect41(player)
			end
			if spr == "aza_telepads_41" then -- Red F
				AzaTelepads.effect42(player)
			end
			if spr == "aza_telepads_42" then -- Orange F
				AzaTelepads.effect43(player)
			end
			if spr == "aza_telepads_43" then -- Yellow F
				AzaTelepads.effect44(player)
			end
			if spr == "aza_telepads_44" then -- Green F
				AzaTelepads.effect45(player)
			end
			if spr == "aza_telepads_45" then -- Teal F
				AzaTelepads.effect46(player)
			end
			if spr == "aza_telepads_46" then -- Cyan F
				AzaTelepads.effect47(player)
			end
			if spr == "aza_telepads_47" then -- Blue F
				AzaTelepads.effect48(player)
			end
			if spr == "aza_telepads_48" then -- Pink G
				AzaTelepads.effect49(player)
			end
			if spr == "aza_telepads_49" then -- Red G
				AzaTelepads.effect50(player)
			end
			if spr == "aza_telepads_50" then -- Orange G
				AzaTelepads.effect51(player)
			end
			if spr == "aza_telepads_51" then -- Yellow G
				AzaTelepads.effect52(player)
			end
			if spr == "aza_telepads_52" then -- Green G
				AzaTelepads.effect53(player)
			end
			if spr == "aza_telepads_53" then -- Teal G
				AzaTelepads.effect54(player)
			end
			if spr == "aza_telepads_54" then -- Cyan G
				AzaTelepads.effect55(player)
			end
			if spr == "aza_telepads_55" then -- Blue G
				AzaTelepads.effect56(player)
			end
			if spr == "aza_telepads_56" then -- Pink H
				AzaTelepads.effect57(player)
			end
			if spr == "aza_telepads_57" then -- Red H
				AzaTelepads.effect58(player)
			end
			if spr == "aza_telepads_58" then -- Orange H
				AzaTelepads.effect59(player)
			end
			if spr == "aza_telepads_59" then -- Yellow H
				AzaTelepads.effect60(player)
			end
			if spr == "aza_telepads_60" then -- Green H
				AzaTelepads.effect61(player)
			end
			if spr == "aza_telepads_61" then -- Teal H
				AzaTelepads.effect62(player)
			end
			if spr == "aza_telepads_62" then -- Cyan H
				AzaTelepads.effect63(player)
			end
			if spr == "aza_telepads_63" then -- Blue H
				AzaTelepads.effect64(player)
			end
        end
    end
end

Events.OnPlayerUpdate.Remove(AzaTelepads.trigger) 
Events.OnPlayerUpdate.Add(AzaTelepads.trigger) 
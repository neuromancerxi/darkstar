---------------------------------------------------------------------------------------------------
-- func: tele <location> 
-- desc: Teleports the Player to Certain Telepoints
---------------------------------------------------------------------------------------------------

require("scripts/globals/status");
require("scripts/globals/keyitems");
require("scripts/globals/teleports");
require("scripts/globals/msg");

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function error(player, msg)
    player:PrintToPlayer(msg);
end;

-----------------------------------------

function onTrigger(player,zone)
    local HPP=player:getHPP();
    if (HPP~= 100) then
        error(player, string.format( "To prevent abuse, player must be at full HP to teleport.", player ) );
    else
        if (zone == "dem") then
            if (player:hasKeyItem(DEM_GATE_CRYSTAL) == true) then
                player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_DEM,0,1);
            else
            error(player, string.format( "Teleporting first requires access to the gate crystal.", player ) );
            end;
        elseif (zone == "holla") then
            if (player:hasKeyItem(HOLLA_GATE_CRYSTAL) == true) then
                player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_HOLLA,0,1);
            else
            error(player, string.format( "Teleporting first requires access to the gate crystal.", player ) );
            end;
        elseif (zone == "mea") then
            if (player:hasKeyItem(MEA_GATE_CRYSTAL) == true) then
                player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_MEA,0,1);
            else
            error(player, string.format( "Teleporting first requires access to the gate crystal.", player ) );
            end;
        elseif (zone == "altep") then
            if (player:hasKeyItem(ALTEPA_GATE_CRYSTAL) == true) then
                player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_ALTEP,0,1);
            else
            error(player, string.format( "Teleporting first requires access to the gate crystal.", player ) );
            end;
        elseif (zone == "yhoat") then
            if (player:hasKeyItem(YHOATOR_GATE_CRYSTAL) == true) then
                player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_YHOAT,0,1);
            else
            error(player, string.format( "Teleporting first requires access to the gate crystal.", player ) );
            end;
        elseif (zone == "vahzl") then
            if (player:hasKeyItem(VAHZL_GATE_CRYSTAL) == true) then
                player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_VAHZL,0,1);
            else
            error(player, string.format( "Teleporting first requires access to the gate crystal.", player ) );
            end;
        elseif (zone == "jugner") then
            if (player:hasKeyItem(JUGNER_GATE_CRYSTAL) == true) then
                player:addStatusEffectEx(EFFECT_TELEPORT,0,RECALL_JUGNER,0,1);
            else
            error(player, string.format( "Teleporting first requires access to the gate crystal.", player ) );
            end;
        elseif (zone == "pashh") then
            if (player:hasKeyItem(PASHHOW_GATE_CRYSTAL) == true) then
                player:addStatusEffectEx(EFFECT_TELEPORT,0,RECALL_PASHH,0,1);
            else
            error(player, string.format( "Teleporting first requires access to the gate crystal.", player ) );
            end;
        elseif (zone == "meriph") then
            if (player:hasKeyItem(MERIPHATAUD_GATE_CRYSTAL) == true) then
                player:addStatusEffectEx(EFFECT_TELEPORT,0,RECALL_MERIPH,0,1);
            else
            error(player, string.format( "Teleporting first requires access to the gate crystal.", player ) );
            end;        
        elseif (zone == "jeuno") then
            if (player:hasKeyItem(AIRSHIP_PASS) == true) then
                player:addStatusEffectEx(EFFECT_TELEPORT,0,TELEPORT_MAAT,0,1);
            else
            error(player, string.format( "Teleporting to Jeuno requires an Airship Pass.", player ) );
            end;        
        elseif (zone == "wajoam") then
            if (player:hasKeyItem(BOARDING_PERMIT) == true) then
                player:setPos(-199, -10, 80, 94, 51);
            else
            error(player, string.format( "Teleporting to Wajoam requires a Boarding Permit.", player ) );
            end;
        else 
            error(player, string.format( "Please include a (case-sensitive) destination:\ndem, holla, mea, yhoat, altep, vahzl\njugner, pashh, meriph, jeuno, wajoam\nExample: !tele dem", player ) );
        end
    end
end

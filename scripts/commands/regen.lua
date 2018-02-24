---------------------------------------------------------------------------------------------------
-- func: regen
-- desc: Grants Auto-Regen, Auto-Regain, Auto-Refresh
---------------------------------------------------------------------------------------------------

require("scripts/globals/settings");

cmdprops =
{
    permission = 0,
    parameters = ""
};

function error(player, msg)
    player:PrintToPlayer(msg);
end;

function onTrigger(player)
    local LvL=player:getMainLvl();
    if LvL >= 76 then
        error(player, string.format( "Effect limited to level 75 and below.", player ) );
        else
        player:addStatusEffect(EFFECT_REGAIN,5,0,0);
        player:addStatusEffect(EFFECT_REFRESH,4,0,0);
        player:addStatusEffect(EFFECT_REGEN,7,0,0);
    end;
end;

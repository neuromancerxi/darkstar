---------------------------------------------------------------------------------------------------
-- func: exp
-- desc: Grants a supercharged Dedication effect
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
        if (player:hasStatusEffect(EFFECT_DEDICATION) == true) then
        else
            player:addStatusEffect(EFFECT_DEDICATION,100,0,43200,0,20000);
        end;
    end;
end;


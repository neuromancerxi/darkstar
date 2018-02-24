---------------------------------------------------------------------------------------------------
-- func: warp
-- desc: Sends the target to their homepoint.
---------------------------------------------------------------------------------------------------

require("scripts/globals/status");

cmdprops =
{
    permission = 0,
    parameters = ""
};

function error(player, msg)
    player:PrintToPlayer(msg);
end;

-----------------------------------------

function onTrigger(player)
    local HPP=player:getHPP();
    if (HPP~= 100) then
        error(player, string.format( "To prevent abuse, player must be at full HP to warp.", player ) );
    else
        player:warp();
    end
end
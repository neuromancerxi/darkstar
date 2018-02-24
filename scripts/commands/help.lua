---------------------------------------------------------------------------------------------------
-- func: help
-- desc: Basic Help Menu.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = ""
};

function error(player, msg)
    player:PrintToPlayer(msg);
end;

function onTrigger(player)
    error(player, string.format( "Available Commands:\n!help - !warp - !nexus - !tele <destination>\n!ah - !regen - !shop - !costume - !exp", player ) );
end

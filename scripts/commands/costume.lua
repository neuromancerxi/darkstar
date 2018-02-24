---------------------------------------------------------------------------------------------------
-- func: costume
-- desc: Sets the players current costume.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function error(player, msg)
    player:PrintToPlayer(msg);
end;

function onTrigger(player, costumeId)
    -- validate costumeId
    if (costumeId == nil or costumeId < 0) then
        error(player, "Invalid costumeID.\nUsage: !costume <costumeID>");
        return;
    end
    
    -- put on costume
    player:costume( costumeId );
end

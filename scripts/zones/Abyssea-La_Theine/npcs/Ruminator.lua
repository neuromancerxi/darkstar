-----------------------------------
-- Area: Abyssea-LaTheine
--  MOB: Ruminator
-----------------------------------
package.loaded["scripts/zones/Abyssea-La_Theine/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Abyssea-La_Theine/TextIDs");
require("scripts/zones/Abyssea-La_Theine/MobIDs");
require("scripts/globals/keyitems");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob,target)
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if (math.random(100) < 40) then
        if (not player:hasKeyItem(ATMA_OF_ETERNITY)) then
            player:addKeyItem(ATMA_OF_ETERNITY);
            player:messageSpecial(ATMA_OF_ETERNITY);
        end
    end
    player:addTitle(RUMINATOR_CONFOUNDER);
end;

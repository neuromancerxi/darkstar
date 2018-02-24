-----------------------------------
-- Area: Abyssea-LaTheine
--  MOB: Karkinos
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
        if (not player:hasKeyItem(ATMA_OF_THE_TWIN_CLAW)) then
            player:addKeyItem(ATMA_OF_THE_TWIN_CLAW);
            player:messageSpecial(ATMA_OF_THE_TWIN_CLAW);
        end
    player:addTitle(KARKINOS_CLAWCRUSHER);
    end
end;

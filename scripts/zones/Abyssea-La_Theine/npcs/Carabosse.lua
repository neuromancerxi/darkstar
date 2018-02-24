-----------------------------------
-- Area: Abyssea-LaTheine
--  MOB: Carabosse
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
        if (not player:hasKeyItem(GLITTERING_PIXIE_CHOKER)) then
            player:addKeyItem(GLITTERING_PIXIE_CHOKER);
            player:messageSpecial(GLITTERING_PIXIE_CHOKER);
        end
    end
    if (math.random(100) < 40) then
        if (not player:hasKeyItem(ATMA_OF_ALLURE)) then
            player:addKeyItem(ATMA_OF_ALLURE);
            player:messageSpecial(ATMA_OF_ALLURE);
        end
    end
    player:addTitle(CARABOSSE_QUASHER);
end;

-----------------------------------
-- Area: Abyssea-LaTheine
--  MOB: Megantereon
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
        if (not player:hasKeyItem(BLOODIED_SABER_TOOTH)) then
            player:addKeyItem(BLOODIED_SABER_TOOTH);
            player:messageSpecial(BLOODIED_SABER_TOOTH);
        end
    end
    if (math.random(100) < 40) then
        if (not player:hasKeyItem(ATMA_OF_THE_SAVAGE_TIGER)) then
            player:addKeyItem(ATMA_OF_THE_SAVAGE_TIGER);
            player:messageSpecial(ATMA_OF_THE_SAVAGE_TIGER);
        end
    end
end;

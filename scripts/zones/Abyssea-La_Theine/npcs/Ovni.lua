-----------------------------------
-- Area: Abyssea-LaTheine
--  MOB: Ovni
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
        if (not player:hasKeyItem(SCARLET_ABYSSITE_OF_SOJOURN)) then
            player:addKeyItem(SCARLET_ABYSSITE_OF_SOJOURN);
            player:messageSpecial(SCARLET_ABYSSITE_OF_SOJOURN);
        end
    end
    if (math.random(100) < 40) then
        if (not player:hasKeyItem(ATMA_OF_THE_HEAVENS)) then
            player:addKeyItem(ATMA_OF_THE_HEAVENS);
            player:messageSpecial(ATMA_OF_THE_HEAVENS);
        end
    end
    player:addTitle(OVNI_OBLITERATOR);
end;

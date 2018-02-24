-----------------------------------
-- Area: Abyssea-LaTheine
--  MOB: Mangy-tailed Marvin
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
        if (not player:hasKeyItem(SCARLET_ABYSSITE_OF_LENITY)) then
            player:addKeyItem(SCARLET_ABYSSITE_OF_LENITY);
            player:messageSpecial(SCARLET_ABYSSITE_OF_LENITY);
        end
    end
end;

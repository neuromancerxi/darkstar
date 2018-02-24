-----------------------------------
-- Area: Abyssea-LaTheine
--  MOB: Baba Yaga
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
        if (not player:hasKeyItem(SHIMMERING_PIXIE_PINION)) then
            player:addKeyItem(SHIMMERING_PIXIE_PINION);
            player:messageSpecial(KEYITEM_OBTAINED,SHIMMERING_PIXIE_PINION);
        end
    end
end;

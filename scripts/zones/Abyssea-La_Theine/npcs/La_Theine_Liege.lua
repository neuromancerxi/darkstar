-----------------------------------
-- Area: Abyssea-LaTheine
--  MOB: La Theine Liege
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
        if (not player:hasKeyItem(PELLUCID_FLY_EYE)) then
            player:addKeyItem(PELLUCID_FLY_EYE);
            player:messageSpecial(KEYITEM_OBTAINED,PELLUCID_FLY_EYE);
        end
    end
end;

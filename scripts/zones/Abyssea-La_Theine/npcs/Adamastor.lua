-----------------------------------
-- Area: Abyssea-LaTheine
--  MOB: Adamastor
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
        if (not player:hasKeyItem(DENTED_GIGAS_SHIELD)) then
            player:addKeyItem(DENTED_GIGAS_SHIELD);
            player:messageSpecial(KEYITEM_OBTAINED,DENTED_GIGAS_SHIELD);
        end
    end
end;

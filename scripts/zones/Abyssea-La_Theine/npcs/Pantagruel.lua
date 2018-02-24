-----------------------------------
-- Area: Abyssea-LaTheine
--  MOB: Pantagruel
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
        if (not player:hasKeyItem(WARPED_GIGAS_ARMBAND)) then
            player:addKeyItem(WARPED_GIGAS_ARMBAND);
            player:messageSpecial(WARPED_GIGAS_ARMBAND);
        end
    end
end;

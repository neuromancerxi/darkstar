-----------------------------------
-- Area: Abyssea-LaTheine
--  MOB: Trudging Thomas
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
        if (not player:hasKeyItem(MARBLED_MUTTON_CHOP)) then
            player:addKeyItem(MARBLED_MUTTON_CHOP);
            player:messageSpecial(MARBLED_MUTTON_CHOP);
        end
    end
end;

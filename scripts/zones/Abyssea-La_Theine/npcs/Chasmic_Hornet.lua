-----------------------------------
-- Area: Abyssea-LaTheine
--  MOB: Chasmic Hornet
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
        if (not player:hasKeyItem(SCARLET_ABYSSITE_OF_PERSPICACITY)) then
            player:addKeyItem(SCARLET_ABYSSITE_OF_PERSPICACITY);
            player:messageSpecial(KEYITEM_OBTAINED,SCARLET_ABYSSITE_OF_PERSPICACITY);
        end
    end
end;

-----------------------------------
-- Area: Abyssea-LaTheine
--  MOB: Briareus
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
        if (not player:hasKeyItem(BLOOD_SMEARED_GIGAS_HELM)) then
            player:addKeyItem(BLOOD_SMEARED_GIGAS_HELM);
            player:messageSpecial(BLOOD_SMEARED_GIGAS_HELM);
        end
    end
    if (math.random(100) < 40) then
        if (not player:hasKeyItem(ATMA_OF_THE_STOUT_ARM)) then
            player:addKeyItem(ATMA_OF_THE_STOUT_ARM);
            player:messageSpecial(ATMA_OF_THE_STOUT_ARM);
        end
    end
    player:addTitle(BRIAREUS_FELLER);
end;

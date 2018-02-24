-----------------------------------------
-- ID: 4258
-- Item: Red Drop
-- Strength 6
-- Attack %20
-- Attack Cap 160
-- Ranged Attack %20
-- Ranged Attack Cap 160
-- Accuracy %5
-- Accuracy Cap 40
-- Ranged Accuracy %5
-- Ranged Accuracy Cap 40
-- Health Regen While Healing 5
-- March Effect 2
-- Minuet Effect 2
-----------------------------------------
require("scripts/globals/status");

function onItemCheck(target)
    local result = 0;
    if (target:hasStatusEffect(EFFECT_FOOD) == true or target:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

function onItemUse(target)
    target:addStatusEffect(EFFECT_FOOD,0,0,1800,4258);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_STR, 6);
    target:addMod(MOD_FOOD_ATTP, 20);
    target:addMod(MOD_FOOD_ATT_CAP, 160);
    target:addMod(MOD_FOOD_RATTP, 20);
    target:addMod(MOD_FOOD_RATT_CAP, 160);
    target:addMod(MOD_FOOD_ACCP, 5);
    target:addMod(MOD_FOOD_ACC_CAP, 40);
    target:addMod(MOD_FOOD_RACCP, 5);
    target:addMod(MOD_FOOD_RACC_CAP, 40);
    target:addMod(MOD_HPHEAL, 5);
    target:addMod(MOD_MINUET_EFFECT, 2);
    target:addMod(MOD_MADRIGAL_EFFECT, 2);
	
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target, effect)
    target:delMod(MOD_STR, 6);
    target:delMod(MOD_FOOD_ATTP, 20);
    target:delMod(MOD_FOOD_ATT_CAP, 160);
    target:delMod(MOD_FOOD_RATTP, 20);
    target:delMod(MOD_FOOD_RATT_CAP, 160);
    target:delMod(MOD_FOOD_ACCP, 5);
    target:delMod(MOD_FOOD_ACC_CAP, 40);
    target:delMod(MOD_FOOD_RACCP, 5);
    target:delMod(MOD_FOOD_RACC_CAP, 40);
    target:delMod(MOD_HPHEAL, 5);
    target:delMod(MOD_MINUET_EFFECT, 2);
    target:delMod(MOD_MADRIGAL_EFFECT, 2);

end;

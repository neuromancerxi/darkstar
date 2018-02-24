-----------------------------------------
-- ID: 4262
-- Item: Purple Drop
-- Dexterity 6
-- Attack %5
-- Attack Cap 50
-- Ranged Attack %5
-- Ranged Attack Cap 50
-- Accuracy %13
-- Accuracy Cap 88
-- Ranged Accuracy %6
-- Ranged Accuracy Cap 66
-- Quick Draw Damage Bonus
-- Magic Attack 3
-- Magic Accuracy 3
-- WeaponSkill Accuracy 15
-- Prelude 2
-- Madrigal 2
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
    target:addStatusEffect(EFFECT_FOOD,0,0,1800,4262);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_DEX, 6);
    target:addMod(MOD_FOOD_ATTP, 5);
    target:addMod(MOD_FOOD_ATT_CAP, 50);
    target:addMod(MOD_FOOD_RATTP, 5);
    target:addMod(MOD_FOOD_RATT_CAP, 50);
    target:addMod(MOD_FOOD_ACCP, 13);
    target:addMod(MOD_FOOD_ACC_CAP, 88);
    target:addMod(MOD_FOOD_RACCP, 6);
    target:addMod(MOD_FOOD_RACC_CAP, 66);
    target:addMod(MOD_QUICK_DRAW_DMG_PERCENT, 5);
    target:addMod(MOD_MAGIC_DAMAGE, 3);
    target:addMod(MOD_FOOD_MACCP, 2);
    target:addMod(MOD_WSACC, 15);
    target:addMod(MOD_PRELUDE_EFFECT, 2);
    target:addMod(MOD_MADRIGAL_EFFECT, 2);
	
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target, effect)
    target:delMod(MOD_DEX, 6);
    target:delMod(MOD_FOOD_ATTP, 5);
    target:delMod(MOD_FOOD_ATT_CAP, 50);
    target:delMod(MOD_FOOD_RATTP, 5);
    target:delMod(MOD_FOOD_RATT_CAP, 50);
    target:delMod(MOD_FOOD_ACCP, 13);
    target:delMod(MOD_FOOD_ACC_CAP, 88);
    target:delMod(MOD_FOOD_RACCP, 6);
    target:delMod(MOD_FOOD_RACC_CAP, 66);
    target:delMod(MOD_QUICK_DRAW_DMG_PERCENT, 5);
    target:delMod(MOD_MAGIC_DAMAGE, 3);
    target:delMod(MOD_FOOD_MACCP, 2);
    target:delMod(MOD_WSACC, 15);
    target:delMod(MOD_PRELUDE_EFFECT, 2);
    target:delMod(MOD_MADRIGAL_EFFECT, 2);

end;


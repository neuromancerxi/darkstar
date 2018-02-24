-----------------------------------------
-- ID: 4260
-- Item: Green Drop
-- Agility 6
-- Evasion 9
-- Attack %5
-- Attack Cap 50
-- Ranged Attack %5
-- Ranged Attack Cap 50
-- Accuracy %6
-- Accuracy Cap 66
-- Ranged Accuracy %13
-- Ranged Accuracy Cap 88
-- Quick Draw Damage Bonus
-- Magic Attack 2
-- Magic Accuracy 4
-- Bonus First Hit WeaponSkill Damage 3
-- Mambo 2
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
    target:addStatusEffect(EFFECT_FOOD,0,0,1800,4260);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_AGI, 6);
    target:addMod(MOD_EVA, 9);
    target:addMod(MOD_FOOD_ATTP, 5);
    target:addMod(MOD_FOOD_ATT_CAP, 50);
    target:addMod(MOD_FOOD_RATTP, 5);
    target:addMod(MOD_FOOD_RATT_CAP, 50);
    target:addMod(MOD_FOOD_ACCP, 6);
    target:addMod(MOD_FOOD_ACC_CAP, 66);
    target:addMod(MOD_FOOD_RACCP, 13);
    target:addMod(MOD_FOOD_RACC_CAP, 88);
    target:addMod(MOD_QUICK_DRAW_DMG_PERCENT, 5);
    target:addMod(MOD_MAGIC_DAMAGE, 2);
    target:addMod(MOD_FOOD_MACCP, 4);
    target:addMod(MOD_ALL_WSDMG_FIRST_HIT, 3);
    target:addMod(MOD_MAMBO_EFFECT, 2);
    target:addMod(MOD_MADRIGAL_EFFECT, 2);

end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target, effect)
    target:delMod(MOD_AGI, 6);
    target:delMod(MOD_EVA, 9);
    target:delMod(MOD_FOOD_ATTP, 5);
    target:delMod(MOD_FOOD_ATT_CAP, 50);
    target:delMod(MOD_FOOD_RATTP, 5);
    target:delMod(MOD_FOOD_RATT_CAP, 50);
    target:delMod(MOD_FOOD_ACCP, 6);
    target:delMod(MOD_FOOD_ACC_CAP, 66);
    target:delMod(MOD_FOOD_RACCP, 13);
    target:delMod(MOD_FOOD_RACC_CAP, 88);
    target:delMod(MOD_QUICK_DRAW_DMG_PERCENT, 5);
    target:delMod(MOD_MAGIC_DAMAGE, 2);
    target:delMod(MOD_FOOD_MACCP, 4);
    target:delMod(MOD_ALL_WSDMG_FIRST_HIT, 3);
    target:delMod(MOD_MAMBO_EFFECT, 2);
    target:delMod(MOD_MADRIGAL_EFFECT, 2);

end;


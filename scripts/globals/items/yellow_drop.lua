-----------------------------------------
-- ID: 4261
-- Item: Yellow Drop
-- Vitality 6
-- Health % 10
-- Health Cap 165
-- Defense % 21
-- Defense Cap 175
-- Attack % 20
-- Attack Cap 150
-- Accuracy %5
-- Accuracy Cap 50
-- Enmity 10
-- Cure Received 3
-- Bonus First Hit WeaponSkill Damage 3
-- Minne 2
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
    target:addStatusEffect(EFFECT_FOOD,0,0,1800,4261);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_VIT, 6);
    target:addMod(MOD_FOOD_HPP, 10);
    target:addMod(MOD_FOOD_HP_CAP, 165);
    target:addMod(MOD_FOOD_DEFP, 21);
    target:addMod(MOD_FOOD_DEF_CAP, 175);
    target:addMod(MOD_FOOD_ATTP, 20);
    target:addMod(MOD_FOOD_ATT_CAP, 150);
    target:addMod(MOD_FOOD_ACCP, 5);
    target:addMod(MOD_FOOD_ACC_CAP, 50);
    target:addMod(MOD_ENMITY, 10);
    target:addMod(MOD_CURE_POTENCY_RCVD, 3);
    target:addMod(MOD_ALL_WSDMG_FIRST_HIT, 3);
    target:addMod(MOD_MINNE_EFFECT, 2);
    target:addMod(MOD_MADRIGAL_EFFECT, 2);

end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target, effect)
    target:delMod(MOD_VIT, 6);
    target:delMod(MOD_FOOD_HPP, 10);
    target:delMod(MOD_FOOD_HP_CAP, 165);
    target:delMod(MOD_FOOD_DEFP, 21);
    target:delMod(MOD_FOOD_DEF_CAP, 175);
    target:delMod(MOD_FOOD_ATTP, 20);
    target:delMod(MOD_FOOD_ATT_CAP, 150);
    target:delMod(MOD_FOOD_ACCP, 5);
    target:delMod(MOD_FOOD_ACC_CAP, 50);
    target:delMod(MOD_ENMITY, 10);
    target:delMod(MOD_CURE_POTENCY_RCVD, 3);
    target:delMod(MOD_ALL_WSDMG_FIRST_HIT, 3);
    target:delMod(MOD_MINNE_EFFECT, 2);
    target:delMod(MOD_MADRIGAL_EFFECT, 2);

end;


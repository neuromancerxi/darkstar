-----------------------------------------
-- ID: 4263
-- Item: Blue Drop
-- Mind 6
-- Magic Points 40
-- Magic Attack 12
-- Magic Attack Bonus 10
-- Magic Def. Bonus 10
-- Magic Accuracy 8
-- Magic Evasion 5
-- Fastcast %5
-- White Magic Cast Time -%4
-- White Magic Recast Time -%4
-- Enmity -10
-- Cure (Cast) Potency %4
-- MP Recovery 5
-- Ballad 2
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
    target:addStatusEffect(EFFECT_FOOD,0,0,1800,4263);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_MND, 6);
    target:addMod(MOD_MP, 40);
    target:addMod(MOD_MAGIC_DAMAGE, 12);
    target:addMod(MOD_MATT, 10);
    target:addMod(MOD_MDEF, 10);
    target:addMod(MOD_FOOD_MACCP, 8);
    target:addMod(MOD_MEVA, 5);
    target:addMod(MOD_FASTCAST, 5);
    target:addMod(MOD_WHITE_MAGIC_CAST, -4);
    target:addMod(MOD_WHITE_MAGIC_RECAST, -4);
    target:addMod(MOD_ENMITY, -10);
    target:addMod(MOD_CURE_POTENCY, 4);
    target:addMod(MOD_MPHEAL, 5);
    target:addMod(MOD_BALLAD_EFFECT, 2);

end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target, effect)
    target:delMod(MOD_MND, 6);
    target:delMod(MOD_MP, 40);
    target:delMod(MOD_MAGIC_DAMAGE, 12);
    target:delMod(MOD_MATT, 10);
    target:delMod(MOD_MDEF, 10);
    target:delMod(MOD_FOOD_MACCP, 8);
    target:delMod(MOD_MEVA, 5);
    target:delMod(MOD_FASTCAST, 5);
    target:delMod(MOD_WHITE_MAGIC_CAST, -4);
    target:delMod(MOD_WHITE_MAGIC_RECAST, -4);
    target:delMod(MOD_ENMITY, -10);
    target:delMod(MOD_CURE_POTENCY, 4);
    target:delMod(MOD_MPHEAL, 5);
    target:delMod(MOD_BALLAD_EFFECT, 2);
	
end;

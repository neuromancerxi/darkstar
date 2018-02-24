-----------------------------------------
-- ID: 4259
-- Item: Clear Drop
-- Intelligence 6
-- Magic Points 40
-- Magic Attack 12
-- Magic Attack Bonus 10
-- Magic Def. Bonus 5
-- Magic Accuracy 8
-- Magic Evasion 10
-- Fastcast %5
-- Black Magic Cast Time -%4
-- Black Magic Recast Time -%4
-- Magic Burst Damage Bonus 5
-- Magic Critical Rate 5
-- Magic Crit Damage 5
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
    target:addStatusEffect(EFFECT_FOOD,0,0,1800,4259);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_INT, 6);
    target:addMod(MOD_MP, 40);
    target:addMod(MOD_MAGIC_DAMAGE, 12);
    target:addMod(MOD_MATT, 10);
    target:addMod(MOD_MDEF, 5);
    target:addMod(MOD_FOOD_MACCP, 8);
    target:addMod(MOD_MEVA, 10);
    target:addMod(MOD_FASTCAST, 5);
    target:addMod(MOD_BLACK_MAGIC_CAST, -4);
    target:addMod(MOD_BLACK_MAGIC_RECAST, -4);
    target:addMod(MOD_MAG_BURST_BONUS, 5);
    target:addMod(MOD_MAGIC_CRITHITRATE, 5);
    target:addMod(MOD_MAGIC_CRIT_DMG_INCREASE, 5);
    target:addMod(MOD_MPHEAL, 5);
    target:addMod(MOD_BALLAD_EFFECT, 2);

end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target, effect)
    target:delMod(MOD_INT, 6);
    target:delMod(MOD_MP, 40);
    target:delMod(MOD_MAGIC_DAMAGE, 12);
    target:delMod(MOD_MATT, 10);
    target:delMod(MOD_MDEF, 5);
    target:delMod(MOD_FOOD_MACCP, 8);
    target:delMod(MOD_MEVA, 10);
    target:delMod(MOD_FASTCAST, 5);
    target:delMod(MOD_BLACK_MAGIC_CAST, -4);
    target:delMod(MOD_BLACK_MAGIC_RECAST, -4);
    target:delMod(MOD_MAG_BURST_BONUS, 5);
    target:delMod(MOD_MAGIC_CRITHITRATE, 5);
    target:delMod(MOD_MAGIC_CRIT_DMG_INCREASE, 5);
    target:delMod(MOD_MPHEAL, 5);
    target:delMod(MOD_BALLAD_EFFECT, 2);

end;


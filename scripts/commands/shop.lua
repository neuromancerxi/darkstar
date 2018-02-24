---------------------------------------------------------------------------------------------------
-- func: Easy Stop (Multi Shop)
-- desc: World accessible shop for various items
---------------------------------------------------------------------------------------------------

require("scripts/globals/shop");

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function error(player, msg)
    player:PrintToPlayer(msg);
end;

-----------------------------------------

function onTrigger(player,shop)
    if (shop == 1) then
        error(player, string.format( "Crystals R US! HQ Crystal Emporium.", player ) );
        stock = {0x108E,3000, -- Inferno Crystal 
                 0x108F,3000, -- Glacier Crystal 
                 0x1090,3000, -- Cyclone Crystal 
                 0x1091,3000, -- Terra Crystal
                 0x1092,3000, -- Plasma Crystal
                 0x1093,3000, -- Torrent Crystal
                 0x1094,3000, -- Aurora Crystal
                 0x1095,3000  -- Twilight Crystal
                 }
        showShop(player, STATIC, stock);
    elseif (shop == 2) then
        error(player, string.format( "Kazham Fried Chocobo, now with less Chocobo.", player ) );
        stock = {0x1118,124,    -- Meat Jerky
                 0x1659,200,    -- Crab Sushi
                 0x10AF,1500,   -- Rice Dumpling
                 0x111D,1800,   -- Meat Mithkabob
                 0x10A2,10000,  -- Red Drop (Melee DPS)
                 0x10A3,10000,  -- Clear Drop (MAB/MATK)
                 0x10A4,10000,  -- Green Drop (Evasion / RACC / RATT)
                 0x10A5,10000,  -- Yellow Drop (DEF, DT-)
                 0x10A6,10000,  -- Purple Drop (CRIT)
                 0x10A7,10000,  -- Blue Drop (MND, Cure Potency)
                 0x10A8,10000,  -- White Drop (PET Physical)
                 0x10A9,10000,  -- Black Drop (PET Magical)
                 0x119F,100000  -- Ambrosia (God Food)
                 }
        showShop(player, STATIC, stock);
    elseif (shop == 3) then
        error(player, string.format( "Nomad Moogle Shop. These help fund my travels.", player ) );
        stock = {0x119d,10,   -- Distilled Water
                 0x1034,290,  -- Antidote
                 0x1037,736,  -- Echo Drops
                 0x1010,837,  -- Potion
                 0x1036,2387, -- Eye Drops
                 0x1020,4445, -- Ether
                 0x103A,6440  -- Holy Water
                 }
        showShop(player, STATIC, stock);
    elseif (shop == 4) then
        error(player, string.format( "Ammunition.", player ) );
        stock = {
                 0x5358,190, -- ilvl 113 Adlivun Bullet RNG COR
                 0x5348,190, -- ilvl 113 Adlivun Bolt RNG
                 0x533A,190, -- ilvl 113 Adlivun Arrow RNG
                 }
        showShop(player, STATIC, stock);
    else
        error(player, string.format( "!shop 1 - HQ Crystals\n!shop 2 - Food (NQ and Augmented)\n!shop 3 - Meds\n!shop 4 - Ammo and Consumables", player ) );
    end;
end; 

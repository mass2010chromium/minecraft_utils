function adventure_map:kits/mage_spells
function adventure_map:kits/archer_spells
function adventure_map:kits/knight_spells
function adventure_map:spells/mobs/blaze
execute as @e[type=item,tag=!processed] run function adventure_map:kits/common_spells
function adventure_map:mana/loop
function adventure_map:fine_damage/loop

kill @e[type=minecraft:experience_orb]
recipe take @a *
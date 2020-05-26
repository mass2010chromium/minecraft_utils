tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['{"text":"predrop"}']}}}}] add processed
execute as @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:['{"text":"predrop"}']}}}},tag=processed] run data remove entity @s Item.tag.display.Lore[-1]

function adventure_map:kits/archer_spells
function adventure_map:kits/knight_spells
function adventure_map:kits/mage_spells
function adventure_map:spells/dev/blink
function adventure_map:spells/mobs/blaze
execute as @e[tag=rangedTag] at @s run function adventure_map:spells/mobs/ranged_mob_loop
execute as @e[tag=chargeTag] at @s run function adventure_map:spells/mobs/charge_loop
execute as @e[tag=rangedMissile] at @s run function adventure_map:spells/mobs/ranged_generic_loop
execute as @e[type=item,tag=!processed] run function adventure_map:kits/common_spells
function adventure_map:mana/loop
function adventure_map:fine_damage/loop

kill @e[type=minecraft:experience_orb]
recipe take @a *
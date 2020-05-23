# @s refers to the caster!!!
scoreboard players remove @s[tag=discharge_cast] mana.mana 500 
playsound minecraft:entity.blaze.ambient master @a[distance=0..8] ~ ~ ~
effect give @a[distance=0..8] minecraft:strength 5 0
function adventure_map:spells/lightning
effect give @e[team=Enemies,distance=0..6] minecraft:slowness 1 9 true
effect give @e[team=Enemies,distance=0..6] minecraft:jump_boost 1 200 true
execute at @e[team=Enemies,distance=0..6] run particle minecraft:large_smoke ~ ~1 ~ 0.25 1 0.25 0 50
execute at @e[team=Enemies,distance=0..6] run particle minecraft:instant_effect ~ ~1 ~ 0.5 1 0.5 0 50
scoreboard players operation @e[team=Enemies,distance=0..6] fine_hp.mdmg += @s spell.5.power 
tag @s remove discharge_cast
# @s refers to the item!!! 
scoreboard players set @a[tag=mage] fine_hp.tmp0 0
# Tag with discharge cast, and remove mana from player
execute at @p[tag=mage,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=400..}] store success score @p[tag=mage,nbt={SelectedItemSlot:2},tag=!replenish_fail,distance=0..4,scores={mana.mana=400..}] fine_hp.tmp0 run tag @s add discharge_cast
scoreboard players remove @a[tag=mage,scores={fine_hp.tmp0=1}] mana.mana 400 
execute at @s[tag=discharge_cast] run playsound minecraft:entity.blaze.ambient master @a[distance=0..8] ~ ~ ~
execute at @s[tag=discharge_cast] run effect give @p[distance=0..8] minecraft:strength 5 0
execute at @s[tag=discharge_cast] run effect give @e[team=Enemies,distance=0..6] minecraft:slowness 1 9 true
execute at @s[tag=discharge_cast] at @e[team=Enemies,distance=0..4] run particle minecraft:large_smoke ~ ~1 ~ 0.25 1 0.25 0 50
execute at @s[tag=discharge_cast] at @e[team=Enemies,distance=0..4] run particle minecraft:instant_effect ~ ~1 ~ 0.5 1 0.5 0 50
execute at @s[tag=discharge_cast] run particle minecraft:flame ~ ~ ~ 0.25 1 0.25 0.1 50
execute at @s[tag=discharge_cast] run scoreboard players operation @e[team=Enemies,distance=0..6] fine_hp.mdmg += @p[distance=0..4,scores={fine_hp.tmp0=1},tag=mage] spell.4.power
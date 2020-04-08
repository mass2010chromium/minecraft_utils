me hi
tag @s[type=minecraft:item,nbt={Item:{tag:{display:{Name:'"Healing Potion 1"'}}}}] add spell.7.tag
tag @s[tag=spell.7.tag] add spell.6.tag
tag @s[tag=spell.7.tag,nbt={Item:{Count:1b}}] add fine_hp.isdead
execute as @s[tag=spell.7.tag,tag=!fine_hp.isdead] store result score @s fine_hp.tmp0 run data get entity @s Item.Count
scoreboard players remove @s[tag=spell.7.tag,tag=!fine_hp.isdead] fine_hp.tmp0 1
execute as @s[tag=spell.7.tag,tag=!fine_hp.isdead] store result entity @s Item.Count byte 1 run scoreboard players get @s fine_hp.tmp0 
execute as @s[tag=spell.6.tag] run scoreboard players add @p fine_hp.potreg 10
execute as @s[tag=spell.6.tag] run particle heart ~ ~ ~ 0.25 0.25 0.25 0 5 force
tag @s remove spell.6.tag
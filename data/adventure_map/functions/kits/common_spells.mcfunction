 tag @s[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"text":"Healing Potion 1","italic":false}'}}}}] add spell.12.tag
tag @s[tag=spell.12.tag] add spell.11.tag
tag @s[tag=spell.12.tag,nbt={Item:{Count:1b}}] add fine_hp.isdead
execute as @s[tag=spell.12.tag,tag=!fine_hp.isdead] store result score @s fine_hp.tmp0 run data get entity @s Item.Count
scoreboard players remove @s[tag=spell.12.tag,tag=!fine_hp.isdead] fine_hp.tmp0 1
execute as @s[tag=spell.12.tag,tag=!fine_hp.isdead] store result entity @s Item.Count byte 1 run scoreboard players get @s fine_hp.tmp0
execute at @s[tag=spell.11.tag] run playsound minecraft:entity.player.burp block @a ~ ~-2 ~
execute at @s[tag=spell.11.tag] run scoreboard players add @p fine_hp.potreg 10
execute as @s[tag=spell.11.tag] run particle heart ~ ~ ~ 0.25 0.25 0.25 0 5 force
tag @s remove spell.11.tag 
tag @s[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"text":"Healing Potion 2","italic":false}'}}}}] add spell.14.tag
tag @s[tag=spell.14.tag] add spell.13.tag
tag @s[tag=spell.14.tag,nbt={Item:{Count:1b}}] add fine_hp.isdead
execute as @s[tag=spell.14.tag,tag=!fine_hp.isdead] store result score @s fine_hp.tmp0 run data get entity @s Item.Count
scoreboard players remove @s[tag=spell.14.tag,tag=!fine_hp.isdead] fine_hp.tmp0 1
execute as @s[tag=spell.14.tag,tag=!fine_hp.isdead] store result entity @s Item.Count byte 1 run scoreboard players get @s fine_hp.tmp0
execute at @s[tag=spell.13.tag] run playsound minecraft:entity.player.burp block @a ~ ~-2 ~
execute at @s[tag=spell.13.tag] run scoreboard players add @p fine_hp.potreg 15
execute as @s[tag=spell.13.tag] run particle heart ~ ~ ~ 0.25 0.25 0.25 0 5 force
tag @s remove spell.13.tag 
tag @s[type=minecraft:item,nbt={Item:{tag:{display:{Name:'{"text":"Healing Potion 3","italic":false}'}}}}] add spell.16.tag
tag @s[tag=spell.16.tag] add spell.15.tag
tag @s[tag=spell.16.tag,nbt={Item:{Count:1b}}] add fine_hp.isdead
execute as @s[tag=spell.16.tag,tag=!fine_hp.isdead] store result score @s fine_hp.tmp0 run data get entity @s Item.Count
scoreboard players remove @s[tag=spell.16.tag,tag=!fine_hp.isdead] fine_hp.tmp0 1
execute as @s[tag=spell.16.tag,tag=!fine_hp.isdead] store result entity @s Item.Count byte 1 run scoreboard players get @s fine_hp.tmp0
execute at @s[tag=spell.15.tag] run playsound minecraft:entity.player.burp block @a ~ ~-2 ~
execute at @s[tag=spell.15.tag] run scoreboard players add @p fine_hp.potreg 20
execute as @s[tag=spell.15.tag] run particle heart ~ ~ ~ 0.25 0.25 0.25 0 5 force
tag @s remove spell.15.tag
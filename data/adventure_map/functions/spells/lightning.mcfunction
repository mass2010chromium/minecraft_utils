 playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 10
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 10 
summon armor_stand ~ ~ ~ {Tags:["lightning_tracker"],Marker:1b,Invisible:1b}
execute as @e[type=armor_stand,sort=nearest,limit=1,tag=lightning_tracker] at @s run function adventure_map:spells/lightning_recurse
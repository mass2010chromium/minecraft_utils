# Apply buffs
# None rn 
# No replenish mechanics for archer  
# Piercing arrow spell
tag @a[tag=archer,nbt={Inventory:[{Slot:2b,tag:{display:{Name:'"Piercing Arrow 1"'}}}]}] add pa_1
scoreboard players set @a[tag=pa_1] spell.3.power 10
# Different tiers
replaceitem entity @a[tag=pa_1,scores={mana.mana=..599}] container.2 minecraft:crossbow{ display:{ Name:'"Piercing Arrow 1"', Lore:['"Archer: Active Spell"', '"Archer: Piercing Arrow Spell"']}, Charged:1b } 
# All piercing arrow casts
tag @a[tag=archer,nbt={SelectedItemSlot:2,SelectedItem:{tag:{Charged:0b,display:{Lore:['"Archer: Piercing Arrow Spell"']}}}}] add shotPierce
scoreboard players remove @a[tag=shotPierce] mana.mana 600
execute as @a[tag=shotPierce] at @s run scoreboard players operation @e[type=minecraft:spectral_arrow,tag=!processed,limit=1,sort=nearest] spell.3.power = @s spell.3.power 
# Different tiers
replaceitem entity @a[tag=pa_1,scores={mana.mana=600..}] container.2 minecraft:crossbow{ display:{ Name:'"Piercing Arrow 1"', Lore:['"Archer: Active Spell"', '"Archer: Piercing Arrow Spell"'] }, ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],Charged:1b,Enchantments:[{}] }
tag @a remove pa_1
tag @a remove shotPierce 
execute as @e[type=minecraft:spectral_arrow,tag=!processed] run data merge entity @s {SoundEvent:"minecraft:block.glass.break",PierceLevel:99b,damage:2.0f}
tag @e[type=spectral_arrow] add processed
execute as @e[type=minecraft:spectral_arrow] at @s run scoreboard players operation @e[team=Enemies,distance=0..3,nbt={ActiveEffects:[{Id:24b}]}] fine_hp.mdmg += @s spell.3.power
execute at @e[type=minecraft:spectral_arrow] run effect clear @e[team=Enemies,distance=0..3] minecraft:glowing 
# Kill spell arrows that are in ground
kill @e[type=minecraft:spectral_arrow,nbt={inGround:1b}]
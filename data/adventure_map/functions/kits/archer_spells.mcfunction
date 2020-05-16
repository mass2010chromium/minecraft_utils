# Apply buffs
# None rn  
# Class restriction
effect give @a[tag=!archer,nbt={SelectedItem:{tag:{display:{Lore:['"Archer: Melee"']}}}}] slowness 3 9
effect give @a[tag=!archer,nbt={SelectedItem:{tag:{display:{Lore:['"Archer: Melee"']}}}}] weakness 3 9
tag @a[tag=archer,nbt={SelectedItem:{tag:{display:{Lore:['"Archer: Melee"']}}}}] add holdingWeapon
tag @a[tag=archer,nbt={SelectedItemSlot:0}] remove holdingWeapon
effect give @a[tag=archer,tag=holdingWeapon] slowness 3 9
effect give @a[tag=archer,tag=holdingWeapon] weakness 3 9
tag @a[tag=archer] remove holdingWeapon  
# No replenish mechanics for archer  
# Piercing arrow spell
tag @a[tag=archer,nbt={Inventory:[{Slot:2b,tag:{display:{Name:'{"text":"Piercing Arrow 1","italic":false}'}}}]}] add pa_1
scoreboard players set @a[tag=pa_1] spell.6.power 10 
# Different tiers
replaceitem entity @a[tag=pa_1,scores={mana.mana=..599}] container.2 minecraft:crossbow{display:{ Name:'{"text":"Piercing Arrow 1","italic":false}', Lore:[ '{"text":"Fire an arrow that pierces 7 enemies,","color":"white","italic":false}','{"text":"  dealing 10 magic damage and 7-10 physical damage.","color":"white","italic":false}','{"text":"Cost: 600MP","color":"blue","italic":false}', '"Archer: Active Spell"', '"Archer: Piercing Arrow Spell"', '"Archer: Slot 3"' ] }, Charged:1b} 1
replaceitem entity @a[tag=!pa_1,tag=archer,nbt={SelectedItem:{tag:{display:{Name:'{"text":"Piercing Arrow 1","italic":false}'}}}}] weapon.mainhand minecraft:crossbow{display:{ Name:'{"text":"Piercing Arrow 1","italic":false}', Lore:[ '{"text":"Fire an arrow that pierces 7 enemies,","color":"white","italic":false}','{"text":"  dealing 10 magic damage and 7-10 physical damage.","color":"white","italic":false}','{"text":"Cost: 600MP","color":"blue","italic":false}', '"Archer: Active Spell"', '"Archer: Piercing Arrow Spell"', '"Archer: Slot 3"' ] }, Charged:1b} 1
replaceitem entity @a[tag=archer,nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Piercing Arrow 1","italic":false}'}}}]}] weapon.offhand minecraft:crossbow{display:{ Name:'{"text":"Piercing Arrow 1","italic":false}', Lore:[ '{"text":"Fire an arrow that pierces 7 enemies,","color":"white","italic":false}','{"text":"  dealing 10 magic damage and 7-10 physical damage.","color":"white","italic":false}','{"text":"Cost: 600MP","color":"blue","italic":false}', '"Archer: Active Spell"', '"Archer: Piercing Arrow Spell"', '"Archer: Slot 3"' ] }, Charged:1b} 1 
# All piercing arrow casts
tag @a[tag=archer,nbt={SelectedItemSlot:2,SelectedItem:{tag:{Charged:0b,display:{Lore:['"Archer: Piercing Arrow Spell"']}}}}] add shotPierce
scoreboard players remove @a[tag=shotPierce] mana.mana 600
execute as @a[tag=shotPierce] at @s run scoreboard players operation @e[type=minecraft:spectral_arrow,tag=!processed,limit=1,sort=nearest] spell.6.power = @s spell.6.power
execute as @a[tag=shotPierce] at @s run tag @e[type=minecraft:spectral_arrow,tag=!processed,limit=1,sort=nearest] add piercing_arrow 
# Different tiers
replaceitem entity @a[tag=pa_1,scores={mana.mana=600..}] container.2 minecraft:crossbow{Enchantments:[{}],ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],display:{ Name:'{"text":"Piercing Arrow 1","italic":false}', Lore:[ '{"text":"Fire an arrow that pierces 7 enemies,","color":"white","italic":false}','{"text":"  dealing 10 magic damage and 7-10 physical damage.","color":"white","italic":false}','{"text":"Cost: 600MP","color":"blue","italic":false}', '"Archer: Active Spell"', '"Archer: Piercing Arrow Spell"', '"Archer: Slot 3"' ] }, Charged:1b}
tag @a remove pa_1
tag @a remove shotPierce 
execute as @e[tag=piercing_arrow,tag=!processed] run data merge entity @s {SoundEvent:"minecraft:block.glass.break",PierceLevel:5b,damage:2.0f}
execute as @e[tag=piercing_arrow] at @s run scoreboard players operation @e[team=Enemies,distance=0..4,nbt={ActiveEffects:[{Id:24b}]}] fine_hp.mdmg += @s spell.6.power   
# Windwalk spell
tag @a[tag=archer,nbt={Inventory:[{Slot:2b,tag:{display:{Name:'{"text":"Windwalk 1","italic":false}'}}}]}] add ww_1
scoreboard players set @a[tag=ww_1] spell.5.power 5 
# Different tiers
replaceitem entity @a[tag=ww_1,scores={mana.mana=..399}] container.2 minecraft:crossbow{display:{ Name:'{"text":"Windwalk 1","italic":false}', Lore:[ '{"text":"Fire an arrow, dealing 5 magic damage","color":"white","italic":false}','{"text":"  and knocking opponents airborne.","color":"white","italic":false}','{"text":"Grants speed II to caster for 5s.","color":"white","italic":false}','{"text":"Grants speed I to caster and allies for 20s.","color":"white","italic":false}','{"text":"Cost: 400MP","color":"blue","italic":false}', '"Archer: Active Spell"', '"Archer: Windwalk Spell"', '"Archer: Slot 3"' ] }, Charged:1b} 1
replaceitem entity @a[tag=!ww_1,tag=archer,nbt={SelectedItem:{tag:{display:{Name:'{"text":"Windwalk 1","italic":false}'}}}}] weapon.mainhand minecraft:crossbow{display:{ Name:'{"text":"Windwalk 1","italic":false}', Lore:[ '{"text":"Fire an arrow, dealing 5 magic damage","color":"white","italic":false}','{"text":"  and knocking opponents airborne.","color":"white","italic":false}','{"text":"Grants speed II to caster for 5s.","color":"white","italic":false}','{"text":"Grants speed I to caster and allies for 20s.","color":"white","italic":false}','{"text":"Cost: 400MP","color":"blue","italic":false}', '"Archer: Active Spell"', '"Archer: Windwalk Spell"', '"Archer: Slot 3"' ] }, Charged:1b} 1
replaceitem entity @a[tag=archer,nbt={Inventory:[{Slot:-106b,tag:{display:{Name:'{"text":"Windwalk 1","italic":false}'}}}]}] weapon.offhand minecraft:crossbow{display:{ Name:'{"text":"Windwalk 1","italic":false}', Lore:[ '{"text":"Fire an arrow, dealing 5 magic damage","color":"white","italic":false}','{"text":"  and knocking opponents airborne.","color":"white","italic":false}','{"text":"Grants speed II to caster for 5s.","color":"white","italic":false}','{"text":"Grants speed I to caster and allies for 20s.","color":"white","italic":false}','{"text":"Cost: 400MP","color":"blue","italic":false}', '"Archer: Active Spell"', '"Archer: Windwalk Spell"', '"Archer: Slot 3"' ] }, Charged:1b} 1 
# All windwalk arrow casts
tag @a[tag=archer,nbt={SelectedItemSlot:2,SelectedItem:{tag:{Charged:0b,display:{Lore:['"Archer: Windwalk Spell"']}}}}] add shotWind
scoreboard players remove @a[tag=shotWind] mana.mana 400
execute as @a[tag=shotWind] at @s run scoreboard players operation @e[type=minecraft:spectral_arrow,tag=!processed,limit=1,sort=nearest] spell.5.power = @s spell.5.power
execute as @a[tag=shotWind] at @s run tag @e[type=minecraft:spectral_arrow,tag=!processed,limit=1,sort=nearest] add windwalk_arrow
effect give @a[tag=shotWind,scores={spell.5.power=6..}] minecraft:speed 5 1
effect give @a[tag=shotWind] minecraft:speed 20 0
execute at @a[tag=shotWind] run effect give @a[distance=0..8] minecraft:speed 10 0 
# Different tiers
replaceitem entity @a[tag=ww_1,scores={mana.mana=400..}] container.2 minecraft:crossbow{Enchantments:[{}],ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b}],display:{ Name:'{"text":"Windwalk 1","italic":false}', Lore:[ '{"text":"Fire an arrow, dealing 5 magic damage","color":"white","italic":false}','{"text":"  and knocking opponents airborne.","color":"white","italic":false}','{"text":"Grants speed II to caster for 5s.","color":"white","italic":false}','{"text":"Grants speed I to caster and allies for 20s.","color":"white","italic":false}','{"text":"Cost: 400MP","color":"blue","italic":false}', '"Archer: Active Spell"', '"Archer: Windwalk Spell"', '"Archer: Slot 3"' ] }, Charged:1b}
tag @a remove ww_1
tag @a remove shotWind 
execute as @e[tag=windwalk_arrow,tag=!processed] run data merge entity @s {SoundEvent:"minecraft:entity.arrow.shoot",PierceLevel:99b,damage:2.0f}
execute as @e[tag=windwalk_arrow] at @s store success score @s fine_hp.tmp0 run scoreboard players operation @e[team=Enemies,distance=0..4,nbt={ActiveEffects:[{Id:24b}]}] fine_hp.mdmg += @s spell.5.power
execute at @e[tag=windwalk_arrow] run execute at @e[team=Enemies,distance=0..4,nbt={ActiveEffects:[{Id:24b}]}] run effect give @e[team=Enemies,distance=0..2] levitation 1 0
execute at @e[tag=windwalk_arrow,scores={fine_hp.tmp0=1..}] run playsound block.glass.break master @a[distance=0..8]
tag @e[tag=windwalk_arrow,scores={fine_hp.tmp0=1..}] add fine_hp.isdead   
# General spell stuff
tag @e[type=spectral_arrow] add processed
execute at @e[type=minecraft:spectral_arrow] run effect clear @e[team=Enemies,distance=0..4] minecraft:glowing 
# Kill spell arrows that are in ground
kill @e[type=minecraft:spectral_arrow,nbt={inGround:1b}]
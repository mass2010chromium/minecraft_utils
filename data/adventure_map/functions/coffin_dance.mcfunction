scoreboard objectives add danceTimer dummy
fill ~-2 ~-1 ~-1 ~2 ~-1 ~1 sandstone
fill ~-2 ~ ~-1 ~2 ~ ~1 red_carpet
summon falling_block ~-1 ~1.5 ~ {BlockState:{Name:"minecraft:dark_oak_planks"},Time:-200000,NoGravity:1b}
summon falling_block ~ ~1.5 ~ {BlockState:{Name:"minecraft:dark_oak_planks"},Time:-200000,NoGravity:1b}
summon falling_block ~1 ~1.5 ~ {BlockState:{Name:"minecraft:dark_oak_planks"},Time:-200000,NoGravity:1b}
summon falling_block ~-1 ~1.5 ~1 {BlockState:{Name:"minecraft:dark_oak_trapdoor",Properties:{"open":"true","facing":"south"}},Time:-200000,NoGravity:1b}
summon falling_block ~ ~1.5 ~1 {BlockState:{Name:"minecraft:dark_oak_trapdoor",Properties:{"open":"true","facing":"south"}},Time:-200000,NoGravity:1b}
summon falling_block ~1 ~1.5 ~1 {BlockState:{Name:"minecraft:dark_oak_trapdoor",Properties:{"open":"true","facing":"south"}},Time:-200000,NoGravity:1b}
summon falling_block ~-1 ~1.5 ~-1 {BlockState:{Name:"minecraft:dark_oak_trapdoor",Properties:{"open":"true","facing":"north"}},Time:-200000,NoGravity:1b}
summon falling_block ~ ~1.5 ~-1 {BlockState:{Name:"minecraft:dark_oak_trapdoor",Properties:{"open":"true","facing":"north"}},Time:-200000,NoGravity:1b}
summon falling_block ~1 ~1.5 ~-1 {BlockState:{Name:"minecraft:dark_oak_trapdoor",Properties:{"open":"true","facing":"north"}},Time:-200000,NoGravity:1b}
summon falling_block ~-1 ~2.5 ~ {BlockState:{Name:"minecraft:spruce_trapdoor"},Time:-200000,NoGravity:1b}
summon falling_block ~ ~2.5 ~ {BlockState:{Name:"minecraft:spruce_trapdoor"},Time:-200000,NoGravity:1b}
summon falling_block ~1 ~2.5 ~ {BlockState:{Name:"minecraft:spruce_trapdoor"},Time:-200000,NoGravity:1b}
summon falling_block ~2 ~1.5 ~ {BlockState:{Name:"minecraft:dark_oak_trapdoor",Properties:{"open":"true","facing":"east"}},Time:-200000,NoGravity:1b}
summon falling_block ~-2 ~1.5 ~ {BlockState:{Name:"minecraft:dark_oak_trapdoor",Properties:{"open":"true","facing":"west"}},Time:-200000,NoGravity:1b}

setblock ~ ~-1 ~ repeating_command_block{Command:"scoreboard players add @a danceTimer 1"}
setblock ~1 ~-1 ~1 repeating_command_block{Command:"execute positioned ~-1 ~1 ~-1 run function adventure_map:coffin_dance_loop"}
setblock ~1 ~-1 ~-1 repeating_command_block{Command:"execute positioned ~-1 ~1 ~1 run function adventure_map:coffin_dance_music"}
setblock ~1 ~-1 ~ redstone_block
summon armor_stand ~1.4 ~ ~0.83 {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:0}}},{id:"leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"player_head",Count:1b,tag:{SkullOwner:"Obama"}}],HandItems:[{},{}],DisabledSlots:7936,Rotation:[90f],Tags:["coffinDancer"]}
summon armor_stand ~-1.4 ~ ~0.83 {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:0}}},{id:"leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"player_head",Count:1b,tag:{SkullOwner:"Obama"}}],HandItems:[{},{}],DisabledSlots:7936,Rotation:[90f],Tags:["coffinDancer"]}
summon armor_stand ~1.4 ~ ~-0.83 {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:0}}},{id:"leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"player_head",Count:1b,tag:{SkullOwner:"Obama"}}],HandItems:[{},{}],DisabledSlots:7936,Rotation:[90f],Tags:["coffinDancer"]}
summon armor_stand ~-1.4 ~ ~-0.83 {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:0}}},{id:"leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"player_head",Count:1b,tag:{SkullOwner:"Obama"}}],HandItems:[{},{}],DisabledSlots:7936,Rotation:[90f],Tags:["coffinDancer"]}
scoreboard players set @a danceTimer 1

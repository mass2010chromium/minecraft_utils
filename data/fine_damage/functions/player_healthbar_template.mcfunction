execute as @a[scores={##hp_check_tick##=1}] run scoreboard players set @s ##t2## ##player_base_hp##
execute as @a[scores={##hp_check_tick##=1}] run scoreboard players operation @s ##t2## -= @s ##health_stat##
execute as @a[scores={##hp_check_tick##=1,##has_died##=0}] run scoreboard players operation @s ##health## -= @s ##t2##
execute as @a[scores={##hp_check_tick##=1,##has_died##=1,##t2##=1..}] run scoreboard players operation @s ##health## = @s ##max_health##
scoreboard players set @a[scores={##hp_check_tick##=1,##has_died##=1,##t2##=1..}] ##has_died## 2

scoreboard players set @a[scores={##has_died##=2,##t2##=0}] ##has_died## 0

scoreboard players add @a ##regen_tick## 1

execute as @a run scoreboard players operation @s ##health## < @s ##max_health##

execute as @a run scoreboard players operation @s ##t0## = @s ##health##
scoreboard players set @a ##t1## 20
execute as @a run scoreboard players operation @s ##t0## *= @s ##t1##
execute as @a run scoreboard players operation @s ##t0## /= @s ##max_health##
scoreboard players add @a[scores={##health##=1..}] ##t0## 1

replaceitem entity @a[scores={##t0##=..0}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
kill @a[scores={##t0##=..0}]

replaceitem entity @a[scores={##t0##=1}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-19,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1

replaceitem entity @a[scores={##t0##=2}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-18,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=3}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-17,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=4}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-16,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=5}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-15,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=6}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-14,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=7}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-13,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=8}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-12,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=9}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-11,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=10}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-10,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=11}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-9,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=12}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-8,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=13}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-7,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=14}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-6,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=15}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-5,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=16}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-4,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=17}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-3,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=18}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-2,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=19}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-1,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1
    
replaceitem entity @a[scores={##t0##=20..}] armor.head ##health_item##{
    Enchantments:[
        ##health_item_enchants##
    ],
    Unbreakable: 1,
    AttributeModifiers:[
        {AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0,Operation:0,UUIDLeast:595045,UUIDMost:291484,Slot:"head"}
    ],
    display:{
        Name:##health_item_name##,
        Lore:##health_item_lore##
    }
    } 1

effect clear @a[scores={##hp_check_tick##=1}] minecraft:absorption
effect give @a[scores={##hp_check_tick##=1}] minecraft:absorption 1 ##absorption_hp## true
scoreboard players add @a ##has_died## 1
scoreboard players remove @a ##has_died## 1
scoreboard players add @a ##hp_check_tick## 1
scoreboard players set @a[scores={##hp_check_tick##=2}] ##hp_check_tick## 0
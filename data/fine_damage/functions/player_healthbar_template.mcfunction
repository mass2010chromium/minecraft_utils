scoreboard players add @s[scores={##hunger##=18..}] ##regen_tick## 1
scoreboard players set @s[scores={##hunger##=..17}] ##regen_tick## 0
scoreboard players operation @s ##t0## = @s ##regen_tick##
scoreboard players operation @s ##t0## -= @s ##regen_frequency##
execute as @s[scores={##t0##=0..}] run scoreboard players operation @s ##health## += @s ##regen_amount##
scoreboard players operation @s ##health## < @s ##max_health##
scoreboard players set @s[scores={##t0##=0..}] ##regen_tick## 0


execute as @s[scores={##hp_check_tick##=1}] run scoreboard players set @s ##t2## ##player_base_hp##
execute as @s[scores={##hp_check_tick##=1}] run scoreboard players operation @s ##t2## -= @s ##health_stat##
execute as @s[scores={##hp_check_tick##=1,##has_died##=0}] run scoreboard players operation @s ##health## -= @s ##t2##
execute as @s[scores={##hp_check_tick##=1,##has_died##=1,##t2##=1..}] run scoreboard players operation @s ##health## = @s ##max_health##
scoreboard players set @s[scores={##hp_check_tick##=1,##has_died##=1,##t2##=1..}] ##has_died## 2

scoreboard players set @s[scores={##has_died##=2,##t2##=0}] ##has_died## 0

replaceitem entity @s[scores={##health_fraction##=..0}] armor.head ##health_item##{
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
kill @a[scores={##health_fraction##=..0}]

replaceitem entity @s[scores={##health_fraction##=1}] armor.head ##health_item##{
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

replaceitem entity @s[scores={##health_fraction##=2}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=3}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=4}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=5}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=6}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=7}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=8}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=9}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=10}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=11}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=12}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=13}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=14}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=15}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=16}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=17}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=18}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=19}] armor.head ##health_item##{
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
    
replaceitem entity @s[scores={##health_fraction##=20..}] armor.head ##health_item##{
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

effect clear @s[scores={##hp_check_tick##=1}] minecraft:absorption
effect give @s[scores={##hp_check_tick##=1}] minecraft:absorption 1 ##absorption_hp## true
scoreboard players add @s ##has_died## 1
scoreboard players remove @s ##has_died## 1
scoreboard players add @s ##hp_check_tick## 1
scoreboard players set @s[scores={##hp_check_tick##=2}] ##hp_check_tick## 0
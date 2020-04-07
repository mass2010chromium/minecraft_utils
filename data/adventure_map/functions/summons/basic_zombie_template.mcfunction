summon minecraft:zombie ~ ~ ~ {Tags:["unprocessed"],Team:##enemies##}
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] ##health## 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] ##max_health## 50
scoreboard players set @e[tag=unprocessed,sort=nearest,limit=1] ##last_health## 50
data merge entity @e[tag=unprocessed,sort=nearest,limit=1] {
    CustomName:'"Weak Zombie"',
    CustomNameVisible:1,
    HandItems:[
        {id:"minecraft:rotten_flesh",Count:1b}, {}
    ],
    HandDropChances:[0.0f,0.0f],
    Health:200.0f,
    Attributes:[{Name:"generic.maxHealth",Base:200.0f}]
  }
tag @e[tag=unprocessed,sort=nearest,limit=1] add ##tracker##
tag @e[tag=unprocessed,sort=nearest,limit=1] remove unprocessed
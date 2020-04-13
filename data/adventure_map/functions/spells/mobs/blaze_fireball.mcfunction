scoreboard players operation @e[tag=blaze_fireball,sort=nearest,limit=1,tag=unprocessed] blaze.m_splash = @s blaze.m_splash
scoreboard players operation @e[tag=blaze_fireball,sort=nearest,limit=1,tag=unprocessed] blaze.p_splash = @s blaze.p_splash
scoreboard players set @e[tag=blaze_fireball,sort=nearest,limit=1,tag=unprocessed] fine_hp.tmp0 40
tag @e[tag=blaze_fireball,sort=nearest,limit=1,tag=unprocessed] add processed
tag @e[tag=blaze_fireball,sort=nearest,limit=1,tag=unprocessed] remove unprocessed
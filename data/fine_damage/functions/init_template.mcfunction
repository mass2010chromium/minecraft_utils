me Setting up fine_damage...
scoreboard objectives remove ##health_stat##
scoreboard objectives add ##health_stat## health

scoreboard objectives remove ##damage_tick##
scoreboard objectives add ##damage_tick## dummy

scoreboard objectives remove ##has_died##
scoreboard objectives add ##has_died## deathCount

scoreboard objectives remove ##health##
scoreboard objectives add ##health## dummy
scoreboard objectives setdisplay list ##health##
scoreboard objectives setdisplay belowname ##health##

scoreboard objectives remove ##max_health##
scoreboard objectives add ##max_health## dummy

scoreboard objectives remove ##regen_tick##
scoreboard objectives add ##regen_tick## dummy

scoreboard objectives remove ##regen_amount##
scoreboard objectives add ##regen_amount## dummy

scoreboard objectives remove ##hp_check_tick##
scoreboard objectives add ##hp_check_tick## dummy

scoreboard objectives remove ##t0##
scoreboard objectives add ##t0## dummy

scoreboard objectives remove ##t1##
scoreboard objectives add ##t1## dummy

scoreboard objectives remove ##t2##
scoreboard objectives add ##t2## dummy

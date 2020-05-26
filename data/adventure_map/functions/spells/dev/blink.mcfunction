scoreboard players set @a[scores={_blink=0}] blink 0
execute at @e[scores={blink=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"italic":false,"text":"Blink"}'}}}}] run tp @p ^ ^ ^20
execute at @a[scores={blink=1..}] run scoreboard players set @p blink 0
scoreboard players enable @a _blink
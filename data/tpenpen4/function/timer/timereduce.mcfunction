scoreboard players remove @e[tag=DummyPlayer] timer 1
scoreboard players operation @e[tag=DummyPlayer] timerT = @e[tag=DummyPlayer] timer
execute store result score @e[tag=DummyPlayer] minute run scoreboard players operation @e[tag=DummyPlayer] timerT /= @e[tag=DummyPlayer] dmin
scoreboard players operation @e[tag=DummyPlayer] timerT = @e[tag=DummyPlayer] timer
execute store result score @e[tag=DummyPlayer] timerT2 run scoreboard players operation @e[tag=DummyPlayer] timerT %= @e[tag=DummyPlayer] dmin
execute store result score @e[tag=DummyPlayer] second1 run scoreboard players operation @e[tag=DummyPlayer] timerT2 /= @e[tag=DummyPlayer] dsec
execute store result score @e[tag=DummyPlayer] timerT2 run scoreboard players operation @e[tag=DummyPlayer] timerT %= @e[tag=DummyPlayer] dmin
execute store result score @e[tag=DummyPlayer] second2 run scoreboard players operation @e[tag=DummyPlayer] timerT2 %= @e[tag=DummyPlayer] dsec
bossbar set otogakitimer:time name ["",{"text":"残り時間: ","color":"white","bold":true},{"score":{"name":"@e[tag=DummyPlayer,limit=1,sort=nearest]","objective":"minute"},"color":"white","bold":true},{"text":":","color":"white","bold":true},{"score":{"name":"@e[tag=DummyPlayer,limit=1,sort=nearest]","objective":"second1"},"color":"white","bold":true},{"score":{"name":"@e[tag=DummyPlayer,limit=1,sort=nearest]","objective":"second2"},"color":"white","bold":true}]
execute store result bossbar otogakitimer:time value run scoreboard players get @e[tag=DummyPlayer,limit=1] timer
execute unless entity @e[tag=DummyPlayer,scores={timer=0}] run schedule function tpenpen4:timer/timereduce 1s
execute if entity @e[tag=DummyPlayer,scores={timer=0}] run function tpenpen4:timer/finish
execute if entity @e[tag=DummyPlayer,scores={timer=0}] run bossbar set otogakitimer:time players
tellraw @a "hello"
execute store result score @a test run random value 2..10

# タイマー
gamerule sendCommandFeedback false
kill @e[tag=DummyPlayer]
execute as @r run summon minecraft:armor_stand ~ ~ ~ {Tags:[DummyPlayer],Marker:true,Invisible:true,NoGravity:true}
scoreboard objectives add timer dummy
scoreboard objectives add minute dummy
scoreboard objectives add second1 dummy
scoreboard objectives add second2 dummy
scoreboard objectives add timerT dummy
scoreboard objectives add timerT2 dummy
scoreboard objectives add dmin dummy
scoreboard objectives add dsec dummy
scoreboard players set @e[tag=DummyPlayer] dmin 60
scoreboard players set @e[tag=DummyPlayer] dsec 10
bossbar add otogakitimer:time "time"
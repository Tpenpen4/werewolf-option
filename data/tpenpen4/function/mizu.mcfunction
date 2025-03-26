#以下レバー連打
execute as @a if predicate tpenpen4:w run scoreboard players remove @p test 1
tellraw @p[scores={test=1..}] ["",{"text":"残り"},{"score":{"name":"@p","objective":"test"}},{"text":"回！"}]
tellraw @p[scores={test=0}] "クリアおめでとう！"
playsound minecraft:entity.player.levelup master @p[scores={test=0}] ~ ~ ~
tellraw @p[scores={test=-4..-1}] "もうクリアしてるやろお前"
tellraw @p[scores={test=-5}] "もうええわ"

# 以下、金ブロックスニーク
execute as @a unless predicate tpenpen4:gold_block run scoreboard players set @s shift 0
tellraw @p[scores={shift=30}] ["",{"text":"進捗：10%"}]
tellraw @p[scores={shift=60}] ["",{"text":"進捗：20%"}]
tellraw @p[scores={shift=90}] ["",{"text":"進捗：30%"}]
tellraw @p[scores={shift=120}] ["",{"text":"進捗：40%"}]
tellraw @p[scores={shift=150}] ["",{"text":"進捗：50%"}]
tellraw @p[scores={shift=180}] ["",{"text":"進捗：60%"}]
tellraw @p[scores={shift=210}] ["",{"text":"進捗：70%"}]
tellraw @p[scores={shift=240}] ["",{"text":"進捗：80%"}]
tellraw @p[scores={shift=270}] ["",{"text":"進捗：90%"}]
tellraw @p[scores={shift=300}] ["",{"text":"進捗：100%"}]
# 以下、矢を奪う

# アイテム検知
execute store success score #condition condition run kill @e[predicate=tpenpen4:diamond_block,nbt={Item:{id:"minecraft:poisonous_potato"}}]
execute if score #condition condition matches 1 run tellraw @a ["",{"text":"おお！ありがとう！"}]

# 以下、ネタ要素
execute as @a if predicate tpenpen4:neta run kill @a
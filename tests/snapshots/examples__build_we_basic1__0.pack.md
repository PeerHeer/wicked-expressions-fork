# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 12,
    "description": ""
  }
}
```

### demo

`@function demo:main`

```mcfunction
scoreboard players set $foo myobjectivename 10
scoreboard players set $wefwef anotherone 124
scoreboard players operation $testplayer anotherone = $foo myobjectivename
scoreboard players operation $testplayer anotherone *= $1000 bolt.expr.const
scoreboard players set $testplayer anotherone 1234
scoreboard players operation $testplayer anotherone /= $345 bolt.expr.const
execute unless score $testplayer anotherone matches 69 if score foo tmp matches 10 run say true
execute if score $testplayer anotherone matches 69 if score foo tmp matches 10 run say false
scoreboard players operation $temp reapermc.wicked_expressions = $testplayer anotherone
execute if score $temp reapermc.wicked_expressions matches 1 if score foo tmp matches 10 run say exists
execute if score $temp reapermc.wicked_expressions matches 0 if score foo tmp matches 10 run say doesnt exist
data modify storage test:test somenbtpath set value 1234
execute store result score $i0 bolt.expr.temp run data get storage test:test somenbtpath 1
scoreboard players add $i0 bolt.expr.temp 10
execute store result storage test:test somenbtpath int 1 run scoreboard players get $i0 bolt.expr.temp
execute store result score $temp reapermc.wicked_expressions run data get storage test:test somenbtpath 1
execute if score $temp reapermc.wicked_expressions matches 0 if score foo tmp matches 10 run say doesnt exist
execute if score $temp reapermc.wicked_expressions matches 1 if score foo tmp matches 10 run say exists
data modify storage reapermc:wicked_expressions temp set from storage test:test somenbtpath
execute store success score $is_not_equal reapermc.wicked_expressions run data modify storage reapermc:wicked_expressions temp set value 69
execute if score $is_not_equal reapermc.wicked_expressions matches 0 if score foo tmp matches 10 run say true
execute if score $is_not_equal reapermc.wicked_expressions matches 1 if score foo tmp matches 10 run say false
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_basic1:init_expressions",
    "we_basic1:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_basic1

`@function we_basic1:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_basic1:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function we_basic1:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add myobjectivename dummy
scoreboard objectives add anotherone dummy
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function we_basic1:init_expressions`

```mcfunction
scoreboard objectives add bolt.expr.temp dummy
scoreboard objectives add bolt.expr.temp dummy
scoreboard objectives add bolt.expr.const dummy
scoreboard objectives add bolt.expr.const dummy
scoreboard players set $1000 bolt.expr.const 1000
scoreboard players set $1000 bolt.expr.const 1000
scoreboard players set $345 bolt.expr.const 345
scoreboard players set $345 bolt.expr.const 345
```

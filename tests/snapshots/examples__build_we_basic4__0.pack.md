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
scoreboard players operation $score_0 objective_0 = $test objective_0
execute if score $score_0 objective_0 matches 5 run say hello!
execute if score $score_0 objective_0 matches 10 run say hello!
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_basic4:reapermc/wicked_expressions/safe_load"
  ]
}
```

### we_basic4

`@function we_basic4:reapermc/wicked_expressions/safe_load`

```mcfunction
function we_basic4:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function we_basic4:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add objective_0 dummy
scoreboard objectives add reapermc.wicked_expressions dummy
```

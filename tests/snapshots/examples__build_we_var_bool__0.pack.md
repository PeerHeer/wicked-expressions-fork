# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 10,
    "description": ""
  }
}
```

### demo

`@function demo:main`

```mcfunction
scoreboard players operation $we_var_bool#int$0 wicked_expressions = $test test
execute store result score $we_var_bool#int$0 wicked_expressions run data get storage test:test test 1
scoreboard players set $we_var_bool#int$0 wicked_expressions 1
scoreboard players operation $temp wicked_expressions = $we_var_bool#int$0 wicked_expressions
execute if score $temp wicked_expressions matches 1 run say no
scoreboard players operation $temp wicked_expressions = $we_var_bool#int$0 wicked_expressions
execute if score $temp wicked_expressions matches 0 run say yes
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "we_var_bool:wicked_expressions/create_objectives"
  ]
}
```

### we_var_bool

`@function we_var_bool:wicked_expressions/create_objectives`

```mcfunction
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add test dummy {"text": "test", "color": "aqua"}
```

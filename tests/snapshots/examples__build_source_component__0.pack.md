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

### wicked_expressions

`@function wicked_expressions:scoreboard_setup`

```mcfunction
help # placeholder contents
scoreboard objectives add wicked_expressions dummy {"text": "wicked_expressions", "color": "aqua"}
scoreboard objectives add wicked_expressions.datastash dummy {"text": "wicked_expressions.datastash", "color": "aqua"}
scoreboard objectives add obj.temp dummy {"text": "obj.temp", "color": "aqua"}
```

### test

`@function test:main`

```mcfunction
tellraw @a ["my score: ", {"score": {"name": "@s", "objective": "obj.temp"}, "bold": true}]
tellraw @a ["items: ", {"nbt": "Inventory", "entity": "@s", "color": "green"}]
tellraw @a ["message: ", {"nbt": "message", "storage": "example:main", "interpret": true, "clickEvent": {"action": "run_command", "value": "say i like bolt expressions"}}]
tellraw @a {"nbt": "Text1", "block": "~ ~ ~"}
tellraw @a {"text": "hello world"}
tellraw @a {"text": "hi", "extra": [{"nbt": "Items", "block": "~ ~ ~"}]}
tellraw @a [{"nbt": "Text1", "block": "~ ~ ~"}, {"nbt": "Text2", "block": "~ ~ ~"}, {"text": "hi", "extra": [{"nbt": "Text3", "block": "~ ~ ~"}, {"text": "nested"}]}]
tellraw @a {"invalid": {"nbt": "value", "storage": "example:main"}, "whatever": [{"score": {"name": "$a", "objective": "obj.temp"}}, {"score": {"name": "$b", "objective": "obj.temp"}}, {"score": {"name": "$c", "objective": "obj.temp"}}]}
tellraw @a [{"score": {"name": "$foo", "objective": "obj.temp"}}, {"score": {"name": "$bar", "objective": "obj.temp"}}, {"score": {"name": "$baz", "objective": "obj.temp"}}]
tellraw @a [{"score": {"name": "$value", "objective": "obj.temp"}}, {"nbt": "Items[0]", "block": "~ ~ ~"}, {"nbt": "message", "storage": "example:main", "interpret": true}]
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "wicked_expressions:scoreboard_setup"
  ]
}
```

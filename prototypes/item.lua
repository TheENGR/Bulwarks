--item.lua

local cobbleWall = table.deepcopy(data.raw["wall"]["stone-wall"])

cobbleWall.name = "cobblestone-wall"
cobbleWall.max_health = 20
cobbleWall.minable.result = "cobblestone-wall"

local recipe = table.deepcopy(data.raw.recipe["stone-wall"])
recipe.enabled = false
recipe.name = "cobblestone-wall"
recipe.ingredients = {{"stone",10},}
recipe.result = "cobblestone-wall"

data:extend{cobbleWall,recipe}

local cobbleWall = util.table.deepcopy(data.raw["item"]["stone-wall"])
cobbleWall.name = "cobblestone-wall"
cobbleWall.place_result = "cobblestone-wall"
data:extend({cobbleWall})

table.insert(data.raw["technology"]["basic-mining"].effects, {type="unlock-recipe", recipe="cobblestone-wall"})
data.raw["technology"]["basic-mining"].hidden=true
<recipetype:summoningrituals:altar>.addJsonRecipe("prisnautilus", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" },
    "outputs": [
            { "item": "contenttweaker:prisnautilus_summoner" },
            { "mob": "predators:prisnautilus" }
           ],
    "inputs": [
	{ "ingredient": { "item": "ecologics:seashell" }, "count": 3 },
	{ "ingredient": { "item": "upgrade_aquatic:prismarine_rod" }, "count": 4 },
    { "ingredient": { "item": "minecraft:heart_of_the_sea" }, "count": 1 },
    { "ingredient": { "item": "upgrade_aquatic:nautilus_bucket" }, "count": 1 },
        { "ingredient": { "item": "minecraft:diamond" }, "count": 32 }
    ],

    	"recipe_time": 200,
    	"block_below": { "block": "contenttweaker:prisnautilus_core" },
	"day_time": "NIGHT",
   	"weather": "RAIN"
}
);


<recipetype:summoningrituals:altar>.addJsonRecipe("prisnautilus-alt", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" },
    "outputs": [
            { "item": "contenttweaker:prisnautilus_summoner" },
            { "mob": "predators:prisnautilus" }
           ],
    "inputs": [
	{ "item": "contenttweaker:prisnautilus_summoner" }
    ],
    "recipe_time": 200,
    "block_below": { "block": "contenttweaker:prisnautilus_core" },
	"day_time": "NIGHT",
   	"weather": "RAIN"
}
);


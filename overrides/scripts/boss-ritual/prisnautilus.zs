<recipetype:summoningrituals:altar>.addJsonRecipe("prisnautilus", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" },
    "outputs": [
            { "item": "predators:refined_prismarine" },
            { "mob": "predators:prisnautilus" }
           ],
    "inputs": [
	{ "ingredient": { "item": "ecologics:seashell" }, "count": 3 },
	{ "ingredient": { "item": "upgrade_aquatic:prismarine_rod" }, "count": 4 },
    { "ingredient": { "item": "minecraft:heart_of_the_sea" }, "count": 1 },
        { "ingredient": { "item": "minecraft:diamond" }, "count": 32 }
    ],
    "sacrifices": { 
        "mobs": [{ "mob": "upgrade_aquatic:nautilus", "count": 3 }],
        "region": { "x": 3, "y": 3, "z": 3 }
    },
    	"recipe_time": 200,
    	"block_below": { "block": "upgrade_aquatic:prismarine_coral_block" },
	"day_time": "NIGHT",
   	"weather": "RAIN"
}
);

/*
<recipetype:summoningrituals:altar>.addJsonRecipe("prisnautilus-alt", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" },
    "outputs": [
            { "item": "predators:refined_prismarine" },
            { "mob": "predators:prisnautilus" }
           ],
    "inputs": [
	{ "item": "predators:refined_prismarine" }
    ],
    "recipe_time": 200,
    "block_below": { "block": "upgrade_aquatic:prismarine_coral_block" },
	"day_time": "NIGHT",
   	"weather": "RAIN"
}
);

*/
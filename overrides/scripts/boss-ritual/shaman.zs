<recipetype:summoningrituals:altar>.addJsonRecipe("shaman", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
	//	{ "item": "predators:relics_of_the_ancient_gods" },
        { "mob": "predators:shaman_of_moonlight" },
	{ 
		"mob": "predators:follower_of_moonlight", 
		"count": 2,
		"spread": { "x": 10, "y": 0, "z": 10 } 
	}
    ],
    "inputs": [	
	{ "ingredient": { "item": "galosphere:glow_flare" }, "count": 32 },
	{ "ingredient": { "item": "celestisynth:zephyr_deposit" }, "count": 32 },
        { "ingredient": { "item": "celestisynth:lunar_stone" }, "count": 32 },
	{ "ingredient": { "item": "minecraft:diamond" }, "count": 32 },
	{ "ingredient": { "item": "minecraft:spyglass" }, "count": 1 },
	{ "ingredient": { "item": "bosses_of_mass_destruction:soul_star" }, "count": 8 }
    ],  
    	"recipe_time": 200,
   	"block_below": { "block": "minecraft:glowstone" },
	"day_time": "NIGHT",
	"weather": "CLEAR"
}
);

/*
<recipetype:summoningrituals:altar>.addJsonRecipe("shaman-alt", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
		{ "item": "predators:relics_of_the_ancient_gods" },
        { "mob": "predators:shaman_of_moonlight" },
	{ 
		"mob": "predators:follower_of_moonlight", 
		"count": 2,
		"spread": { "x": 10, "y": 0, "z": 10 } 
	}
    ],
    "inputs": [	
	{ "item": "predators:relics_of_the_ancient_gods" },
    ],  
    	"recipe_time": 200,
   	"block_below": { "block": "minecraft:glowstone" },
	"day_time": "NIGHT",
	"weather": "CLEAR"
}
);
*/
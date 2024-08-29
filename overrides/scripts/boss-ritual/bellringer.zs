var nightVision = <item:minecraft:potion>.withTag({Potion: "minecraft:night_vision"}) | <item:minecraft:potion>.withTag({Potion: "minecraft:long_night_vision"});


<recipetype:summoningrituals:altar>.addJsonRecipe("bellringer", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
		{ "item": "contenttweaker:bell_ringer_summoner" },
        { "mob": "meetyourfight:bellringer" },
	{ 
		"mob": "dungeons_mobs:wraith", 
		"count": 2,
		"spread": { "x": 10, "y": 0, "z": 10 } 
	}
    ],
    "inputs": [	
    	{ "ingredient": { "item": "create:haunted_bell" }, "count": 1 },
	    { "ingredient": { "item": "galosphere:spectre_flare" }, "count": 16 },
        { "ingredient": { "item": "minecraft:spectral_arrow" }, "count": 16 },
	    { "ingredient": { "item": "minecraft:diamond" }, "count": 32 },
	    { "ingredient": { "item": "galosphere:allurite_shard" }, "count": 16 },
		{ "ingredient": { "item": "galosphere:bottle_of_spectre" }, "count": 1 },
	    { "ingredient": nightVision, "count": 1 }
    ],  
   	"recipe_time": 200,
   	"block_below": { "block": "contenttweaker:bell_ringer_core" },
	"day_time": "NIGHT"
}
);


<recipetype:summoningrituals:altar>.addJsonRecipe("bellringer-alt", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
		{ "item": "contenttweaker:bell_ringer_summoner" },
        { "mob": "meetyourfight:bellringer" },
	{ 
		"mob": "dungeons_mobs:wraith", 
		"count": 2,
		"spread": { "x": 10, "y": 0, "z": 10 } 
	}
    ],
    "inputs": [	
    	{ "item": "contenttweaker:bell_ringer_summoner" }
    ],  
	"recipe_time": 200,
   	"block_below": { "block": "contenttweaker:bell_ringer_core" },
	"day_time": "NIGHT"
}
);


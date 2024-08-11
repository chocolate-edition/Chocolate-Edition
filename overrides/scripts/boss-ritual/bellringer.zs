var nightVision = <item:minecraft:potion>.withTag({Potion: "minecraft:night_vision"}) | <item:minecraft:potion>.withTag({Potion: "minecraft:long_night_vision"});


<recipetype:summoningrituals:altar>.addJsonRecipe("bellringer", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
		//{ "item": "meetyourfight:haunted_bell" },
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
	    { "ingredient": nightVision, "count": 1 }
    ],  
	"sacrifices": { 
       		"mobs": [
			{ "mob": "galosphere:spectre", "count": 1 }
		],

        	"region": { "x": 5, "y": 5, "z": 5 }
   	 },
    	"recipe_time": 200,
   	"block_below": { "block": "galosphere:allurite_lamp" },
	"day_time": "NIGHT"
}
);

/*
<recipetype:summoningrituals:altar>.addJsonRecipe("bellringer-alt", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
		{ "item": "meetyourfight:haunted_bell" },
        { "mob": "meetyourfight:bellringer" },
	{ 
		"mob": "dungeons_mobs:wraith", 
		"count": 2,
		"spread": { "x": 10, "y": 0, "z": 10 } 
	}
    ],
    "inputs": [	
    	{ "item": "meetyourfight:haunted_bell" }
    ],  
	"recipe_time": 200,
   	"block_below": { "block": "galosphere:allurite_lamp" },
	"day_time": "NIGHT"
}
);
*/

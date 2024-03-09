var freezeArrow = <item:minecraft:tipped_arrow>.withTag({Potion: "rottencreatures:freeze"}) | <item:minecraft:tipped_arrow>.withTag({Potion: "rottencreatures:long_freeze"}) | <item:minecraft:tipped_arrow>.withTag({Potion: "rottencreatures:strong_freeze"});

<recipetype:summoningrituals:altar>.addJsonRecipe("huntsman", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
{ "item": "minecraft:archer_pottery_sherd" }, 
        { "mob": "predators:huntsman" },
	{ 
		"mob": "predators:hunter", 
		"count": 3,
		"spread": { "x": 10, "y": 0, "z": 10 } 
	},
	{ 
		"mob": "predators:ice_hound", 
		"count": 10,
		"spread": { "x": 10, "y": 0, "z": 10 }
	}
    ],
    "inputs": [	
    	{ "ingredient": { "item": "born_in_chaos_v1:thread_on_the_bone" }, "count": 1 },
	    { "ingredient": { "item": "minecraft:snow_block" }, "count": 16 },
        { "ingredient": { "item": "minecraft:ice" }, "count": 16 },
	    { "ingredient": { "item": "minecraft:diamond" }, "count": 32 },
	    { "ingredient": { "item": "minecraft:bow" }, "count": 1 },
	    { "ingredient": freezeArrow, "count": 32 }
    ],  
	"sacrifices": { 
       		"mobs": [
			{ "mob": "minecraft:wolf", "count": 3 },
			{ "mob": "minecraft:stray", "count": 1 }
		],

        	"region": { "x": 5, "y": 5, "z": 5 }
   	 },
    	"recipe_time": 200,
   	"block_below": { "block": "minecraft:powder_snow" },
	"day_time": "NIGHT"
}
);

<recipetype:summoningrituals:altar>.addJsonRecipe("huntsman-alt", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
{ "item": "minecraft:archer_pottery_sherd" }, 
        { "mob": "predators:huntsman" },
	{ 
		"mob": "predators:hunter", 
		"count": 3,
		"spread": { "x": 10, "y": 0, "z": 10 } 
	},
	{ 
		"mob": "predators:ice_hound", 
		"count": 10,
		"spread": { "x": 10, "y": 0, "z": 10 }
	}
    ],
    "inputs": [	
    	{ "item": "minecraft:archer_pottery_sherd" }
    ],  

    "recipe_time": 200,
   	"block_below": { "block": "minecraft:powder_snow" },
	"day_time": "NIGHT"
}
);
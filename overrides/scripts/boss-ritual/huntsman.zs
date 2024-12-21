//var freezeArrow = <item:minecraft:tipped_arrow>.withTag({Potion: "rottencreatures:freeze"}) | <item:minecraft:tipped_arrow>.withTag({Potion: "rottencreatures:long_freeze"}) | <item:minecraft:tipped_arrow>.withTag({Potion: "rottencreatures:strong_freeze"});

<recipetype:summoningrituals:altar>.addJsonRecipe("huntsman", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
		{ "item": "contenttweaker:huntsman_summoner" }, 
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
    	{ "ingredient": { "item": "minecraft:bone" }, "count": 16 },
	    { "ingredient": { "item": "minecraft:snow_block" }, "count": 16 },
        { "ingredient": { "item": "minecraft:ice" }, "count": 16 },
	    { "ingredient": { "item": "minecraft:diamond" }, "count": 32 },
	    { "ingredient": { "item": "minecraft:bow" }, "count": 1 },
	    { "ingredient": { "item": "minecraft:arrow" }, "count": 32 },
		{ "ingredient": { "item": "minecraft:skeleton_skull" }, "count": 1 }
		
    ],  
	
    	"recipe_time": 200,
   	"block_below": { "block": "contenttweaker:huntsman_core" },
	"day_time": "NIGHT"
}
);


<recipetype:summoningrituals:altar>.addJsonRecipe("huntsman-alt", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
{ "item": "contenttweaker:huntsman_summoner" }, 
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
    	{ "item": "contenttweaker:huntsman_summoner" }
    ],  

    "recipe_time": 200,
   	"block_below": { "block": "contenttweaker:huntsman_core" },
	"day_time": "NIGHT"
}
);

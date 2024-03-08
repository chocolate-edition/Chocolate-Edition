var chemical = <item:minecraft:splash_potion>.withTag({Potion: "mutantmonsters:chemical_x"});

<recipetype:summoningrituals:altar>.addJsonRecipe("mutant", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
	{ 
		"mob": "mutantmonsters:mutant_zombie",
		"spread": { "x": 10, "y": 0, "z": 10 } 
	},
    { 
		"mob": "mutantmonsters:mutant_creeper",
		"spread": { "x": 10, "y": 0, "z": 10 } 
	},
    { 
		"mob": "mutantmonsters:mutant_skeleton",
		"spread": { "x": 10, "y": 0, "z": 10 } 
	},
    { 
		"mob": "mutantmonsters:mutant_enderman",
		"spread": { "x": 10, "y": 0, "z": 10 } 
	}
	
    ],
    "inputs": [	
    	{ "ingredient": { "item": "minecraft:ender_pearl" }, "count": 32 },
	    { "ingredient": { "item": "minecraft:rotten_flesh" }, "count": 32 },
        { "ingredient": { "item": "minecraft:bone" }, "count": 32 },
	    { "ingredient": { "item": "minecraft:gunpowder" }, "count": 32 },
	    { "ingredient": { "item": "minecraft:diamond" }, "count": 32 },
        { "ingredient": chemical , "count": 1 }
	   
    ],  
	"sacrifices": { 
       		"mobs": [
			{ "mob": "minecraft:zombie", "count": 1 },
            { "mob": "minecraft:skeleton", "count": 1 },
            { "mob": "minecraft:creeper", "count": 1 },
			{ "mob": "minecraft:enderman", "count": 1 }
		],

        	"region": { "x": 5, "y": 5, "z": 5 }
   	 },
    	"recipe_time": 200,
   	"block_below": { "block": "minecraft:obsidian" },
	"day_time": "NIGHT",
    "weather": "THUNDER"
}
);
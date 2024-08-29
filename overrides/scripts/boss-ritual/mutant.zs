var chemical = <item:minecraft:splash_potion>.withTag({Potion: "mutantmonsters:chemical_x"});

var skeleton = <item:minecraft:bone> | <item:minecraft:arrow>;

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
    	{ "ingredient": { "item": "minecraft:ender_pearl" }, "count": 64 },
	    { "ingredient": { "item": "minecraft:rotten_flesh" }, "count": 64 },
        { "ingredient": skeleton, "count": 64 },
	    { "ingredient": { "item": "minecraft:gunpowder" }, "count": 64 },
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

        	"region": { "x": 10, "y": 10, "z": 10 }
   	 },
    	"recipe_time": 200,
   	"block_below": { "block": "minecraft:bedrock" },
	"day_time": "NIGHT",
    "weather": "THUNDER"
}
);
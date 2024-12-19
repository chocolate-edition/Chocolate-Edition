var chemical = <item:minecraft:splash_potion>.withTag({Potion: "mutantmonsters:chemical_x"});

var infection = <item:minecraft:potion>.withTag({Potion: "infernalexp:infection"}) | <item:minecraft:potion>.withTag({Potion: "infernalexp:long_infection"}) | <item:minecraft:potion>.withTag({Potion: "infernalexp:strong_infection"});

<recipetype:summoningrituals:altar>.addJsonRecipe("mutant-all", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
	{ 
		"mob": "mutantmore:mutant_wither_skeleton",
		"spread": { "x": 20, "y": 0, "z": 20 } 
	},
    { 
		"mob": "mutantmore:mutant_blaze",
		"spread": { "x": 20, "y": 0, "z": 20 } 
	},
    { 
		"mob": "mutantmore:mutant_shulker",
		"spread": { "x": 20, "y": 0, "z": 20 } 
	},
	{ 
		"mob": "mutantmonsters:mutant_zombie",
		"spread": { "x": 20, "y": 0, "z": 20 } 
	},
    { 
		"mob": "mutantmonsters:mutant_creeper",
		"spread": { "x": 20, "y": 0, "z": 20 } 
	},
    { 
		"mob": "mutantmonsters:mutant_skeleton",
		"spread": { "x": 20, "y": 0, "z": 20 } 
	},
    { 
		"mob": "mutantmonsters:mutant_enderman",
		"spread": { "x": 20, "y": 0, "z": 20 } 
	},
    { 
		"mob": "mutantmore:fire_slash",
		"count": 10,
		"spread": { "x": 15, "y": 0, "z": 15 },
		"offset": { "x": 0, "y": -3, "z": 0 } 
		
	}
	
    ],
    "inputs": [	
    	{ "ingredient": { "item": "minecraft:netherite_ingot" }, "count": 1 },
	    { "ingredient": infection , "count": 1 },
        { "ingredient": { "item": "minecraft:diamond" }, "count": 32 },
		{ "ingredient": { "item": "mutantmore:compound_z" }, "count": 1 },
	    { "ingredient": chemical, "count": 1 },
        { "ingredient": { "item": "mutantmore:formula_y" }, "count": 1 }
	
    ],  
	"sacrifices": { 
       		"mobs": [
			{ "mob": "minecraft:zombie", "count": 1 },
            { "mob": "minecraft:skeleton", "count": 1 },
            { "mob": "minecraft:creeper", "count": 1 },
			{ "mob": "minecraft:enderman", "count": 1 },
			{ "mob": "minecraft:wither_skeleton", "count": 1 },
            { "mob": "minecraft:shulker", "count": 1 },
            { "mob": "minecraft:blaze", "count": 1 }
		],

        	"region": { "x": 10, "y": 10, "z": 10 }
   	 },
    	"recipe_time": 200,
   	"block_below": { "block": "minecraft:bedrock" },
	"day_time": "NIGHT",
    "weather": "THUNDER"
}
);
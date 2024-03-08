<recipetype:summoningrituals:altar>.addJsonRecipe("mutant-more", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
	{ 
		"mob": "mutantmore:mutant_wither_skeleton",
		"spread": { "x": 10, "y": 0, "z": 10 } 
	},
    { 
		"mob": "mutantmore:mutant_blaze",
		"spread": { "x": 10, "y": 0, "z": 10 } 
	},
    { 
		"mob": "mutantmore:mutant_shulker",
		"spread": { "x": 10, "y": 0, "z": 10 } 
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
	    { "ingredient": { "item": "minecraft:shulker_shell" }, "count": 16 },
        { "ingredient": { "item": "minecraft:blaze_rod" }, "count": 32 },
		{ "ingredient": { "item": "minecraft:diamond" }, "count": 32 },
	    { "ingredient": { "item": "minecraft:wither_skeleton_skull" }, "count": 1 },
        { "ingredient": { "item": "mutantmore:formula_y" }, "count": 1 }
	
    ],  
	"sacrifices": { 
       		"mobs": [
			{ "mob": "minecraft:wither_skeleton", "count": 1 },
            { "mob": "minecraft:shulker", "count": 1 },
            { "mob": "minecraft:blaze", "count": 1 }
		],

        	"region": { "x": 5, "y": 5, "z": 5 }
   	 },
    	"recipe_time": 200,
   	"block_below": { "block": "minecraft:obsidian" },
	"day_time": "NIGHT",
    "weather": "THUNDER"
}
);
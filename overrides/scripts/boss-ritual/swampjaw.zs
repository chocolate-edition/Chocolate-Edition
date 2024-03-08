var myIngredient = <item:aquamirae:sharp_bones> | <item:aquaculture:fish_bones> | <item:alexsmobs:fish_bones> | <item:netherdepthsupgrade:bonefish>;

var myIngredient2 = <item:aquaculture:minnow> | <item:aquaculture:worm>;

var myIngredient3 = <item:aquaculture:iron_hook> | <item:aquaculture:gold_hook> | <item:aquaculture:diamond_hook> | <item:aquaculture:light_hook> |
 <item:aquaculture:heavy_hook> | <item:aquaculture:double_hook> | <item:aquaculture:redstone_hook> | <item:aquaculture:note_hook> | <item:aquaculture:nether_star_hook>;

<recipetype:summoningrituals:altar>.addJsonRecipe("spawmjaw", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
        { "mob": "meetyourfight:swampjaw" },
	{ 
		"mob": "meetyourfight:swamp_mine", 
		"count": 5,
		"spread": { "x": 10, "y": 0, "z": 10 } 
	}
    ],
    "inputs": [	
    	{ "ingredient": { "item": "minecraft:lily_pad" }, "count": 16 },
	    { "ingredient": myIngredient3, "count": 16 },
        { "ingredient": myIngredient2, "count": 16 },
	    { "ingredient": { "item": "minecraft:diamond" }, "count": 16 },
	    { "ingredient": { "item": "minecraft:bone" }, "count": 32 },
	    { "ingredient": myIngredient, "count": 1 }
    ],  
    "recipe_time": 200,
   	"block_below": { "block": "minecraft:mud" },
	"day_time": "NIGHT",
    "weather": "THUNDER"
}
);
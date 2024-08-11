var fishBones = <item:aquamirae:sharp_bones> | <item:aquaculture:fish_bones> | <item:alexsmobs:fish_bones> | <item:netherdepthsupgrade:bonefish>;

var Bait = <item:aquaculture:minnow> | <item:aquaculture:worm>;

var Hooks = <item:aquaculture:iron_hook> | <item:aquaculture:gold_hook> | <item:aquaculture:diamond_hook> | <item:aquaculture:light_hook> |
 <item:aquaculture:heavy_hook> | <item:aquaculture:double_hook> | <item:aquaculture:redstone_hook> | <item:aquaculture:note_hook> | <item:aquaculture:nether_star_hook>;

<recipetype:summoningrituals:altar>.addJsonRecipe("spawmjaw", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
		{ "item": "meetyourfight:fossil_bait" }, 
        { "mob": "meetyourfight:swampjaw" },
	{ 
		"mob": "meetyourfight:swamp_mine", 
		"count": 5,
		"spread": { "x": 10, "y": 0, "z": 10 } 
	}
    ],
    "inputs": [	
    	{ "ingredient": { "item": "minecraft:lily_pad" }, "count": 16 },
	    { "ingredient": Hooks, "count": 1 },
        { "ingredient": Bait, "count": 16 },
	    { "ingredient": { "item": "minecraft:diamond" }, "count": 32 },
	    { "ingredient": { "item": "minecraft:bone" }, "count": 32 },
	    { "ingredient": fishBones, "count": 1 }
    ],  
    "recipe_time": 200,
   	"block_below": { "block": "minecraft:mud" },
	"day_time": "NIGHT",
    "weather": "THUNDER"
}
);

/*
<recipetype:summoningrituals:altar>.addJsonRecipe("spawmjaw-alt", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
		{ "item": "meetyourfight:fossil_bait" }, 
        { "mob": "meetyourfight:swampjaw" },
	{ 
		"mob": "meetyourfight:swamp_mine", 
		"count": 5,
		"spread": { "x": 10, "y": 0, "z": 10 } 
	}
    ],
    "inputs": [	
    	{ "item": "meetyourfight:fossil_bait" }
    ],  
    "recipe_time": 200,
   	"block_below": { "block": "minecraft:mud" },
	"day_time": "NIGHT",
    "weather": "THUNDER"
}
);
*/

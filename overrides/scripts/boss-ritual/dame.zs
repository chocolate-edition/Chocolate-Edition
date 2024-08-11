<recipetype:summoningrituals:altar>.addJsonRecipe("dame", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 

        { "item": "meetyourfight:devils_ante" }, 
        { "mob": "meetyourfight:dame_fortuna" }
    ],
    "inputs": [	
    	  { "ingredient": { "item": "minecraft:totem_of_undying" }, "count": 1 },
	    { "ingredient": { "item": "minecraft:netherrack" }, "count": 16 },
        { "ingredient": { "item": "minecraft:nether_wart_block" }, "count": 16 },
	    { "ingredient": { "item": "minecraft:diamond" }, "count": 32 },
        { "ingredient": { "item": "minecraft:nether_wart" }, "count": 4 },
	    { "ingredient": { "item": "minecraft:red_mushroom" }, "count": 32 }
	  
    ],  
    "recipe_time": 200,
   	"block_below": { "block": "minecraft:red_mushroom_block" },
	"day_time": "NIGHT"
}
);

/*
<recipetype:summoningrituals:altar>.addJsonRecipe("dame-alt", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 

        { "item": "meetyourfight:devils_ante" }, 
        { "mob": "meetyourfight:dame_fortuna" }
    ],
    "inputs": [	
    	{ "item": "meetyourfight:devils_ante" }
	  
    ],  
    "recipe_time": 200,
   	"block_below": { "block": "minecraft:red_mushroom_block" },
	"day_time": "NIGHT"
}
);
*/
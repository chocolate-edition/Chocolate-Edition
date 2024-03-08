<recipetype:summoningrituals:altar>.addJsonRecipe("rosalyne", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
        { "mob": "meetyourfight:rosalyne" },
    ],
    "inputs": [	
    	  { "ingredient": { "item": "iter_rpg:voidquartz_shard" }, "count": 16 },
	    { "ingredient": { "item": "iter_rpg:void_quartz_block" }, "count": 16 },
        { "ingredient": { "item": "minecraft:crying_obsidian" }, "count": 16 },
	    { "ingredient": { "item": "minecraft:diamond" }, "count": 32 },
        { "ingredient": { "item": "iter_rpg:ametrine_ingot" }, "count": 4 },
	    { "ingredient": { "item": "iter_rpg:ametrine_shard" }, "count": 32 }
	  
    ],  
    "recipe_time": 200,
   	"block_below": { "block": "iter_rpg:polished_ametrine_block" },
	"day_time": "NIGHT"
}
);
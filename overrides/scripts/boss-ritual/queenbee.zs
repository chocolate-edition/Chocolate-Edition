/*

var bugPheromones = <item:minecraft:potion>.withTag({Potion: "alexsmobs:bug_pheromones"}) | <item:minecraft:potion>.withTag({Potion: "alexsmobs:long_bug_pheromones"});

<recipetype:summoningrituals:altar>.addJsonRecipe("queenbee", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
		//{ "item": "create_confectionery:honey_candy" }, 
        { "mob": "queen_bee:queen_bee" }
    ],
    "inputs": [	
    	{ "ingredient": { "item": "minecraft:honeycomb" }, "count": 1 },
	    { "ingredient": { "item": "minecraft:honey_block" }, "count": 16 },
	    { "ingredient": { "item": "minecraft:diamond" }, "count": 32},
	    { "ingredient": bugPheromones, "count": 1 },
	    { "ingredient": { "item": "create:honeyed_apple" }, "count": 16 }
    ],  
	"sacrifices": { 
       		"mobs": [
			{ "mob": "minecraft:bee", "count": 3 }
		],

        	"region": { "x": 5, "y": 5, "z": 5 }
   	 },
    	"recipe_time": 200,
   	"block_below": { "block": "minecraft:bee_nest" },
	"day_time": "NIGHT"
}
);


<recipetype:summoningrituals:altar>.addJsonRecipe("queenbee-alt", {
    "type": "summoningrituals:altar",
    "catalyst": { "item": "iter_rpg:spawner_fragment" }, 
    "outputs": [ 
		{ "item": "create_confectionery:honey_candy" }, 
        { "mob": "queen_bee:queen_bee" }
    ],
    "inputs": [	
    	{ "item": "create_confectionery:honey_candy" }, 
    ],  
    "recipe_time": 200,
   	"block_below": { "block": "minecraft:bee_nest" },
	"day_time": "NIGHT"
}
);
*/
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.EntityInteractEvent;
import crafttweaker.api.util.InteractionHand;
import crafttweaker.api.text.Component;
import mods.gamestages.StageHelper;
import mods.gamestages.events.GameStageAdded;
import mods.gamestages.events.GameStageRemoved;
import mods.gamestages.events.GameStageCleared;
import mods.itemstages.ItemStages;
import mods.itemstages.Restriction;
import mods.dimstages.DimensionStages;
import crafttweaker.api.advancement.Advancement;
import mods.jeitweaker.Jei;
import crafttweaker.api.text.Component;
import mods.jeitweaker.ingredient.JeiIngredient;
import crafttweaker.api.game.Server;
import crafttweaker.api.world.ServerLevel;

#priority -10

// Crafting Table and Eye stages moved to FTB Quests

var eyesArray = [
	"witch_eye",
	"magical_eye",
	"rogue_eye",
	"evil_eye",
	"cursed_eye",
	"corrupted_eye",
	"cold_eye",
	"old_eye",
	"lost_eye",
	"nether_eye",
	"guardian_eye",
	"undead_eye",
	"exotic_eye",
	"cryptic_eye",
	"black_eye",
	"wither_eye"
] as string[];

CTEventManager.register<GameStageAdded>((event) => {
    var count = 0;
	// counts the eyes lol
	for eye in eyesArray {
		if(event.player.hasGameStage(eye)) {count++;}
	}
	
	
	if (count==16 && !event.player.hasGameStage("five")){
        event.player.addGameStage("five");
	    event.player.sendMessage("The voice that previously spoke to you is gone, but a new voice calls out: Hi! My name is Christi, and I'm the new guy. Don't worry, I'm not here to take over any realms, I'm just here to say congratulations! You can now utilize the strongest tools in all the realms!!! You probably won't need it, but i found this last heart laying around so I think I'll give it to you as thanks. Thank you so much for playing this modpack all the way through, it took me hundreds of hours to figure out how to put this all together. I really hope you enjoyed! Now have fun being a Master of the Realms. Oh, and could you do one more thing for me? I put a final quest in your book, I'd like you to take a look. It's been a long time since I've been in my old home; I miss it very much.");
        event.player.give(<item:paraglider:heart_container> );
        // myServer.executeCommand("place structure chocolate:wssshelter 1000000 64 0", true);
    }
    else if (count==12 && !event.player.hasGameStage("four")){
        event.player.addGameStage("four");
	    event.player.sendMessage("I can finally feel my skin again... You now have enough Power to use all but the most Powerful gear, which is only available to those with strength surpassing gods, and, of course, ascend to the one realm beyond all realms. Here's your last gift- as a final mark of my sincerest respect.");
        event.player.give(<item:paraglider:heart_container> );
	    event.player.sendMessage("However, I do have just one last thing to say. I.. Never thought I would see this day. The Union of the Eyes, Balance restored to the universe, a world finally resembling what once was... It almost makes me want to give up on my quest for Freedom, and go back to what once was. You see, I don't even remember what freedom feels like- and I've been beating myself up for so long, that I've almost lost my sanity. Hell, I've lost everything, from my Power, to everyone I've held dear, at the hands of the Gods who put me here. But now, after so, so much sacrifice, preparation, and p a t I e n c e, ");
	    event.player.sendMessage("I've done it. You see, those 'Gods' that put me here, weren't really gods- but insignificant little oaves who couldn't accept their fate. Though they might as well have been gods, because they had the whole package- stubbornness, savagery, and being the ones in charge of a Broken World. And just because I sought to finish what they started, take the responsibility and be the bad guy- to stop the endless suffering- they suddenly grew a conscience. They tried to defy their nature to stop me. I wasn't having it. Where were they when I was weak? No, that world couldn't be fixed.");
        event.player.sendMessage("I could've wiped them off the face of the earth in an instant if it wasn't for the main source of their Power -the eyes, which were Power incarnate. Forged with the combined power of civilizations, I tried to steal them from the stronghold where they were kept, but they had replaced the gates, and sucked me into this vile place of nothingness. They couldn't even have the honor to fight me head on. No, they had to trap me here, in the farthest reaches of the Universe, break the eyes so that I could never get out, and starve me of Energy. While I constantly tried to break out- it was no use. I hadn't studied the eye's Power, and I thought it was too late."); 
	    event.player.sendMessage("But after finding you, I realized just how painfully simple it was- all I had to do was act all friendly, and get you curious enough to put those eyes back together. My freedom, and a new source of power, will now finally transform me back to my True Self and beyond. I will come into your worlds, and free them all- from their power. And after restoring myself to my former glory- I will burn the remaining little devils that put me here to the ground. But, because I've come to respect your lust for Power, and want a fight with honor, I will let you have a final chance to see my power unfold. Throw an Eye and follow the direction it goes in to make your way to one of the gates. The victory will go to who deserves it.");
    }
    else if (count==9 && !event.player.hasGameStage("three")){
        event.player.addGameStage("three");
	    event.player.sendMessage("Wow, I can't believe just how much Power you've Reawakened...  With your new Powers come new knowledge this time, such as the ability to read scrolls, how to Infuse Enchanted tools's enchants to books, the knowledge to create Weapons using the Lifeblood obtained from the Spirits of the Dark, Dark Metal, and ancient knowledge of advanced machinery that can automate the production of a vast array of resources! All this time, we've thought it was all gone… I mean, all this knowledge of old civilizations we thought was lost; to war and the unrivaled dominion of Time. May your collecting of the final eyes necessary finally tell the Gods of old that my realm isn't theirs to conquer...");
        event.player.give(<item:paraglider:heart_container>) ;

    }
    else if (count==6 && !event.player.hasGameStage("two")){
        event.player.addGameStage("two");
	    event.player.sendMessage("Congratulations, my friend, you have become Powerful enough that you have awakened the Spirits of Light and Dark. You can enter their domains, Everbright and Everdawn, which are even more fantastical worlds! You are also now powerful enough to summon Ancient Underworld Demons, such as the Wither, utilize the quintessential Treasure of the deepist pits of Hell, Netherite, and fight New Reawakened enemies all across the world; which all combined give you access to all the materials you need to create all 12 eyes! With that in mind, you've proven that you're significantly more usef- I mean, helpful than I had ever previously imagined. Have another gift from us to commend your adventure so far. This is the closest I've been in so long.. ");
        event.player.give(<item:paraglider:heart_container> );

    }
    else if (count==3 && !event.player.hasGameStage("one")){
        event.player.addGameStage("one");
	    event.player.sendMessage("I see you've started to collect some eyes, hmm? Oh, sorry for scaring you. Do not be afraid, for I am but a lowly ender being speaking to your mind. I cannot interact with your plane of existence directly, I am using all our Power to merely talk to you via the Power of your Eyes. I have only come to ask you for help. My realm has been locked away in space for the past 1,000 years, as a result of some gods of the other realms quarreling with mine. This has left us common folk awaiting someone to come open the portal that sealed us here for generations. Those eyes are the source of all magic, created long ago by the gods that imprisoned us here, and if you were to get your hands on 12 of them, you'd be Powerful enough to open the gate- and free this realm from it's curse! If you do that, my people and I would give you all our Power. Already, because of those eyes you've created, you have become Powerful enough to use complex storage, a slightly stronger material infused with the god Neptune's Essence, Neptunium and enter the Underworld! So please, for our sake, keep it coming. Take this offering, the only thing i can materialize into your world from here, as a sign of peace. And please don't forget: the more eyes you collect, the more Powerful you become...");
        event.player.give(<item:paraglider:heart_container>);

    }
        else if (event.player.hasGameStage("firstcontact") && !event.player.hasGameStage("zero")){
        event.player.addGameStage("zero");
	    event.player.sendMessage("*you feel a faint vision come over you, of a event long ago. It is of an ancient place- somewhere lost to time. Over a lit table surrounded by engulfing dark, you notice some people- villagers, illagers, piglins, endermen,  and many more. An eye of ender is placed on the table, it's power entrenching- and everything goes white*");
	    event.player.sendMessage("*you feel the sudden urge to look in your quest book*");
		event.player.give(<item:ftbquests:book>);

    }



	
	// separated loop from eye count bc i need the count to be completed BEFORE the command starts spitting out your eye count
	for eye in eyesArray {
		if(event.stage == eye)
			if (count!=16)
				event.player.sendMessage("§dYou have collected §b" + count + "§d of the Eyes.");
			else
				event.player.sendMessage("§dYou have collected §ball§d of the Eyes.");
	}
}
   
   
);


//preventPickup(false);
//preventInventory(false);
//setHiddenInJEI(false); 
//ItemStages.restrict(<item:minecraft:white_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
//ItemStages.restrict(<item:minecraft:black_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
//ItemStages.restrict(<item:minecraft:green_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
//ItemStages.restrict(<item:minecraft:blue_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
//ItemStages.restrict(<item:minecraft:cyan_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
//ItemStages.restrict(<item:minecraft:red_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
//ItemStages.restrict(<item:minecraft:lime_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
//ItemStages.restrict(<item:minecraft:purple_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
//ItemStages.restrict(<item:minecraft:yellow_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
//ItemStages.restrict(<item:minecraft:gray_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
//ItemStages.restrict(<item:minecraft:light_gray_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
//ItemStages.restrict(<item:minecraft:orange_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
//ItemStages.restrict(<item:minecraft:magenta_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
//ItemStages.restrict(<item:minecraft:pink_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
//ItemStages.restrict(<item:minecraft:brown_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
//ItemStages.restrict(<item:minecraft:light_blue_bed>, "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);

// shittily coded arrays and loops courtesy of yours truly guyperson1



// --------------------------------------------------- ITEM STAGE ONE ------------------------------------------------------------------//
var itemsStageOne = [
	<item:quark:backpack>,
	<item:toms_storage:ts.storage_terminal>,
	<item:toms_storage:ts.crafting_terminal>,
	<item:aquaculture:neptunium_axe>,
	<item:aquaculture:neptunium_block>,
	<item:aquaculture:neptunium_boots>,
	<item:aquaculture:neptunium_bow>,
	<item:aquaculture:neptunium_chestplate>,
	<item:aquaculture:neptunium_fillet_knife>,
	<item:aquaculture:neptunium_fishing_rod>,
	<item:aquaculture:neptunium_helmet>,
	<item:aquaculture:neptunium_hoe>,
	<item:aquaculture:neptunium_ingot>,
	<item:aquaculture:neptunium_leggings>,
	<item:aquaculture:neptunium_nugget>,
	<item:aquaculture:neptunium_pickaxe>,
	<item:aquaculture:neptunium_shovel>,
	<item:aquaculture:neptunium_sword>,
	<item:predators:earthbreaker>,
	<item:predators:wave_of_abyss>,
	<item:predators:weathering>,
	<item:predators:prisblade>,
	<item:predators:sultan_of_fegefeuer>,
	<item:predators:huntsmans_spear>,
	<item:born_in_chaos_v1:nightmare_mantleofthe_night_boots>,
	<item:born_in_chaos_v1:nightmare_mantleofthe_night_leggings>,
	<item:born_in_chaos_v1:nightmare_mantleofthe_night_chestplate>,
	<item:born_in_chaos_v1:nightmare_mantleofthe_night_helmet>,
	//--//---------------------------------------------------- BACKPACK --------------------------------------------------------------//--//
	<item:sophisticatedbackpacks:backpack>,
	<item:sophisticatedbackpacks:iron_backpack>,
	<item:sophisticatedbackpacks:filter_upgrade>,
	<item:sophisticatedbackpacks:advanced_filter_upgrade>,
	<item:sophisticatedbackpacks:restock_upgrade>,
	<item:sophisticatedbackpacks:refill_upgrade>,
	<item:sophisticatedbackpacks:advanced_refill_upgrade>,
	<item:sophisticatedbackpacks:smelting_upgrade>,	
	<item:sophisticatedbackpacks:auto_smelting_upgrade>,	
	<item:sophisticatedbackpacks:smoking_upgrade>,	
	<item:sophisticatedbackpacks:auto_smoking_upgrade>,	
	<item:sophisticatedbackpacks:blasting_upgrade>,	
	<item:sophisticatedbackpacks:auto_blasting_upgrade>
];


// --------------------------------------------------- ITEM STAGE TW0 ------------------------------------------------------------------//
var itemsStageTwo = [
	<item:wstweaks:blaze_blade>,
	<item:wstweaks:lava_blade>,
	<item:minecraft:wither_skeleton_skull>,
	<item:minecraft:netherite_axe>,
	<item:minecraft:netherite_block>,
	<item:minecraft:netherite_boots>,
	<item:minecraft:netherite_chestplate>,
	<item:minecraft:netherite_helmet>,
	<item:minecraft:netherite_hoe>,
	<item:minecraft:netherite_ingot>,
	<item:minecraft:netherite_leggings>,
	<item:epicsamurai:netherite_samurai_boots>,
	<item:epicsamurai:netherite_samurai_chestplate>,
	<item:epicsamurai:netherite_samurai_helmet>,
	<item:epicsamurai:netherite_samurai_leggings>,
	<item:farmersdelight:netherite_knife>,
	<item:minecraft:netherite_pickaxe>,
	<item:minecraft:netherite_scrap>,
	<item:minecraft:netherite_shovel>,
	<item:minecraft:netherite_sword>,
	<item:create:netherite_backtank>,
	<item:create:netherite_diving_boots>,
	<item:create:netherite_diving_helmet>,
	<item:iter_rpg:netherite_flail>,
	<item:iter_rpg:netherite_scythe>,
	<item:meetyourfight:bone_raker>,
	<item:meetyourfight:cocktail_cutlass>,
	<item:meetyourfight:blossoming_mind>,
	<item:meetyourfight:spectres_grasp>,
	<item:create:mechanical_drill>,
	<item:create:mechanical_roller>,
	<item:create:mechanical_harvester>,
	<item:create:mechanical_plough>,
	<item:create:mechanical_saw>,
	<item:create:portable_storage_interface>,
	<item:create:cart_assembler>,
	//--//---------------------------------------------------- BACKPACK --------------------------------------------------------------//--//
	<item:sophisticatedbackpacks:gold_backpack>,
	<item:sophisticatedbackpacks:compacting_upgrade>,
	<item:sophisticatedbackpacks:advanced_compacting_upgrade>,
	<item:sophisticatedbackpacks:tool_swapper_upgrade>,
	<item:sophisticatedbackpacks:advanced_tool_swapper_upgrade>,
	<item:sophisticatedbackpacks:magnet_upgrade>,
	<item:sophisticatedbackpacks:advanced_magnet_upgrade>,
	<item:sophisticatedbackpacks:stack_upgrade_tier_1>
];



// --------------------------------------------------- ITEM STAGE THREE ------------------------------------------------------------------//
var itemsStageThree = [
	<item:infusion_table:infusion_table>,
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:sword/howling"], ribbon: "faf396", glyphs: [8, 9, 10, 5], key: "sword/howling"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:sword/throwing_knife"], ribbon: "b8ced9", glyphs: [4, 1, 0, 5], key: "sword/throwing_knife"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:sword/sturdy_guard"], ribbon: "bcb8b5", glyphs: [3, 2, 2, 1], key: "sword/sturdy_guard"}]}}),
	<item:create:linked_controller>,
	<item:create:redstone_link>,
	<item:born_in_chaos_v1:dark_metal_armor_helmet>,
	<item:born_in_chaos_v1:dark_metal_armor_chestplate>,
	<item:born_in_chaos_v1:dark_metal_armor_leggings>,
	<item:born_in_chaos_v1:dark_metal_armor_boots>,
	<item:born_in_chaos_v1:sharpened_dark_metal_sword>,
	<item:born_in_chaos_v1:soul_cutlass>,
	<item:born_in_chaos_v1:intoxicating_dagger>,
	<item:born_in_chaos_v1:great_reaper_axe>,
	<item:born_in_chaos_v1:darkwarblade>,
	<item:born_in_chaos_v1:spiritual_sword>,
	<item:born_in_chaos_v1:nightmare_scythe>,
	<item:born_in_chaos_v1:skullbreaker_hammer>,
	<item:born_in_chaos_v1:trident_hayfork>,
	<item:born_in_chaos_v1:dark_ritual_dagger>,
	//--//---------------------------------------------------- BACKPACK --------------------------------------------------------------//--//
	<item:sophisticatedbackpacks:diamond_backpack>,
	<item:sophisticatedbackpacks:feeding_upgrade>,
	<item:sophisticatedbackpacks:advanced_feeding_upgrade>,
	<item:sophisticatedbackpacks:stack_upgrade_tier_2>,
	<item:sophisticatedbackpacks:stack_upgrade_tier_3>

	
];



// --------------------------------------------------- ITEM STAGE FOUR ------------------------------------------------------------------//
var itemsStageFour = [
	<item:cataclysm:infernal_forge>,
	<item:cataclysm:tidal_claws>,
	<item:cataclysm:monstrous_helm>,
	<item:cataclysm:gauntlet_of_guard>,
	<item:cataclysm:wither_assault_shoulder_weapon>,
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 2, schematics: ["tetra:sword/katana/katana_blade"], ribbon: "dbff10", details: "art_of_forging", glyphs: [5, 10, 13, 2], key: "sword/katana/katana_blade"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:single/head/mace_head/mace_head"], ribbon: "560060", glyphs: [9, 3, 6, 2], details: "art_of_forging", key: "single/head/mace_head/mace_head"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 2, schematics: ["tetra:sword/crucible_blade"], ribbon: "ff1e00", glyphs: [8, 7, 9, 2], details: "art_of_forging", key: "tetra/crucible_blade"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:single/head/mace_head/mace_head"], ribbon: "560060", glyphs: [9, 3, 6, 2], details: "art_of_forging", key: "single/head/mace_head/mace_head"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 2, schematics: ["tetra:utilize/hammer"], ribbon: "fa97e9", details: "art_of_forging", glyphs: [1, 15, 12, 8], key: "utilize/hammer"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 2, schematics: ["tetra:sword/katana/murasama_blade"], ribbon: "c52323", details: "otherworldly", glyphs: [6, 7, 13, 15], key: "sword/katana/murasama_blade"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:bow/string/compound_string", "tetra:crossbow/string/compound_cross_string"], ribbon: "19e588", glyphs: [15, 13, 12, 14], details: "art_of_forging", key: "bow/string/compound_string"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 2, schematics: ["tetra:sword/rending_scissor_red", "tetra:sword/rending_scissor_purple"], ribbon: "e32182", details: "otherworldly", glyphs: [1, 15, 2, 13], key: "tetra/rending_scissor_purple"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:sword/key_guard"], ribbon: "fae409", glyphs: [0, 1, 9, 4], details: "art_of_forging", key: "sword/key_guard"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:bow/stave/dreadnought_stave", "tetra:bow/stave/dreadnought_cross_stave"], ribbon: "f3b31f", glyphs: [8, 1, 9, 5], details: "art_of_forging", key: "bow/stave/dreadnought_stave"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 1, schematics: ["tetra:single/head/halberd_head/halberd_head"], ribbon: "444aff", glyphs: [8, 1, 4, 5], details: "art_of_forging", key: "single/head/halberd_head/halberd_head"}]}}),
	<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 0, material: 2, schematics: ["tetra:sword/flamberge_blade"], ribbon: "ff9612", details: "art_of_forging", glyphs: [6, 15, 4, 7], key: "tetra/flamberge_blade"}]}}),
	<item:aquamirae:poseidons_breakfast>,
	<item:aquamirae:coral_lance>.withTag({Enchantments: [{lvl: 4, id: "minecraft:unbreaking"}]}),
	<item:aquamirae:whisper_of_the_abyss>,
	<item:aquamirae:divider>,
	<item:aquamirae:abyssal_amethyst>,
	<item:aquamirae:abyssal_boots>,
	<item:aquamirae:abyssal_brigantine>,
	<item:aquamirae:abyssal_heaume>,
	<item:aquamirae:abyssal_leggings>,
	<item:aquamirae:abyssal_tiara>,
	<item:aquamirae:maze_rose>,
	<item:aquamirae:abyssal_leggings>,
	<item:mutantmonsters:endersoul_hand>,
	<item:enlightened_end:adamantite_armor_boots>,
	<item:enlightened_end:adamantite_armor_chestplate>,
	<item:enlightened_end:adamantite_armor_helmet>,
	<item:enlightened_end:adamantite_armor_leggings>,
	<item:enlightened_end:adamantite_axe>,
	<item:enlightened_end:adamantite_hoe>,
	<item:enlightened_end:adamantite_ingot>,
	<item:enlightened_end:adamantite_pickaxe>,
	<item:enlightened_end:adamantite_shovel>,
	<item:enlightened_end:adamantite_sword>,
	<item:majruszsdifficulty:enderium_sword>,
	<item:majruszsdifficulty:enderium_hoe>,
	<item:majruszsdifficulty:enderium_shovel>,
	<item:majruszsdifficulty:enderium_pickaxe>,
	<item:majruszsdifficulty:enderium_axe>,
	<item:majruszsdifficulty:enderium_helmet>,
	<item:majruszsdifficulty:enderium_chestplate>,
	<item:majruszsdifficulty:enderium_leggings>,
	<item:majruszsdifficulty:enderium_boots>,
	<item:meetyourfight:passages_toll>,
	<item:meetyourfight:ace_of_iron>,
	<item:meetyourfight:caged_heart>,
	<item:meetyourfight:twilights_thorn>,
	<item:enigmaticlegacy:etherium_helmet>,
	<item:enigmaticlegacy:etherium_chestplate>,
	<item:enigmaticlegacy:etherium_leggings>,
	<item:enigmaticlegacy:etherium_boots>,
	<item:enigmaticlegacy:etherium_ingot>,
	<item:enigmaticlegacy:etherium_pickaxe>,
	<item:enigmaticlegacy:etherium_axe>,
	<item:enigmaticlegacy:etherium_shovel>,
	<item:enigmaticlegacy:etherium_sword>,
	<item:enigmaticlegacy:etherium_scythe>,
	<item:graveyard:cyan_bone_staff>,
	<item:graveyard:red_bone_staff>,
	<item:graveyard:white_bone_staff>,
	<item:graveyard:black_bone_staff>,
	<item:graveyard:purple_bone_staff>,
	//--//---------------------------------------------------- BACKPACK --------------------------------------------------------------//--//
	<item:sophisticatedbackpacks:netherite_backpack>,
	<item:sophisticatedbackpacks:xp_pump_upgrade>,
	<item:sophisticatedbackpacks:everlasting_upgrade>,
	<item:sophisticatedbackpacks:inception_upgrade>,
	<item:sophisticatedbackpacks:stack_upgrade_tier_4>,
];



// --------------------------------------------------- ITEM STAGE FIVE ------------------------------------------------------------------//
var itemsStageFive = [
	<item:cataclysm:ignitium_elytra_chestplate>,
	<item:cataclysm:ignitium_boots>,
	<item:cataclysm:ignitium_helmet>,
	<item:cataclysm:ignitium_leggings>,
	<item:cataclysm:ignitium_chestplate>,
	<item:alexsmobs:tarantula_hawk_elytra>,
	<item:cataclysm:the_incinerator>,
	<item:cataclysm:bulwark_of_the_flame>,
	<item:cataclysm:gauntlet_of_bulwark>,
	<item:cataclysm:void_assault_shoulder_weapon>,
	<item:cataclysm:void_forge>,
	<item:cataclysm:ignitium_ingot>,
	<item:cataclysm:witherite_ingot>,
	<item:celestisynth:rainfall_serenity>,
	<item:celestisynth:solaris>,
	<item:celestisynth:crescentia>,
	<item:celestisynth:aquaflora>,
	<item:celestisynth:poltergeist>,
	<item:celestisynth:breezebreaker>,
	<item:alexsmobs:dimensional_carver>
];

// --------------------------------------------------- CURSED (DISABLED) ITEMS ------------------------------------------------------------------//

var itemsCursed = [
	<item:enigmaticlegacy:cursed_ring>,
	<item:enigmaticlegacy:enigmatic_eye>,
	<item:enigmaticlegacy:recall_potion>,
	<item:enigmaticlegacy:end_anchor>,
	<item:enigmaticlegacy:the_infinitum>,
	<item:enigmaticlegacy:avarice_scroll>,
	<item:enigmaticlegacy:cursed_scroll>,
	<item:enigmaticlegacy:darkest_scroll>,
	<item:enigmaticlegacy:cosmic_scroll>,
	<item:enigmaticlegacy:evil_essence>,
	<item:enigmaticlegacy:evil_ingot>,
	<item:enigmaticlegacy:eldritch_amulet>,
	<item:enigmaticlegacy:soul_compass>,
	<item:enigmaticlegacy:astral_fruit>,
	<item:enigmaticlegacy:ender_slayer>,
	<item:enigmaticlegacy:cursed_stone>,
	<item:enigmaticlegacy:twisted_heart>,
	<item:enigmaticlegacy:guardian_heart>,
	<item:enigmaticlegacy:berserk_charm>,
	<item:enigmaticlegacy:twisted_mirror>,
	<item:enigmaticlegacy:curse_transposer>,
	<item:enigmaticlegacy:twisted_potion>,
	<item:enigmaticlegacy:infernal_shield>,
	<item:enigmaticlegacy:enchanter_pearl>,
	<item:enigmaticlegacy:abyssal_heart>,
	<item:enigmaticlegacy:desolation_ring>,
	<item:enigmaticlegacy:the_twist>,
	<item:enigmaticlegacy:soul_crystal>
];

for item in itemsStageOne {
	ItemStages.restrict(item.anyDamage(), "one").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
	<tag:items:chocolate:stage_one_item>.add(item);
	mods.recipestages.Recipes.setRecipeStage("one", item);
}

for item in itemsStageTwo {
	ItemStages.restrict(item.anyDamage(), "two").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
	<tag:items:chocolate:stage_two_item>.add(item);
	mods.recipestages.Recipes.setRecipeStage("two", item);
}

for item in itemsStageThree {
	ItemStages.restrict(item.anyDamage(), "three").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
	<tag:items:chocolate:stage_three_item>.add(item);
	mods.recipestages.Recipes.setRecipeStage("three", item);
}

for item in itemsStageFour {
	ItemStages.restrict(item.anyDamage(), "four").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
	<tag:items:chocolate:stage_four_item>.add(item);
	mods.recipestages.Recipes.setRecipeStage("four", item);
}

for item in itemsStageFive {
	ItemStages.restrict(item.anyDamage(), "five").preventInventory(false).preventPickup(false).setHiddenInJEI(false);
	<tag:items:chocolate:stage_five_item>.add(item);
	mods.recipestages.Recipes.setRecipeStage("five", item);
}

for item in itemsCursed {
	ItemStages.restrict(item.anyDamage(), "enigma").preventInventory(false).preventPickup(false).hiddenName("§cEnigmatic Item");
	craftingTable.remove(item);
}

/* gotta figure this out for later
var stages = ["one", "two", "three", "four", "five"] as string[];
var stagedItemArrays = [itemsStageOne, itemsStageTwo, itemsStageThree, itemsStageFour, itemsStageFive];

for index, itemArray in stagedItemArrays {
	for item in itemArray {
		ItemStages.restrict(item.anyDamage(), stages[index]).preventInventory(false).preventPickup(false).setHiddenInJEI(false);
		mods.recipestages.Recipes.setRecipeStage(stages[index], item);
	}
}
*/

ItemStages.createModRestriction("witherstormmod", "five").preventInventory(false).preventPickup(false).hiddenName("§cUnsettling Item");
Jei.hideModIngredients("witherstormmod", path => false);
mods.recipestages.Recipes.setRecipeStageByMod("five", "witherstormmod");
for item in loadedMods["witherstormmod"].getItemStacks() {
	<tag:items:chocolate:stage_five_item>.add(item);
}

DimensionStages.stageDimensionWithMessage("minecraft:the_nether","The Nether requires 3 eyes worth of power to enter...", "one");
DimensionStages.stageDimensionWithMessage("blue_skies:everbright","The Everbright requires 6 eyes worth of power to enter...", "two");
DimensionStages.stageDimensionWithMessage("blue_skies:everdawn","The Everdawn requires 6 eyes worth of power to enter...", "two");
DimensionStages.stageDimensionWithMessage("minecraft:the_end", "The End requires 12 eyes worth of power, come back later...", "four");
DimensionStages.stageDimensionWithMessage("javd:void", "The N E X U S requires 16 eyes worth of power, come back later...", "four");




ItemStages.restrict(<item:supplementaries:sack>, "disabled").preventInventory(false).preventPickup(false).setHiddenInJEI(false).hiddenName("§cForgotten Item");
ItemStages.restrict(<item:iter_rpg:nightfall>, "disabled").preventInventory(false).preventPickup(false).setHiddenInJEI(false).hiddenName("§cForgotten Item");
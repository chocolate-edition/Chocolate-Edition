// --------------- Tag manager?! I barely know 'er! ---------------

// This makes sure the tags load before the recipes :D
#priority 100


<tag:items:curios:charm>.remove(<item:enigmaticlegacy:enigmatic_eye>);

// ----- Windcaller Armor -----
// Used in Magical Eye
<tag:items:chocolate:windcaller>.add(<item:dungeons_mobs:windcaller_helmet>);
<tag:items:chocolate:windcaller>.add(<item:dungeons_mobs:windcaller_chestplate>);
<tag:items:chocolate:windcaller>.add(<item:dungeons_mobs:windcaller_staff>);

// ----- Geomancer Armor -----
// Used in Magical Eye
<tag:items:chocolate:geomancer>.add(<item:dungeons_mobs:geomancer_helmet>);
<tag:items:chocolate:geomancer>.add(<item:dungeons_mobs:geomancer_chestplate>);
<tag:items:chocolate:geomancer>.add(<item:dungeons_mobs:geomancer_staff>);

// ----- Mage Armor -----
// Used in Magical Eye
<tag:items:chocolate:mage>.add(<item:dungeons_mobs:mage_helmet>);
<tag:items:chocolate:mage>.add(<item:dungeons_mobs:mage_chestplate>);
<tag:items:chocolate:mage>.add(<item:dungeons_mobs:mage_leggings>);
<tag:items:chocolate:mage>.add(<item:dungeons_mobs:mage_boots>);
 
// ----- Iceologer Armor -----
// Used in Magical Eye 
<tag:items:chocolate:iceologer>.add(<item:dungeons_mobs:iceologer_helmet>);
<tag:items:chocolate:iceologer>.add(<item:dungeons_mobs:iceologer_chestplate>);
<tag:items:chocolate:iceologer>.add(<item:dungeons_mobs:iceologer_leggings>);
<tag:items:chocolate:iceologer>.add(<item:dungeons_mobs:iceologer_boots>);

// ----- Necromancer Armor -----
// Used in Necromancer Staff
<tag:items:chocolate:necromancer_armor>.add(<item:dungeons_mobs:necromancer_helmet>);
<tag:items:chocolate:necromancer_armor>.add(<item:dungeons_mobs:necromancer_chestplate>);
<tag:items:chocolate:necromancer_armor>.add(<item:dungeons_mobs:necromancer_leggings>);

// ----- Drowned Necromancer Armor -----
// Used in Necromancer Trident
<tag:items:chocolate:drowned_necromancer_armor>.add(<item:dungeons_mobs:drowned_necromancer_helmet>);
<tag:items:chocolate:drowned_necromancer_armor>.add(<item:dungeons_mobs:drowned_necromancer_chestplate>);
<tag:items:chocolate:drowned_necromancer_armor>.add(<item:dungeons_mobs:drowned_necromancer_leggings>);

// ----- Raid Boss Items -----
// Used in Magical Eye
<tag:items:chocolate:raid_boss_items>.add(<item:illageandspillage:totem_of_banishment>);
<tag:items:chocolate:raid_boss_items>.add(<item:illageandspillage:spellbound_book>);
<tag:items:chocolate:raid_boss_items>.add(<item:illageandspillage:bag_of_horrors>);

// ----- Blue Skies Tower Boss Arcs -----
// Used in Cold Eye
<tag:items:chocolate:tower_arcs>.add(<item:blue_skies:ethereal_arc>);
<tag:items:chocolate:tower_arcs>.add(<item:blue_skies:dusk_arc>);

// ----- Guardian Eye Pearls ----
// Used in Guardian Eye
<tag:items:chocolate:guardian_pearls>.add(<item:crittersandcompanions:pearl>);
<tag:items:chocolate:guardian_pearls>.add(<item:iter_rpg:pearl>);

// ----- Epic Samurai Gems -----
// Used in Diamond Heart duplication
<tag:items:chocolate:epic_samurai_gems>.add(<item:epicsamurai:ruby>);
<tag:items:chocolate:epic_samurai_gems>.add(<item:epicsamurai:aquamarine>);
<tag:items:chocolate:epic_samurai_gems>.add(<item:epicsamurai:jade>);
<tag:items:chocolate:epic_samurai_gems>.add(<item:epicsamurai:onyx>);

// ----- Glow Items -----
// Used in Glowstone Dust
<tag:items:chocolate:glow_item>.add(<item:minecraft:glow_lichen>);
<tag:items:chocolate:glow_item>.add(<item:minecraft:glow_ink_sac>);
<tag:items:chocolate:glow_item>.add(<item:minecraft:glow_berries>);
<tag:items:chocolate:glow_item>.add(<item:naturalist:glow_goop>);
<tag:items:chocolate:glow_item>.add(<item:infernalexp:glownuggets>);


// ----- Lionfish ----
// Used in Ooze Bottle
<tag:items:chocolate:lionfish>.add(<item:cataclysm:lionfish>);
<tag:items:chocolate:lionfish>.add(<item:upgrade_aquatic:lionfish>);
<tag:items:chocolate:lionfish>.add(<item:upgrade_aquatic:cooked_lionfish>);

// ----- Pufferfish ----
// Used in Ooze Bottle
<tag:items:chocolate:pufferfish>.add(<item:minecraft:pufferfish>);
<tag:items:chocolate:pufferfish>.add(<item:netherdepthsupgrade:lava_pufferfish>);

// ----- Lizard Tail ----
// Used in Ooze Bottle
<tag:items:chocolate:lizard_tail>.add(<item:naturalist:cooked_lizard_tail>);
<tag:items:chocolate:lizard_tail>.add(<item:naturalist:lizard_tail>);

// ----- Meatball ----
<tag:items:diet:proteins>.add(<item:unusualprehistory:mammoth_meatball>);

// --- CHEM X ---
// <tag:items:chocolate:chem>.add(<item:mutantmonsters:endersoul_hand>);
// <tag:items:chocolate:chem>.add(<item:mutantmonsters:mutant_skeleton_skull>);
// <tag:items:chocolate:chem>.add(<item:mutantmonsters:creeper_shard>);
// <tag:items:chocolate:chem>.add(<item:mutantmonsters:hulk_hammer>);

// <tag:items:chocolate:chem>.add(<item:supplementaries:enderman_head>);
// <tag:items:chocolate:chem>.add(<item:minecraft:skeleton_skull>);
// <tag:items:chocolate:chem>.add(<item:minecraft:creeper_head>);
// <tag:items:chocolate:chem>.add(<item:minecraft:zombie_head>);








// ----- Maggot -------
<tag:items:chocolate:maggot>.add(<item:alexsmobs:maggot>);
<tag:items:chocolate:maggot>.add(<item:born_in_chaos_v1:corpse_maggot>);


// ------- ALL EYES -----------

<tag:items:chocolate:eyes>.add(<item:endrem:guardian_eye>.withTag({Damage: 0}));
<tag:items:chocolate:eyes>.add(<item:endrem:magical_eye>.withTag({Damage: 0}));
<tag:items:chocolate:eyes>.add(<item:endrem:wither_eye>.withTag({Damage: 0}));
<tag:items:chocolate:eyes>.add(<item:endrem:witch_eye>.withTag({Damage: 0}));
<tag:items:chocolate:eyes>.add(<item:endrem:undead_eye>.withTag({Damage: 0}));
<tag:items:chocolate:eyes>.add(<item:endrem:exotic_eye>.withTag({Damage: 0}));
<tag:items:chocolate:eyes>.add(<item:endrem:cryptic_eye>.withTag({Damage: 0}));
<tag:items:chocolate:eyes>.add(<item:endrem:evil_eye>.withTag({Damage: 0}));
<tag:items:chocolate:eyes>.add(<item:endrem:cursed_eye>.withTag({Damage: 0}));
<tag:items:chocolate:eyes>.add(<item:endrem:rogue_eye>.withTag({Damage: 0}));
<tag:items:chocolate:eyes>.add(<item:endrem:old_eye>.withTag({Damage: 0}));
<tag:items:chocolate:eyes>.add(<item:endrem:nether_eye>.withTag({Damage: 0}));
<tag:items:chocolate:eyes>.add(<item:endrem:lost_eye>.withTag({Damage: 0}));
<tag:items:chocolate:eyes>.add(<item:endrem:corrupted_eye>.withTag({Damage: 0}));
<tag:items:chocolate:eyes>.add(<item:endrem:cold_eye>.withTag({Damage: 0}));
<tag:items:chocolate:eyes>.add(<item:endrem:black_eye>.withTag({Damage: 0}));


// --------- All QUEST TRINKETS -------

<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:lucky_rock>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:broken_magnet>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:magnet_ring>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:astral_breaker>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:ascension_amulet>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:light_gloves>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:void_stone>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:fractured_nullstone>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:miners_soul>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:broken_ankh>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:what_magnet>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:puffer_fish_liver>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:tick>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:ghast_eye>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:wooden_stick>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:blaze_nucleus>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:ice_cube>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:amphibious_hands>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:gills>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:true_heart_of_the_sea>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:reforger>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:pocket_lightning_rod>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:scarab_amulet>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:dark_nelumbo>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:xp_scroll>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:escape_scroll>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:unholy_grail>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:dragons_eye>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:ocean_stone>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:speed_force>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:tear_of_the_sea>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:experience_magnet>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:reverse_card>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:spider_legs>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:enigmatic_elytra>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:cracked_crown>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:fertilizer>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:sleeping_pills>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:callus>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:ichor_bottle>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:rage_mind>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:super_magnet>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:forbidden_axe>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:golem_heart>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:infinimeal>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:four_leaf_clover>);
<tag:items:chocolate:quest_trinkets>.add(<item:create:creative_blaze_cake>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:astral_potato>);
<tag:items:chocolate:quest_trinkets>.add(<item:nameless_trinkets:moon_stone>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:ender_ring>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:mining_charm>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:monster_charm>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:angel_blessing>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:void_pearl>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:eye_of_nebula>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:blazing_core>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:enchantment_transposer>);
<tag:items:chocolate:quest_trinkets>.add(<item:enigmaticlegacy:golden_ring>);




//----- ALL EYE INGREDIENTS ----- 

    // ----- LOST EYE -----
    <tag:items:chocolate:eye_items>.add(<item:quark:diamond_heart>);
    <tag:items:chocolate:eye_items>.add(<item:quark:forgotten_hat>);
    <tag:items:chocolate:eye_items>.add(<item:mutantmonsters:hulk_hammer>);
    <tag:items:chocolate:eye_items>.add(<item:supplementaries:bomb>);
    <tag:items:chocolate:eye_items>.add(<item:iter_rpg:voidquartz_shard>);
    <tag:items:chocolate:eye_items>.add(<item:supplementaries:rope_arrow>);
    <tag:items:chocolate:eye_items>.add(<item:tetra:geode>);
    <tag:items:chocolate:eye_items>.add(<item:quark:glow_shroom>);

    // ----- CORRUPTED EYE -----
    <tag:items:chocolate:eye_items>.add(<item:born_in_chaos_v1:holiday_candy>);
    <tag:items:chocolate:eye_items>.add(<item:quark:ravager_hide>);
    <tag:items:chocolate:eye_items>.add(<item:minecraft:pumpkin>);
    <tag:items:chocolate:eye_items>.add(<item:minecraft:hay_block>);
    <tag:items:chocolate:eye_items>.add(<item:minecraft:emerald_block>);
    <tag:items:chocolate:eye_items>.add(<item:conjurer_illager:conjurer_hat>);

    // ----- BLACK EYE -----
    <tag:items:chocolate:eye_items>.add(<item:aquaculture:pacific_halibut>);
    <tag:items:chocolate:eye_items>.add(<item:aquaculture:atlantic_halibut>);
    <tag:items:chocolate:eye_items>.add(<item:aquaculture:piranha>);
    <tag:items:chocolate:eye_items>.add(<item:aquamirae:sea_stew>);
    <tag:items:chocolate:eye_items>.add(<item:alexsmobs:fish_oil>);
    <tag:items:chocolate:eye_items>.add(<item:farmersrespite:black_tea_leaves>);
    <tag:items:chocolate:eye_items>.add(<item:aquaculture:rainbow_trout>);
    <tag:items:chocolate:eye_items>.add(<item:aquamirae:treasure_pouch>);

    // ----- CLOCKWORK EYE -----
    <tag:items:chocolate:eye_items>.add(<item:create:brass_hand>);
    <tag:items:chocolate:eye_items>.add(<item:create:brass_ingot>);
    <tag:items:chocolate:eye_items>.add(<item:create:experience_block>);
    <tag:items:chocolate:eye_items>.add(<item:create:sturdy_sheet>);
    <tag:items:chocolate:eye_items>.add(<item:create:precision_mechanism>);

    // ----- EXOTIC EYE -----
    <tag:items:chocolate:eye_items>.add(<item:upgrade_aquatic:elder_prismarine_coral>);
    <tag:items:chocolate:eye_items>.add(<item:upgrade_aquatic:prismarine_coral>);
    <tag:items:chocolate:eye_items>.add(<item:aquaculture:neptunium_ingot>);
    <tag:items:chocolate:eye_items>.add(<item:tetra:pristine_diamond>);
    <tag:items:chocolate:eye_items>.add(<item:tetra:pristine_emerald>);
    <tag:items:chocolate:eye_items>.add(<item:cataclysm:athame>);
    <tag:items:chocolate:eye_items>.add(<item:cataclysm:crystallized_coral>);

    // ----- GUARDIAN EYE -----
    <tag:items:chocolate:eye_items>.add(<item:upgrade_aquatic:elder_eye>);
    <tag:items:chocolate:eye_items>.add(<item:upgrade_aquatic:thrasher_tooth>);
    <tag:items:chocolate:eye_items>.add(<item:minecraft:conduit>);
    <tag:items:chocolate:eye_items>.add(<item:minecraft:prismarine_shard>);
    <tag:items:chocolate:eye_items>.add(<item:minecraft:prismarine_crystals>);
    <tag:items:chocolate:eye_items>.add(<item:iter_rpg:pearl>);
    <tag:items:chocolate:eye_items>.add(<item:crittersandcompanions:pearl>);
    <tag:items:chocolate:eye_items>.add(<item:dungeons_mobs:necromancer_trident>);

    // ----- EXOTIC EYE -----
    <tag:items:chocolate:eye_items>.add(<item:alexsmobs:banana>);
    <tag:items:chocolate:eye_items>.add(<item:minecraft:experience_bottle>);
    <tag:items:chocolate:eye_items>.add(<item:alexsmobs:potted_flutter>);
    <tag:items:chocolate:eye_items>.add(<item:minecraft:slime_ball>);
    <tag:items:chocolate:eye_items>.add(<item:environmental:thief_hood>);
    <tag:items:chocolate:eye_items>.add(<item:mutantmonsters:creeper_shard>);
    <tag:items:chocolate:eye_items>.add(<item:farmersdelight:glow_berry_custard>);

     // ----- OLD EYE -----
    <tag:items:chocolate:eye_items>.add(<item:alexsmobs:sombrero>);
    <tag:items:chocolate:eye_items>.add(<item:infernalexp:glowcoal>);
    <tag:items:chocolate:eye_items>.add(<item:infernalexp:glowsilk>);
    <tag:items:chocolate:eye_items>.add(<item:ecologics:tropical_stew>);
    <tag:items:chocolate:eye_items>.add(<item:mutantmonsters:mutant_skeleton_skull>);
    <tag:items:chocolate:eye_items>.add(<item:unusualend:gilded_pearl>);
    <tag:items:chocolate:eye_items>.add(<item:alexsmobs:pocket_sand>);
    <tag:items:chocolate:eye_items>.add(<item:alexsmobs:roadrunner_feather>);
    <tag:items:chocolate:eye_items>.add(<item:alexsmobs:emu_feather>);

    // ----- WITCH EYE -----
    <tag:items:chocolate:eye_items>.add(<item:alexsmobs:banana_slug_slime>);
    <tag:items:chocolate:eye_items>.add(<item:enlightened_end:ooze_bottle>);
    <tag:items:chocolate:eye_items>.add(<item:minecraft:ghast_tear>);
    <tag:items:chocolate:eye_items>.add(<item:endrem:witch_pupil>);
    <tag:items:chocolate:eye_items>.add(<item:alexsmobs:gongylidia>);
    <tag:items:chocolate:eye_items>.add(<item:minecraft:rabbit_hide>);  
    //<tag:items:chocolate:eye_items>.add(<item:minecraft:potion>.withTag({Potion: "rottencreatures:freeze"}));
    //<tag:items:chocolate:eye_items>.add(<item:minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}));
    
    // ----- COLD EYE -----
    <tag:items:chocolate:eye_items>.add(<item:aquamirae:wisteria_niveis>);
    <tag:items:chocolate:eye_items>.add(<item:alexsmobs:froststalker_horn>);
    <tag:items:chocolate:eye_items>.add(<item:blue_skies:soul_fragment>);
    <tag:items:chocolate:eye_items>.add(<item:blue_skies:star_flare>);
    <tag:items:chocolate:eye_items>.add(<item:aquamirae:golden_moth_in_a_jar>);
    <tag:items:chocolate:eye_items>.add(<item:blue_skies:snowbloom>);
    <tag:items:chocolate:eye_items>.add(<item:blue_skies:nightcress>);
    <tag:items:chocolate:eye_items>.add(<item:friendsandfoes:totem_of_freezing>);
    <tag:items:chocolate:eye_items>.add(<tag:items:chocolate:tower_arcs>);
   
    // ----- CURSED EYE -----
    <tag:items:chocolate:eye_items>.add(<item:minecraft:music_disc_11>);
    <tag:items:chocolate:eye_items>.add(<item:minecraft:music_disc_pigstep>);
    <tag:items:chocolate:eye_items>.add(<item:art_of_forging:forged_steel_ingot>);
    <tag:items:chocolate:eye_items>.add(<item:minecraft:lodestone>);
    <tag:items:chocolate:eye_items>.add(<item:mutantmonsters:endersoul_hand>);
    <tag:items:chocolate:eye_items>.add(<item:tetra:forged_bolt>);
    <tag:items:chocolate:eye_items>.add(<item:tetra:forged_mesh>);
    //GILIDED PEARL IS USSED IN THIS EYE BUT ITS ALREADY IN THE OLD EYE

    // ----- MAGIC EYE -----
    <tag:items:chocolate:eye_items>.add(<tag:items:chocolate:iceologer>);
    <tag:items:chocolate:eye_items>.add(<tag:items:chocolate:windcaller>);
    <tag:items:chocolate:eye_items>.add(<tag:items:chocolate:geomancer>);
    <tag:items:chocolate:eye_items>.add(<tag:items:chocolate:mage>);
    <tag:items:chocolate:eye_items>.add(<tag:items:chocolate:raid_boss_items>);
    <tag:items:chocolate:eye_items>.add(<item:friendsandfoes:totem_of_illusion>);
    <tag:items:chocolate:eye_items>.add(<item:minecraft:totem_of_undying>);
    <tag:items:chocolate:eye_items>.add(<item:dungeons_mobs:necromancer_staff>);

   // ----- NETHER EYE -----
    <tag:items:chocolate:eye_items>.add(<item:tetra:scroll_rolled>.withTag({BlockEntityTag: {data: [{intricate: 1, material: 2, schematics: ["tetra:hone/gild_1", "tetra:hone/gild_2", "tetra:hone/gild_3"], ribbon: "deb243", glyphs: [13, 14, 14, 15], key: "hone/gild_3"}]}}));
    <tag:items:chocolate:eye_items>.add(<item:minecraft:netherite_scrap>);
    <tag:items:chocolate:eye_items>.add(<item:mutantmore:mutant_blaze_core>);
    <tag:items:chocolate:eye_items>.add(<item:alexsmobs:mosquito_larva>);
    <tag:items:chocolate:eye_items>.add(<item:dungeons_mobs:netherplate_helmet>);
    <tag:items:chocolate:eye_items>.add(<item:cnb:cindershell_shell_shard>);
    <tag:items:chocolate:eye_items>.add(<item:brewinandchewin:fiery_fondue_pot>);
    <tag:items:chocolate:eye_items>.add(<item:netherdepthsupgrade:nether_rice_roll_medley_block>);

     // ----- UNDEAD EYE -----
    <tag:items:chocolate:eye_items>.add(<item:supplementaries:candle_holder>);
    <tag:items:chocolate:eye_items>.add(<item:nourished_nether:totem_of_post_mortem>);
    <tag:items:chocolate:eye_items>.add(<item:rottencreatures:magma_rotten_flesh>);
    <tag:items:chocolate:eye_items>.add(<item:endrem:undead_soul>);
    <tag:items:chocolate:eye_items>.add(<item:nourished_nether:necronium_ingot>);
    <tag:items:chocolate:eye_items>.add(<item:rottencreatures:frozen_rotten_flesh>);

    // ----- WITHER EYE -----
    //<tag:items:chocolate:eye_items>.add(<item:minecraft:potion>.withTag({Potion: "illageandspillage:mutation"}));
    <tag:items:chocolate:eye_items>.add(<item:farmersrespite:blazing_chili>);
    <tag:items:chocolate:eye_items>.add(<item:majruszsdifficulty:wither_sword>);
    <tag:items:chocolate:eye_items>.add(<item:born_in_chaos_v1:dark_metal_ingot>);
    <tag:items:chocolate:eye_items>.add(<item:mutantmore:mutant_wither_skeleton_skull>);
    
     // ----- CRYPTIC (...) EYE -----
    <tag:items:chocolate:eye_items>.add(<item:alexsmobs:void_worm_eye>);
    <tag:items:chocolate:eye_items>.add(<item:enlightened_end:irradium_bar>);
    <tag:items:chocolate:eye_items>.add(<item:iter_rpg:void_fragment>);
    <tag:items:chocolate:eye_items>.add(<item:cataclysm:void_core>);
    <tag:items:chocolate:eye_items>.add(<item:mutantmore:mutant_shulker_shell>);
    <tag:items:chocolate:eye_items>.add(<item:majruszsdifficulty:enderium_shard>);
    <tag:items:chocolate:eye_items>.add(<item:majruszsdifficulty:enderium_ingot>);
    <tag:items:chocolate:eye_items>.add(<item:enlightened_end:adamantite_ingot>);
    <tag:items:chocolate:eye_items>.add(<item:unusualend:void_totem>);
    

//Passion Fruit
<tag:items:forge:fruits/passionfruit>.add(<item:atmospheric:passion_fruit>);

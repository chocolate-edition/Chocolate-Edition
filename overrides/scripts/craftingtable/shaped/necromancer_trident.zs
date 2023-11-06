<tag:items:chocolate:drowned_necromancer_armor>.add(<item:dungeons_mobs:drowned_necromancer_helmet>);
<tag:items:chocolate:drowned_necromancer_armor>.add(<item:dungeons_mobs:drowned_necromancer_chestplate>);
<tag:items:chocolate:drowned_necromancer_armor>.add(<item:dungeons_mobs:drowned_necromancer_leggings>);

craftingTable.addShaped("necromancer_trident",<item:dungeons_mobs:necromancer_trident>,[
	[<item:minecraft:air>,<item:upgrade_aquatic:elder_guardian_spine>,<item:upgrade_aquatic:elder_guardian_spine>],
	[<item:minecraft:air>,<tag:items:chocolate:drowned_necromancer_armor>.asIIngredient().anyDamage(),<item:upgrade_aquatic:elder_guardian_spine>],
	[<item:upgrade_aquatic:prismarine_rod>,<item:minecraft:air>,<item:minecraft:air>]
]);
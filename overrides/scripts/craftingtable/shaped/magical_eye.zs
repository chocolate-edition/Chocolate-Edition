<tag:items:chocolate:windcaller>.add(<item:dungeons_mobs:windcaller_helmet>);
<tag:items:chocolate:windcaller>.add(<item:dungeons_mobs:windcaller_chestplate>);

<tag:items:chocolate:geomancer>.add(<item:dungeons_mobs:geomancer_helmet>);
<tag:items:chocolate:geomancer>.add(<item:dungeons_mobs:geomancer_chestplate>);

<tag:items:chocolate:mage>.add(<item:dungeons_mobs:mage_helmet>);
<tag:items:chocolate:mage>.add(<item:dungeons_mobs:mage_chestplate>);
<tag:items:chocolate:mage>.add(<item:dungeons_mobs:mage_leggings>);
<tag:items:chocolate:mage>.add(<item:dungeons_mobs:mage_boots>);

<tag:items:chocolate:iceologer>.add(<item:dungeons_mobs:iceologer_helmet>);
<tag:items:chocolate:iceologer>.add(<item:dungeons_mobs:iceologer_chestplate>);
<tag:items:chocolate:iceologer>.add(<item:dungeons_mobs:iceologer_leggings>);
<tag:items:chocolate:iceologer>.add(<item:dungeons_mobs:iceologer_boots>);

<tag:items:chocolate:raid_boss_items>.add(<item:illageandspillage:totem_of_banishment>);
<tag:items:chocolate:raid_boss_items>.add(<item:illageandspillage:spellbound_book>);
<tag:items:chocolate:raid_boss_items>.add(<item:illageandspillage:bag_of_horrors>);

craftingTable.addShaped("magical_eye", <item:endrem:magical_eye>, [
	[<tag:items:chocolate:windcaller>.asIIngredient().anyDamage(),<tag:items:chocolate:raid_boss_items>.asIIngredient().anyDamage(),<tag:items:chocolate:geomancer>.asIIngredient().anyDamage()],
	[<item:friendsandfoes:totem_of_illusion>.reuse(),<item:minecraft:ender_eye>,<item:minecraft:totem_of_undying>.reuse()],
	[<tag:items:chocolate:mage>.asIIngredient().anyDamage(),<item:dungeons_mobs:necromancer_staff>.reuse().anyDamage(),<tag:items:chocolate:iceologer>.asIIngredient().anyDamage()]
]);
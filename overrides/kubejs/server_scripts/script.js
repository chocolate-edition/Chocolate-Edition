// priority: 0

console.info('Hello, World! (You will see this line every time server resources reload)')

ServerEvents.recipes(event => {
	// Change recipes here
})

ServerEvents.tags('item', event => {
	// Get the #forge:cobblestone tag collection and add Diamond Ore to it
	// event.get('forge:cobblestone').add('minecraft:diamond_ore')

	// Get the #forge:cobblestone tag collection and remove Mossy Cobblestone from it
	// event.get('forge:cobblestone').remove('minecraft:mossy_cobblestone')
})

//LootJS.modifiers((event) => {
  //  event
  //      .addLootTypeModifier(LootType.CHEST) // or multiple LootType.BLOCK, LootType.ENTITY ... 
   //     .removeLoot('minecraft:beetroot_seeds')
   //   	.addAlternativesLoot(
      //      LootEntry.of('farmersdelight:onion', 5).when((c) => c.randomChance(0.01)),
	//    LootEntry.of('farmersdelight:tomato_seeds', 5).when((c) => c.randomChance(0.01)),
	//    LootEntry.of('farmersdelight:cabbage_seeds', 5).when((c) => c.randomChance(0.01)),
	//    LootEntry.of('farmersdelight:rice', 5).when((c) => c.randomChance(0.01)),

  	//    LootEntry.of('farmersdelight:onion', 3).when((c) => c.randomChance(0.02)),
	//    LootEntry.of('farmersdelight:tomato_seeds', 3).when((c) => c.randomChance(0.02)),
	//    LootEntry.of('farmersdelight:cabbage_seeds', 3).when((c) => c.randomChance(0.02)),
	//    LootEntry.of('farmersdelight:rice', 3).when((c) => c.randomChance(0.02)))

   // })


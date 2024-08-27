var fireRes = <item:minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}) 
			| <item:minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"});

var freeze = <item:minecraft:potion>.withTag({Potion: "rottencreatures:freeze"})
			| <item:minecraft:potion>.withTag({Potion: "rottencreatures:long_freeze"})
			| <item:minecraft:potion>.withTag({Potion: "rottencreatures:strong_freeze"});






craftingTable.addShaped("witch_eye", <item:endrem:witch_eye>, [
	[<item:alexsmobs:banana_slug_slime>,<item:enlightened_end:ooze_bottle>,<item:minecraft:ghast_tear>],
	[fireRes,<item:minecraft:ender_eye>,freeze],
	[<item:alexsmobs:gongylidia>,<item:endrem:witch_pupil>,<item:minecraft:rabbit_foot>]
]);
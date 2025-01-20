import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.event.AnvilUpdateEvent;
import crafttweaker.api.events.CTEventManager;

function addAnvilRepair(itemToRepair as IIngredient, repairItem as IIngredient, itemsForMax as int, levelsPerMaterial as int) as void {
	CTEventManager.register<crafttweaker.api.event.AnvilUpdateEvent>((event) => {
		if (itemToRepair.onlyDamaged().matches(event.left) && repairItem.matches(event.right)) {
			var durabilityPerItem = (event.left.maxDamage / itemsForMax) as int;
			
			// How many materials are required to fully repair item (accounting for possible rounding issues)
			var materialsForFull = (event.left.damage / durabilityPerItem) + 1;
			materialsForFull = materialsForFull > itemsForMax ? itemsForMax : materialsForFull;
			
			// How many materials to consume
			event.materialCost = event.right.amount > materialsForFull ? materialsForFull : event.right.amount;
			event.levelCost = event.materialCost * levelsPerMaterial; // Level Cost per material consumed
			
			// Output
			event.output = event.left.withDamage(event.left.damage - (event.materialCost * durabilityPerItem));
	}
	});
}

addAnvilRepair(<tag:items:artifacts:artifacts>.asIIngredient(), <item:nameless_trinkets:dubious_dust>, 4, 1);
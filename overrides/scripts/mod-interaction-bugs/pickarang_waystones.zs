import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.block.BlockBreakEvent;
// bug: pickarangs can break waystones, including naturally generated ones. 
// disables pickarangs from breakiong all waystones.

var rangs = [
  <item:quark:pickarang>,
  <item:quark:flamerang>,
  <item:quark:echorang>,
];

CTEventManager.register<BlockBreakEvent>((event) => {
  var block = event.getBlockState().block;
  if !block.matches(<block:waystones:waystone>) {
    return;
  }
  var tool = event.getPlayer().getMainHandItem().asIItemStack().anyDamage();
  for rang in rangs {
    if tool.matches(rang) {
      event.cancel();
      return;
    }
  }
});
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.block.BlockBreakEvent;
import crafttweaker.api.entity.EntityType;
import crafttweaker.api.entity.type.item.ItemEntity;
import crafttweaker.api.loot.LootContextBuilder;
import crafttweaker.api.loot.param.LootContextParams;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.util.math.Vec3;
import crafttweaker.api.block.BlockState;
/*
// iter rpg and enlightned end stone types do not drop when mined with tetras pick,or pickarang 

val buggedTools = [
  "tetra:modular_double",
  "quark:pickarang",
  "quark:flamerang",
  "quark:echorang",
];

CTEventManager.register<BlockBreakEvent>((event) => {
  // early return if tool used isnt bugged
  val toolUsed = event.player.getMainHandItem().asIItemStack();
  if !buggedTools.contains((tool) => tool == toolUsed.registryName.toString()) || 
  !event.player.hasCorrectToolForDrops(event.getBlockState()) {
    return;
  }
  val block = event.getBlockState().block;
  val mod = block.registryName.namespace;
  // early return if block isnt from bugged mods
  if mod != "iter_rpg" && mod != "enlightened_end" {
    return;
  }
  // early return if block isnt bugged
  if !<tag:blocks:minecraft:mineable/pickaxe>.contains(block) {
    return;
  }
  
  // build the loot table
  val lootTable = loot.tables.getTable(<resource:${block.lootTable}>);
  val origin = new Vec3(event.pos.x, event.pos.y, event.pos.z);
  val context = 
  LootContextBuilder.create(event.getWorld())
  .withParameter<Vec3>(LootContextParams.origin(), origin)
  .withParameter<ItemStack>(LootContextParams.tool(), toolUsed)
  .withParameter<BlockState>(LootContextParams.blockState(), event.getBlockState())
  .create(lootTable.paramSet);

  // spawn the loot
  var rollTable = lootTable.getRandomItems(context);
  // some block have empty loot tables. if so just spawn the block itself
  if(rollTable.length == 0) {
    val item = new ItemEntity(event.getWorld(), event.pos.x, event.pos.y, event.pos.z, block.asItem().getDefaultInstance() as ItemStack);
    event.getWorld().addFreshEntity(item);
  }
  for loot in rollTable {
    val item = new ItemEntity(event.getWorld(), event.pos.x, event.pos.y, event.pos.z, loot);
    event.getWorld().addFreshEntity(item);
  }
});
*/
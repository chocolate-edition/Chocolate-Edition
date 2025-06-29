import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.block.BlockBreakEvent;
import crafttweaker.api.event.block.BlockPlaceEvent;
import crafttweaker.api.event.entity.player.interact.RightClickItemEvent;
import crafttweaker.api.event.entity.player.interact.RightClickBlockEvent;
import crafttweaker.api.predicate.LocationPredicate;
import crafttweaker.api.entity.type.player.Player;
import crafttweaker.api.world.Level;
import crafttweaker.api.util.math.BlockPos;

val structures = [
  "chocolate:shaded_citadel",
  "chocolate:white_palace",
];

val bannedRightClickItems = [
  <item:minecraft:ender_pearl>,
  <item:endermanoverhaul:warped_pearl>,
  <item:endermanoverhaul:crimson_pearl>,
  <item:endermanoverhaul:corrupted_pearl>,
  <item:endermanoverhaul:icy_pearl>,
  <item:endermanoverhaul:bubble_pearl>,
  <item:mutantmonsters:endersoul_hand>,
  <item:alexsmobs:squid_grapple>,
  <item:minecraft:firework_rocket>,
  <item:cataclysm:tidal_claws>,
  <item:crittersandcompanions:grappling_hook>,
  <item:bosses_of_mass_destruction:earthdive_spear>,
  <item:bosses_of_mass_destruction:charged_ender_pearl>,
  <item:galosphere:silver_bomb>,
];

val bannedRightClickBlocks = [
  <block:ecologics:pot>,
];

// function to check if in structure array
public function IsInStructures(level as Level, pos as BlockPos, structures as string[]) as bool {
  val builder = LocationPredicate.create();
  for structure in structures {
    builder.structure(structure);
  }
  return builder.build().matches(level, pos.x, pos.y, pos.z);
}

// no breaking blocks
CTEventManager.register<BlockBreakEvent>((event) => {
  if(event.player.isCreative()) {
    return;
  }
  if(!IsInStructures(event.world, event.pos, structures)) {
    return;
  }
  event.player.displayClientMessage("You can't do that here", true);
  event.cancel();
});

// no placing blocks
CTEventManager.register<BlockPlaceEvent>((event) => {
  if(!(event.entity is Player)){
    return;
  }

  val player = event.entity as Player;

  if(player.isCreative()) {
    return;
  }
  if(!IsInStructures(event.world, event.pos, structures)) {
    return;
  }
  player.displayClientMessage("You can't do that here", true);
  event.cancel();
});

// banned right click items
CTEventManager.register<RightClickItemEvent>((event) => {
  if(event.player.isCreative()) {
    return;
  }
  if(event.player.level.isClientSide()){
    return;
  }

  if(!IsInStructures(event.player.level, event.getBlockPos(), structures)) {
    return;
  }

  for item in bannedRightClickItems {
    if(event.itemStack == item) {
      event.player.displayClientMessage("You can't do that here", true);
      event.cancel();
      return;
    }
  }
});

// banned right click blocks
CTEventManager.register<RightClickBlockEvent>((event) => {
  if(event.player.isCreative()) {
    return;
  }
   if(event.player.level.isClientSide()){
    return;
  }

  if(!IsInStructures(event.player.level, event.getBlockPos(), structures)) {
    return;
  }
  val eventBlock = event.player.level.getBlockState(event.getBlockPos()).block;
  for block in bannedRightClickBlocks {
    if(eventBlock == block) {
      event.player.displayClientMessage("You can't do that here", true);
      event.cancel();
      return;
    }
  }
});

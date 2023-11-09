<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("track_using_steel")
                                                      .transitionTo(<item:create:incomplete_track>)
                                                      .require(<item:minecraft:stone_slab>)
                                                      .loops(1)
                                                      .addOutput(<item:create:track> * 16, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:epicsamurai:steel_ingot>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:minecraft:planks>))
                                                      .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(10)));
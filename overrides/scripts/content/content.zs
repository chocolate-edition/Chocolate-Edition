#loader contenttweaker

import contenttweaker.builder.vanilla.item.Basic;
import contenttweaker.object.vanilla.property.FoodItemProperties;
import contenttweaker.object.vanilla.property.StandardItemProperties;


//import contenttweaker.builder.vanilla.item.BlockItem;
import contenttweaker.builder.vanilla.block.Basic as BasicBlock;
import contenttweaker.object.vanilla.property.StandardBlockProperties;




val bossTab = <factory:creative_tab>.create("bossTab", <item:summoningrituals:altar>);

val bedrockProperties = <block:minecraft:bedrock>.findProperties<StandardBlockProperties>();

val amethystCore = <factory:block>.typed<BasicBlock>() 
    .cloning(bedrockProperties)
    .tab(bossTab)
    .build("amethyst_core");

val bellRingerCore = <factory:block>.typed<BasicBlock>() 
    .cloning(bedrockProperties)
    .tab(bossTab)
    .build("bell_ringer_core");

val dameCore = <factory:block>.typed<BasicBlock>() 
    .cloning(bedrockProperties)
    .tab(bossTab)
    .build("dame_core");

val huntsmanCore = <factory:block>.typed<BasicBlock>() 
    .cloning(bedrockProperties)
    .tab(bossTab)
    .build("huntsman_core");

val melonCore = <factory:block>.typed<BasicBlock>() 
    .cloning(bedrockProperties)
    .tab(bossTab)
    .build("melon_core");

val prisnautilusCore = <factory:block>.typed<BasicBlock>() 
    .cloning(bedrockProperties)
    .tab(bossTab)
    .build("prisnautilus_core");

val rosalyneCore = <factory:block>.typed<BasicBlock>() 
    .cloning(bedrockProperties)
    .tab(bossTab)
    .build("rosalyne_core");

val scarabCore = <factory:block>.typed<BasicBlock>() 
    .cloning(bedrockProperties)
    .tab(bossTab)
    .build("scarab_core");

val shamanCore = <factory:block>.typed<BasicBlock>() 
    .cloning(bedrockProperties)
    .tab(bossTab)
    .build("shaman_core");

val swampJawCore = <factory:block>.typed<BasicBlock>() 
    .cloning(bedrockProperties)
    .tab(bossTab)
    .build("swamp_jaw_core");





val amethystSummoner = <factory:item>.typed<Basic>() // a 'factory' creates is used to define that we are making a new thing
    .tab(bossTab)
    .rarity(<constant:minecraft:item/rarity:rare>) 
    .build("amethyst_summoner");  

val bellRingerSummoner = <factory:item>.typed<Basic>() // a 'factory' creates is used to define that we are making a new thing
    .tab(bossTab)
    .rarity(<constant:minecraft:item/rarity:rare>) 
    .build("bell_ringer_summoner");  

val dameSummoner = <factory:item>.typed<Basic>() // a 'factory' creates is used to define that we are making a new thing
    .tab(bossTab)
    .rarity(<constant:minecraft:item/rarity:rare>) 
    .build("dame_summoner");  

val huntsmanSummoner = <factory:item>.typed<Basic>() // a 'factory' creates is used to define that we are making a new thing
    .tab(bossTab)
    .rarity(<constant:minecraft:item/rarity:rare>) 
    .build("huntsman_summoner");  

val melonSummoner = <factory:item>.typed<Basic>() // a 'factory' creates is used to define that we are making a new thing
    .tab(bossTab)
    .rarity(<constant:minecraft:item/rarity:rare>) 
    .build("melon_summoner");  
    
val prisnautilusSummoner = <factory:item>.typed<Basic>() // a 'factory' creates is used to define that we are making a new thing
    .tab(bossTab)
    .rarity(<constant:minecraft:item/rarity:rare>) 
    .build("prisnautilus_summoner");   

val rosalyneSummoner = <factory:item>.typed<Basic>() // a 'factory' creates is used to define that we are making a new thing
    .tab(bossTab)
    .rarity(<constant:minecraft:item/rarity:rare>) 
    .build("rosalyne_summoner");  

val scarabSummoner = <factory:item>.typed<Basic>() // a 'factory' creates is used to define that we are making a new thing
    .tab(bossTab)
    .rarity(<constant:minecraft:item/rarity:rare>) 
    .build("scarab_summoner");  

val shamanSummoner = <factory:item>.typed<Basic>() // a 'factory' creates is used to define that we are making a new thing
    .tab(bossTab)
    .rarity(<constant:minecraft:item/rarity:rare>) 
    .build("shaman_summoner");  

val swampJawSummoner = <factory:item>.typed<Basic>() // a 'factory' creates is used to define that we are making a new thing
    .tab(bossTab)
    .rarity(<constant:minecraft:item/rarity:rare>) 
    .build("swamp_jaw_summoner");  

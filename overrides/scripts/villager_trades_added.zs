import crafttweaker.api.villager.VillagerProfession;
import crafttweaker.api.villager.trade.ItemListing;
import crafttweaker.api.resource.ResourceLocation;
import crafttweaker.api.villagers.VillagerTrades;
import crafttweaker.api.villager.VillagerType;
import crafttweaker.api.villager.MerchantOffer;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.villager.trade.type.EmeraldForItems;
import crafttweaker.api.villager.trade.type.EmeraldsForVillagerTypeItem;
import crafttweaker.api.entity.Entity;

#priority -30

//add enchant book trades for librarian
villagerTrades.addTrade(<profession:minecraft:librarian>, 1, (entity, random) => 
{
  val level = random.nextIntBetweenInclusive(1, 3);
  val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
  return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:unbreaking"}]}), 4, 5, 1);
});

villagerTrades.addTrade(<profession:minecraft:librarian>, 1, (entity, random) => 
{
  val level = random.nextIntBetweenInclusive(1, 3);
  val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
  return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:thorns"}]}), 4, 5, 1);
});

//add enchant book trades for armorer
var protBooks = ["minecraft:protection",
                 "minecraft:fire_protection",
                 "minecraft:blast_protection",
                 "minecraft:projectile_protection"];

for book in protBooks
{
villagerTrades.addTrade(<profession:minecraft:armorer>, 1, (entity, random) => 
{
  val level = random.nextIntBetweenInclusive(1, 3);
  val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
  return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: book}]}), 4, 10, 1);
});
}

//level 4 will be given at level 2
for book in protBooks
{
villagerTrades.addTrade(<profession:minecraft:armorer>, 2, (entity, random) => 
{
  return new MerchantOffer(<item:minecraft:emerald> * random.nextIntBetweenInclusive(50, 60), <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4, id: book}]}), 4, 5, 1);
});
}

//villagerTrades.addTrade(<profession:minecraft:librarian>, 1, (entity, random) => 
//{
//  val level = random.nextIntBetweenInclusive(1, 4);
//  val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
//  return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:fire_protection"}]}), 4, 5, 1);
//});
//
//villagerTrades.addTrade(<profession:minecraft:librarian>, 1, (entity, random) => 
//{
//  val level = random.nextIntBetweenInclusive(1, 4);
//  val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
//  return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:blast_protection"}]}), 4, 5, 1);
//});
//
//villagerTrades.addTrade(<profession:minecraft:librarian>, 1, (entity, random) => 
//{
//  val level = random.nextIntBetweenInclusive(1, 4);
//  val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30, if 4, 30-40
//  return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:projectile_protection"}]}), 4, 5, 1);
//});

//add enchant books for the fisherman
var fishBooks = ["minecraft:lure",
                 "minecraft:luck_of_the_sea",];

for book in fishBooks
{
villagerTrades.addTrade(<profession:minecraft:fisherman>, 1, (entity, random) => 
{
  val level = random.nextIntBetweenInclusive(1, 3);
  val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
  return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: book}]}), 4, 5, 1);
});
}

villagerTrades.addTrade(<profession:minecraft:fisherman>, 1, (entity, random) => {
    val level = random.nextIntBetweenInclusive(1, 3);
    val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:respiration"}]}), 4, 10, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:fisherman>, 1, (entity, random) => {
    return new MerchantOffer(<item:minecraft:emerald> * (random.nextIntBetweenInclusive(30, 40)), <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:aqua_affinity"}]}), 4, 10, 0.05);
});

var spearBooks = ["minecraft:loyalty",
                  "minecraft:riptide"];

for book in spearBooks
{
villagerTrades.addTrade(<profession:minecraft:fisherman>, 1, (entity, random) => 
{
  val level = random.nextIntBetweenInclusive(1, 3);
  val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
  return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: book}]}), 4, 5, 1);
});   
}

villagerTrades.addTrade(<profession:minecraft:fisherman>, 1, (entity, random) => {
    val level = random.nextIntBetweenInclusive(1, 3);
    val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:impaling"}]}), 4, 10, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:fisherman>, 2, (entity, random) => {
    val level = random.nextIntBetweenInclusive(4, 5);
    val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:impaling"}]}), 4, 10, 0.05);
});

//add trade to get enchant books from cleric

villagerTrades.addTrade(<profession:minecraft:cleric>, 1, (entity, random) => {
    return new MerchantOffer(<item:minecraft:emerald> * (random.nextIntBetweenInclusive(30, 40)), <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:flame"}]}), 4, 10, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:cleric>, 1, (entity, random) => {
    return new MerchantOffer(<item:minecraft:emerald> * (random.nextIntBetweenInclusive(30, 40)), <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:infinity"}]}), 4, 10, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:cleric>, 1, (entity, random) => {
    val level = random.nextIntBetweenInclusive(1, 2);
    val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:fire_aspect"}]}), 4, 10, 0.05);
});

//add trade for enchant books for weaponsmith

var attackBooks = ["minecraft:sharpness",
                   "minecraft:smite",
                   "minecraft:bane_of_arthropods"];

for book in attackBooks
{
villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 1, (entity, random) => 
{
  val level = random.nextIntBetweenInclusive(1, 3);
  val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
  return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: book}]}), 4, 5, 1);
});
}

for book in attackBooks
{
villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 2, (entity, random) => 
{
  val level = random.nextIntBetweenInclusive(4, 5);
  val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
  return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: book}]}), 4, 5, 1);
});
}

villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 1, (entity, random) => {
    val level = random.nextIntBetweenInclusive(1, 2);
    val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:knockback"}]}), 4, 10, 0.05);
});

var fightBooks = ["minecraft:sweeping",
                  "minecraft:looting"];

for book in fightBooks
{
villagerTrades.addTrade(<profession:minecraft:weaponsmith>, 1, (entity, random) => {
    val level = random.nextIntBetweenInclusive(1, 3);
    val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:sweeping"}]}), 4, 10, 0.05);
});
}

//add trade for enchant books for toolsmith

villagerTrades.addTrade(<profession:minecraft:toolsmith>, 1, (entity, random) => {
    val level = random.nextIntBetweenInclusive(1, 3);
    val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:fortune"}]}), 4, 10, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:toolsmith>, 1, (entity, random) => {
    val level = random.nextIntBetweenInclusive(1, 5);
    val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:efficiency"}]}), 4, 10, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:toolsmith>, 1, (entity, random) => {
    return new MerchantOffer(<item:minecraft:emerald> * (random.nextIntBetweenInclusive(30, 40)), <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:silk_touch"}]}), 4, 10, 0.05);
});

//add trades for enchant books for fletcher

villagerTrades.addTrade(<profession:minecraft:fletcher>, 1, (entity, random) => {
    return new MerchantOffer(<item:minecraft:emerald> * (random.nextIntBetweenInclusive(30, 40)), <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:multishot"}]}), 4, 10, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:fletcher>, 1, (entity, random) => {
    val level = random.nextIntBetweenInclusive(1, 3);
    val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:quick_charge"}]}), 4, 10, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:fletcher>, 1, (entity, random) => {
    val level = random.nextIntBetweenInclusive(1, 3);
    val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:piercing"}]}), 4, 10, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:fletcher>, 1, (entity, random) => {
    val level = random.nextIntBetweenInclusive(1, 3);
    val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:power"}]}), 4, 10, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:fletcher>, 2, (entity, random) => {
    val level = random.nextIntBetweenInclusive(4, 5);
    val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:power"}]}), 4, 10, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:fletcher>, 1, (entity, random) => {
    val level = random.nextIntBetweenInclusive(1, 2);
    val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:punch"}]}), 4, 10, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:fletcher>, 1, (entity, random) => {
    return new MerchantOffer(<item:minecraft:emerald> * (random.nextIntBetweenInclusive(30, 40)), <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:multishot"}]}), 4, 10, 0.05);
});

//add trade for enchant books for shepherd

villagerTrades.addTrade(<profession:minecraft:shepherd>, 1, (entity, random) => {
    val level = random.nextIntBetweenInclusive(1, 3);
    val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:feather_falling"}]}), 4, 10, 0.05);
});

villagerTrades.addTrade(<profession:minecraft:shepherd>, 1, (entity, random) => {
    return new MerchantOffer(<item:minecraft:emerald> * (random.nextIntBetweenInclusive(30, 40)), <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "minecraft:feather_falling"}]}), 4, 10, 0.05);
});

//add trade for enchant books for leatherworker

var feetBooks = ["minecraft:depth_strider",
                  "minecraft:soul_speed",
                  "minecraft:swift_sneak",
];

for book in feetBooks
{
villagerTrades.addTrade(<profession:minecraft:leatherworker>, 1, (entity, random) => 
{
  val level = random.nextIntBetweenInclusive(1, 3);
  val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
  return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: book}]}), 4, 5, 1);
});
}

villagerTrades.addTrade(<profession:minecraft:leatherworker>, 1, (entity, random) => {
    val level = random.nextIntBetweenInclusive(1, 2);
    val price = random.nextIntBetweenInclusive(10 + 5 * level, 20 + 5 * level); #if 1, 15-25; if 2, 20-30; if 3, 25-30
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: "minecraft:frost_walker"}]}), 4, 10, 0.05);
});

//===============================================Item Trades===============================================================================================

//add item trades for the fletcher
villagerTrades.addTrade(<profession:minecraft:fletcher>, 1, 1, <item:minecraft:arrow> * 32, 5, 2, 0.05);



//add item trades for the farmer
val toBuy = [<item:farmersdelight:barbecue_stick>,
             <item:farmersdelight:baked_cod_stew>,
             <item:farmersdelight:beef_stew>,
             <item:farmersdelight:bone_broth>,
             <item:farmersdelight:cabbage_rolls>,
             <item:farmersdelight:chicken_soup>,
             <item:farmersdelight:cod_roll>,
             <item:farmersdelight:dog_food>,
             <item:farmersdelight:egg_sandwich>,
             <item:farmersdelight:fish_stew>,
             <item:farmersdelight:fruit_salad>,
             <item:farmersdelight:kelp_roll>,
             <item:farmersdelight:kelp_roll_slice>,
             <item:farmersdelight:shepherds_pie>,
             <item:farmersdelight:pumpkin_soup>,
             <item:farmersdelight:salmon_roll>,
             <item:farmersdelight:stuffed_potato>,
             <item:farmersdelight:vegetable_noodles>,
             <item:farmersdelight:vegetable_soup>,
             <item:farmersdelight:bacon_and_eggs>,
             <item:farmersdelight:bacon_sandwich>,
             <item:farmersdelight:stuffed_pumpkin>,
             <item:farmersdelight:chicken_sandwich>,
             <item:farmersdelight:dumplings>,
             <item:farmersdelight:fried_rice>,
             <item:farmersdelight:glow_berry_custard>,
             <item:farmersdelight:grilled_salmon>,
             <item:farmersdelight:hamburger>,
             <item:farmersdelight:mutton_wrap>,
             <item:farmersdelight:noodle_soup>,
             <item:farmersdelight:pasta_with_meatballs>,
             <item:farmersdelight:pasta_with_mutton_chop>,
             <item:farmersdelight:roast_chicken>,
             <item:farmersdelight:roasted_mutton_chops>,
             <item:farmersdelight:squid_ink_pasta>,
             <item:farmersdelight:steak_and_potatoes>,
             <item:farmersdelight:honey_glazed_ham>];

for food in toBuy
{
villagerTrades.addTrade(<profession:minecraft:farmer>, 1, (entity, random) => {
    return new MerchantOffer(<item:minecraft:emerald> * (random.nextInt(5)+1), food * 4, 5, 2, 0.05);
});
}
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

//==================================================VillagerTrades that work==================================================================//
//villagerTrades.addTrade(<profession:minecraft:farmer>, 1, (entity, random) => {
// return new MerchantOffer(<item:minecraft:dirt>, <item:minecraft:diamond>, 16, 0, 5); //works for vanilla villagers
// });
//villagerTrades.removeTradesBuying(<profession:minecraft:farmer>, 1, <item:minecraft:potato>);  //works for vanilla villagers
//villagerTrades.addTrade(<profession:minecraft:farmer>, 1, <item:minecraft:diamond> * 2, <item:minecraft:dirt> * 2, <item:minecraft:arrow>, 5, 2, 0.05);  //works for vanilla villagers

//villagerTrades.removeBasicTrade(<profession:minecraft:farmer>, 1, <item:minecraft:bread>); // used mostly for modded recipes and not vanilla villager trades


//remove trades to get emeralds from Farmers
villagerTrades.removeAllTrades(<profession:minecraft:farmer>, 1);
villagerTrades.removeTrade(<profession:minecraft:farmer>, 1, <item:farmersdelight:tomato>, <item:minecraft:emerald>);
villagerTrades.removeTrade(<profession:minecraft:farmer>, 1, <item:farmersdelight:onion>, <item:minecraft:emerald>);


//remove trades to get emeralds from Beekeepers
villagerTrades.removeTrade(<profession:friendsandfoes:beekeeper>, 1, <item:minecraft:sunflower>, <item:minecraft:emerald>);
villagerTrades.removeTrade(<profession:friendsandfoes:beekeeper>, 1, <item:minecraft:dandelion>, <item:minecraft:emerald>);
villagerTrades.removeTrade(<profession:friendsandfoes:beekeeper>, 1, <item:friendsandfoes:buttercup>, <item:minecraft:emerald>);

//add trade to get Busy Bee enchant from Beekeepers
villagerTrades.addTrade(<profession:friendsandfoes:beekeeper>, 1, (entity, random) => 
{
var priceChooser = random.nextInt(3)+1;
if (priceChooser == 3)
{
    return new MerchantOffer(<item:minecraft:emerald> * (random.nextInt(10)+35), <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3, id: "dungeons_gear:busy_bee"}]}), 16, 0, 5) as MerchantOffer;
}
else if (priceChooser == 2)
{
    return new MerchantOffer(<item:minecraft:emerald> * (random.nextInt(10)+25), <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2, id: "dungeons_gear:busy_bee"}]}), 16, 0, 5) as MerchantOffer;
}
else
{
    return new MerchantOffer(<item:minecraft:emerald> * (random.nextInt(10)+15), <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: "dungeons_gear:busy_bee"}]}), 16, 0, 5) as MerchantOffer;
}
});

val villagerPro = [
<profession:blue_skies:alchemist>,
<profession:blue_skies:nightwatcher>,
<profession:blue_skies:shoveler>,
<profession:blue_skies:stargazer>,
<profession:blue_skies:summoner>,
<profession:blue_skies:wrangler>,
<profession:domesticationinnovation:animal_tamer>,
<profession:friendsandfoes:beekeeper>,
<profession:minecraft:armorer>,
<profession:minecraft:butcher>,
<profession:minecraft:cartographer>,
<profession:minecraft:cleric>,
<profession:minecraft:farmer>,
<profession:minecraft:fisherman>,
<profession:minecraft:fletcher>,
<profession:minecraft:leatherworker>,
<profession:minecraft:librarian>,
<profession:minecraft:mason>,
<profession:minecraft:nitwit>,
<profession:minecraft:none>,
<profession:minecraft:shepherd>,
<profession:minecraft:toolsmith>,
<profession:minecraft:weaponsmith>
];

for prof in villagerPro 
{
    villagerTrades.removeTradesSelling(prof, 1, <item:minecraft:emerald>);
}

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
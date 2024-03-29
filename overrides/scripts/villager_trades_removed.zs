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

//==================================================VillagerTrades that work==================================================================//
//villagerTrades.addTrade(<profession:minecraft:farmer>, 1, (entity, random) => {
// return new MerchantOffer(<item:minecraft:dirt>, <item:minecraft:diamond>, 16, 0, 5); //works for vanilla villagers
// });
//villagerTrades.removeTradesBuying(<profession:minecraft:farmer>, 1, <item:minecraft:potato>);  //works for vanilla villagers
//villagerTrades.addTrade(<profession:minecraft:farmer>, 1, <item:minecraft:diamond> * 2, <item:minecraft:dirt> * 2, <item:minecraft:arrow>, 5, 2, 0.05);  //works for vanilla villagers

//villagerTrades.removeBasicTrade(<profession:minecraft:farmer>, 1, <item:minecraft:bread>); // used mostly for modded recipes and not vanilla villager trades

//remove specific item trades for cartographer
villagerTrades.removeTradesSelling(<profession:minecraft:cartographer>, 1, <item:minecraft:emerald>);
villagerTrades.removeTradesSelling(<profession:minecraft:cartographer>, 1, <item:minecraft:map>);

//remove specific item trades for fisherman
villagerTrades.removeTradesSelling(<profession:minecraft:fisherman>, 1, <item:minecraft:emerald>);
villagerTrades.removeTradesSelling(<profession:minecraft:fisherman>, 1, <item:minecraft:cooked_cod>);
villagerTrades.removeTradesSelling(<profession:minecraft:fisherman>, 1, <item:minecraft:cod_bucket>);
    //will specifically leave out tempest pearl since it is a mob drop and you can trade emeralds for these

//remove specific item trades for fletcher
villagerTrades.removeTradesSelling(<profession:minecraft:fletcher>, 1, <item:minecraft:emerald>);
villagerTrades.removeTradesSelling(<profession:minecraft:fletcher>, 1, <item:minecraft:flint>);



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
//<profession:minecraft:cartographer>,
<profession:minecraft:cleric>,
<profession:minecraft:farmer>,
//<profession:minecraft:fisherman>,
<profession:minecraft:fletcher>,
//<profession:minecraft:leatherworker>,
//<profession:minecraft:librarian>,
//<profession:minecraft:mason>,
//<profession:minecraft:nitwit>,
//<profession:minecraft:none>,
//<profession:minecraft:shepherd>,
//<profession:minecraft:toolsmith>,
//<profession:minecraft:weaponsmith>
];

for prof in villagerPro 
{
    villagerTrades.removeAllTrades(prof, 1);
}



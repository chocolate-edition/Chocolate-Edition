//remove specific item trades for cartographer
villagerTrades.removeTradesSelling(<profession:minecraft:cartographer>, 1, <item:minecraft:emerald>);
villagerTrades.removeTradesSelling(<profession:minecraft:cartographer>, 1, <item:minecraft:map>);

//remove specific item trades for fisherman
//will specifically leave out tempest pearl since it is a mob drop and you can trade emeralds for these
villagerTrades.removeTradesSelling(<profession:minecraft:fisherman>, 1, <item:minecraft:emerald>);
villagerTrades.removeTradesSelling(<profession:minecraft:fisherman>, 1, <item:minecraft:cooked_cod>);
villagerTrades.removeTradesSelling(<profession:minecraft:fisherman>, 1, <item:minecraft:cod_bucket>);

//remove specific item trades for fletcher
villagerTrades.removeTradesSelling(<profession:minecraft:fletcher>, 1, <item:minecraft:emerald>);
villagerTrades.removeTradesSelling(<profession:minecraft:fletcher>, 1, <item:minecraft:flint>);


// remove all level 1 trades for these professions
val villagerProfessions = [
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
  <profession:minecraft:cleric>,
  <profession:minecraft:farmer>,
  <profession:minecraft:fletcher>,
  <profession:minecraft:librarian>,
  //<profession:minecraft:fisherman>,
  //<profession:minecraft:cartographer>,
  //<profession:minecraft:leatherworker>,
  //<profession:minecraft:mason>,
  //<profession:minecraft:nitwit>,
  //<profession:minecraft:none>,
  //<profession:minecraft:shepherd>,
  //<profession:minecraft:toolsmith>,
  //<profession:minecraft:weaponsmith>
];

for prof in villagerProfessions {
  villagerTrades.removeAllTrades(prof, 1);
}
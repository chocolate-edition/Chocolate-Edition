import crafttweaker.api.villager.MerchantOffer;
import crafttweaker.api.villager.VillagerProfession;
import math.Functions;
// import crafttweaker.api.villagers.VillagerTrades;

#priority -30

public class TradeConfigs {
  // book prices are calculated as a random number between basePrice * levelMultiplier and rangePrice * levelMultiplier.
  // example: with values 10, 20, 5 prices would be 15-25 for level 1 books, 20-30 for level 2 etc.
  public static val basePrice as int = 10;
  public static val rangePrice as int = 20;
  public static val levelMultiplier as int = 5;

  public static val maxTrades as int = 4;
  public static val xpPerTrade as int = 5;
  public static val tradePriceMultiplier as int = 1;
}

public class Enchantment {
  public this(id as string, maxLevel as int) {
  this.id = id;
  this.maxLevel = maxLevel;
  }
  public val id as string;
  public val maxLevel as int;
}

// define enchantments sellable from which villagers at what levels here.
// level 1-3 books are avalaible from novice, 4 from apprentice and 5 from journeyman
val bookTrades as Enchantment[][VillagerProfession] = {
  <profession:minecraft:fisherman> : [
    new Enchantment("minecraft:aqua_affinity", 1),
    new Enchantment("minecraft:lure", 3),
    new Enchantment("minecraft:luck_of_the_sea", 3),
    new Enchantment("minecraft:respiration", 3),
    new Enchantment("minecraft:loyalty", 3),
    new Enchantment("minecraft:riptide", 3),
    new Enchantment("minecraft:impaling", 5),
  ],
  <profession:minecraft:librarian> : [
    new Enchantment("minecraft:unbreaking", 3),
    new Enchantment("minecraft:thorns", 3),
  ],
  <profession:minecraft:armorer> : [
    new Enchantment("minecraft:protection", 4),
    new Enchantment("minecraft:fire_protection", 4),
    new Enchantment("minecraft:blast_protection", 4),
    new Enchantment("minecraft:projectile_protection", 4),
  ],
  <profession:minecraft:cleric> : [
    new Enchantment("minecraft:flame", 1),
    new Enchantment("minecraft:infinity", 1),
    new Enchantment("minecraft:fire_aspect", 2),
  ],
  <profession:minecraft:weaponsmith> : [
    new Enchantment("minecraft:sharpness", 5),
    new Enchantment("minecraft:smite", 5),
    new Enchantment("minecraft:bane_of_arthropods", 5),
    new Enchantment("minecraft:knockback", 2),
    new Enchantment("minecraft:sweeping", 3),
    new Enchantment("minecraft:looting", 3),
  ],
  <profession:minecraft:toolsmith> : [
    new Enchantment("minecraft:fortune", 3),
    new Enchantment("minecraft:efficiency", 5),
    new Enchantment("minecraft:silk_touch", 1),
  ],
  <profession:minecraft:fletcher> : [
    new Enchantment("minecraft:multishot", 1),
    new Enchantment("minecraft:quick_charge", 3),
    new Enchantment("minecraft:piercing", 3),
    new Enchantment("minecraft:power", 5),
    new Enchantment("minecraft:punch", 2),
  ],
  <profession:minecraft:shepherd> : [
    new Enchantment("minecraft:feather_falling", 4),
  ],
  <profession:minecraft:leatherworker> : [
    new Enchantment("minecraft:depth_strider", 3),
    new Enchantment("minecraft:soul_speed", 3),
    new Enchantment("minecraft:swift_sneak", 3),
    new Enchantment("minecraft:frost_walker", 2),
  ],
};


// adds a trade for the enchantment to the profession. the enchantment will be available at villager level 1 for levels 1-2, 2 for 3-4 and 3 for 5
function AddBookTrade(profession as VillagerProfession, enchantment as Enchantment) as void  {
  villagerTrades.addTrade(profession, Functions.ceil(enchantment.maxLevel/2) as int, (entity, random) => {
    val level = random.nextIntBetweenInclusive(1, enchantment.maxLevel);
    val price = random.nextIntBetweenInclusive(TradeConfigs.basePrice + TradeConfigs.levelMultiplier * level, TradeConfigs.rangePrice + TradeConfigs.levelMultiplier * level);
    return new MerchantOffer(<item:minecraft:emerald> * price, <item:minecraft:book>, <item:minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: level, id: enchantment.id}]}), TradeConfigs.maxTrades, TradeConfigs.xpPerTrade, TradeConfigs.tradePriceMultiplier);
  });
}

// apply trades
//! causes a crash when creating a new world. leaving disabled for now
// for prof, enchants in bookTrades {
//   for enchant in enchants {
//     AddBookTrade(prof, enchant);
//   }
// }

//? ---------Item Trades --------------

//add item trades for the fletcher
villagerTrades.addTrade(<profession:minecraft:fletcher>, 1, 1, <item:minecraft:arrow> * 32, 5, 2, 0.05);



//add item trades for the farmer
val toBuy = [
  <item:farmersdelight:barbecue_stick>,
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
  <item:farmersdelight:honey_glazed_ham>,
];

for food in toBuy {
  villagerTrades.addTrade(<profession:minecraft:farmer>, 1,
    (entity, random) => {
      return new MerchantOffer(<item:minecraft:emerald> * (random.nextInt(5)+1), food * 4, 5, 2, 0.05);
    }
  );
}
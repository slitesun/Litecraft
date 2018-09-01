import crafttweaker.item.IItemStack;

//Steel blend
recipes.remove(<basemetals:steel_blend>);

var hammer = <immersiveengineering:tool>;

val array_plates = [ 
  
  <basemetals:iron_plate>, <basemetals:gold_plate>, <basemetals:copper_plate>, <basemetals:lead_plate>, <basemetals:nickel_plate>, <basemetals:platinum_plate>, 
  <basemetals:silver_plate>, <basemetals:tin_plate>, <basemetals:bronze_plate>, <basemetals:cupronickel_plate>, <basemetals:electrum_plate>, <basemetals:invar_plate>, 
  <basemetals:mithril_plate>, <basemetals:steel_plate>, <modernmetals:aluminum_plate>, <modernmetals:chromium_plate>, <modernmetals:manganese_plate>, <modernmetals:osmium_plate>, 
  <modernmetals:aluminumbrass_plate>, <modernmetals:stainlesssteel_plate>, <modernmetals:iridium_plate>, <modernmetals:plutonium_plate>, <modernmetals:uranium_plate>, <modernmetals:titanium_plate>
] as IItemStack[];

val array_ingots = [ 
  
  <minecraft:iron_ingot>, <minecraft:gold_ingot>, <basemetals:copper_ingot>, <basemetals:lead_ingot>, <basemetals:nickel_ingot>, <basemetals:platinum_ingot>, 
  <basemetals:silver_ingot>, <basemetals:tin_ingot>, <basemetals:bronze_ingot>, <basemetals:cupronickel_ingot>, <basemetals:electrum_ingot>, <basemetals:invar_ingot>, 
  <basemetals:mithril_ingot>, <basemetals:steel_ingot>, <modernmetals:aluminum_ingot>, <modernmetals:chromium_ingot>, <modernmetals:manganese_ingot>, <modernmetals:osmium_ingot>, 
  <modernmetals:aluminumbrass_ingot>, <modernmetals:stainlesssteel_ingot>, <modernmetals:iridium_ingot>, <modernmetals:plutonium_ingot>, <modernmetals:uranium_ingot>, <modernmetals:titanium_ingot>
] as IItemStack[];

for e in array_plates {

  recipes.remove(e);
}

for i, ingots in array_ingots {

  recipes.addShaped(array_plates[i], [[ingots, ingots, hammer]]);
  mods.thermalexpansion.Compactor.addPressRecipe(array_plates[i], ingots, 1000);
}

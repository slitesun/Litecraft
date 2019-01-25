var slag = <thermalfoundation:material:864>;
var hammer = <immersiveengineering:tool>;

//Ore processing rebalanced
furnace.remove(<modernmetals:uranium_ingot>, <modernmetals:uranium_ore>);
furnace.remove(<modernmetals:plutonium_ingot>, <modernmetals:plutonium_ore>);

//Stainless Steel
recipes.addShapeless(<modernmetals:stainlesssteel_blend> * 9, [<ore:dustIron>, <ore:dustIron>, <ore:dustNickel>, <ore:dustIron>, <ore:dustIron>, <ore:dustManganese>, <ore:dustIron>, <ore:dustIron>, <ore:dustChromium>]);
mods.thermalexpansion.InductionSmelter.addRecipe(<modernmetals:stainlesssteel_ingot>, <minecraft:sand>, <modernmetals:stainlesssteel_powder>, 6000, slag, 25);

//Chrome
mods.thermalexpansion.InductionSmelter.addRecipe(<modernmetals:chromium_ingot>, <minecraft:sand>, <modernmetals:chromium_powder>, 5000, slag, 25);

//Manganese
mods.thermalexpansion.InductionSmelter.addRecipe(<modernmetals:manganese_ingot>, <minecraft:sand>, <modernmetals:manganese_powder>, 5000, slag, 25);

//Titanium
mods.thermalexpansion.InductionSmelter.addRecipe(<modernmetals:titanium_ingot>, <minecraft:sand>, <modernmetals:titanium_powder>, 5000, slag, 25);

//Aluminum casing
recipes.addShaped(<modernmetals:aluminum_casing>, [[<ore:plateAluminum>, null, hammer]]);
mods.thermalexpansion.Compactor.addPressRecipe(<modernmetals:aluminum_casing> * 2, <modernmetals:aluminum_plate>, 1000);

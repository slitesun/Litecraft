//
var benitoite = <bigreactors:minerals:1>;
var anglesite = <bigreactors:minerals>;
var lumium_ingot = <thermalfoundation:material:166>;

//Dual-wings remake
recipes.remove(<enderio:item_material:6>);
recipes.addShaped(<enderio:item_material:6>, [[null, <rustic:tallow>, <minecraft:leather>], [<rustic:tallow>, <minecraft:leather>, <minecraft:leather>], [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);

//Wing remake
recipes.remove(<enderio:item_material:7>);
recipes.addShaped(<enderio:item_material:7>, [[null, <ore:ingotSteel>, null], [<enderio:item_material:6>, <ore:ingotSteel>, <enderio:item_material:6>]]);

//Basic Capasitor Bank
recipes.remove(<enderio:block_cap_bank:1>);
recipes.addShaped(<enderio:block_cap_bank:1>, [[null, <ore:ingotConductiveIron>, null], [<ore:battery>, <thermalexpansion:frame:128>, <ore:battery>], [<enderio:item_basic_capacitor>, <ore:ingotConductiveIron>, <enderio:item_basic_capacitor>]]);

//Industrial Powder Coating
recipes.remove(<enderio:item_material:51>);
recipes.addShapeless(<enderio:item_material:51> * 9, [<ore:dustCobalt>, <ore:dustArdite>, <ore:dustOsmium>, <ore:dustTitanium>, <ore:dustTitanium>, <ore:dustTitanium>, <ore:dustTitanium>, <ore:dustTitanium>, <ore:dustTitanium>]);

//Silicone
furnace.addRecipe(<enderio:item_material:5>, <baseminerals:silicon_blend>);
furnace.addRecipe(<enderio:item_material:5>, <baseminerals:silicon_powder>);

//Pulsating Crystall
recipes.remove(<enderio:item_material:14>);
mods.tconstruct.Casting.removeTableRecipe(<enderio:item_material:14>);
//recipes.addShaped(<enderio:item_material:14>, [[<ore:nuggetLumium>, <ore:nuggetPulsatingIron>, <ore:nuggetLumium>], [<ore:nuggetPulsatingIron>, benitoite, <ore:nuggetPulsatingIron>], [<ore:nuggetLumium>, <ore:nuggetPulsatingIron>, <ore:nuggetLumium>]]);

//Vibrant Crystall
recipes.remove(<enderio:item_material:15>);
mods.tconstruct.Casting.removeTableRecipe(<enderio:item_material:15>);
//recipes.addShaped(<enderio:item_material:15>, [[<ore:nuggetEnderium>, <ore:nuggetVibrantAlloy>, <ore:nuggetEnderium>], [<ore:nuggetVibrantAlloy>, anglesite, <ore:nuggetVibrantAlloy>], [<ore:nuggetEnderium>, <ore:nuggetVibrantAlloy>, <ore:nuggetEnderium>]]);

//Flour
recipes.remove(<enderio:item_material:21>);
recipes.addShapeless(<enderio:item_material:21>, [<ore:toolMortarandpestle>, <minecraft:wheat>]);

//End Steel
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_alloy_ingot:8>, lumium_ingot, <minecraft:end_stone> * 4, 4000);


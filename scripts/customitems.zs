// Created by Miha_77

import crafttweaker.item.IItemStack;

import mods.immersiveengineering.Crusher;

import mods.thermalexpansion.Centrifuge;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.InductionSmelter;


var coal_dust = <thermalfoundation:material:768>;
var charcoal_dust = <thermalfoundation:material:769>;

var hammer = <immersiveengineering:tool>;
var wire_cutter = <immersiveengineering:tool:1>;

var array_ingots = [
  //alumite, osgloglas, dark steel, electrical steel, end steel, soularium
  <plustic:alumiteingot>, <plustic:osgloglasingot>, <enderio:item_alloy_ingot:6>, <enderio:item_alloy_ingot>, <enderio:item_alloy_ingot:8>, <enderio:item_alloy_ingot:7>
] as IItemStack[];

var array_plate = [
  <customitems:plate_alumite>, <customitems:plate_osgloglas>, <customitems:plate_dark_steel>, <customitems:plate_electrical_steel>, <customitems:plate_end_steel>, <customitems:plate_soularium>
] as IItemStack[];

for i, ingot in array_ingots{
  recipes.addShaped(array_plate[i], [[ingot], [ingot], [hammer]]);
  Compactor.addPressRecipe(array_plate[i], ingot, 1000);
}

// Glass Plate
InductionSmelter.addRecipe(<customitems:plate_glass>, <jaopca:item_dustquartz> * 4, <minecraft:glass_pane>, 4000);
InductionSmelter.addRecipe(<customitems:plate_glass>, <enderio:item_material:33> * 4, <minecraft:glass_pane>, 4000);

// Reinforced Glass Plate
InductionSmelter.addRecipe(<customitems:plate_reinforced_glass>, <basemetals:obsidian_powder> * 16, <customitems:plate_glass> * 2, 8000);

// Small Heating coil
recipes.addShaped(<customitems:small_heat_coil>, [[<ore:ingotConductiveIron>, <ore:ingotConductiveIron>, wire_cutter]]);

// Carbon dust
Centrifuge.addRecipe([<customitems:dust_carbon> * 64], <basemetals:diamond_powder>, null, 2000);
Centrifuge.addRecipe([<customitems:dust_carbon> * 2], coal_dust, null, 2000);
Centrifuge.addRecipe([<customitems:dust_carbon>], charcoal_dust, null, 2000);

// Alumite dust
recipes.addShapeless(<customitems:dust_alumite> * 9, [<ore:dustAluminum>, <ore:dustAluminum>, <ore:dustIron>, <ore:dustAluminum>, <ore:dustAluminum>, <ore:dustObsidian>, <ore:dustAluminum>, <ore:dustAluminum>, <ore:dustObsidian>]);

// Osgloglas dust
recipes.addShapeless(<customitems:dust_osgloglas> * 3, [<ore:dustOsmium>, <ore:dustRefinedObsidian>, <minecraft:glowstone_dust>]);

// Glass Dust
Pulverizer.removeRecipe(<minecraft:glass>);
Crusher.removeRecipe(<minecraft:sand>);
Pulverizer.addRecipe(<customitems:dust_glass>, <minecraft:glass>, 2000);
Crusher.addRecipe(<customitems:dust_glass>, <minecraft:glass>, 2000);

// Steel Grinding Head
recipes.addShaped(<customitems:grinding_head>, [[<customitems:plate_alumite>, <ore:plateSteel>, <customitems:plate_alumite>], [<ore:plateSteel>, <ore:gemDiamond>, <ore:plateSteel>], [<customitems:plate_alumite>, <ore:plateSteel>, <customitems:plate_alumite>]]);

// Conductive Element (Redstone Alloy)
recipes.addShaped(<customitems:conductive_element_redsrone_alloy>, [[null, hammer, null], [<ore:ingotRedstoneAlloy>, <ore:ingotRedstoneAlloy>, <ore:ingotRedstoneAlloy>]]);

// Conductive Element (Conductive Iron)
recipes.addShaped(<customitems:conductive_element_conductive_iron>, [[null, hammer, null], [<ore:ingotConductiveIron>, <ore:ingotConductiveIron>, <ore:ingotConductiveIron>]]);

// Conductive Element (Energetic Alloy)
recipes.addShaped(<customitems:conductive_element_energetic_alloy>, [[null, hammer, null], [<ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>]]);

// Conductive Element (Pulsating Iron)
recipes.addShaped(<customitems:conductive_element_pulsating_iron>, [[null, hammer, null], [<ore:ingotPulsatingIron>, <ore:ingotPulsatingIron>, <ore:ingotPulsatingIron>]]);

// Conductive Element (Vibrant Alloy)
recipes.addShaped(<customitems:conductive_element_vibrant_alloy>, [[null, hammer, null], [<ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>]]);


































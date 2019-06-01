// --- Created by Miha_77




// --- Imports ---
import mods.gregtech.recipe.RecipeMap;

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;


// --- Variables ---
var circuit_plate = <projectred-core:resource_item>;

var sandy_coal_compound = <projectred-core:resource_item:250>;

var silicon_boule = <projectred-core:resource_item:300>;
var silicon_wafer = <projectred-core:resource_item:301>;

var red_silicon_compound = <projectred-core:resource_item:310>;
var glowing_silicon_compound = <projectred-core:resource_item:311>;
var electrotine_silicon_compound = <projectred-core:resource_item:312>;

var infused_silicon = <projectred-core:resource_item:320>;
var energized_silicon = <projectred-core:resource_item:341>;
var electro_silicon = <projectred-core:resource_item:342>;

var robot_arm_hv = <gregtech:meta_item_1:32652>;
var conveyor_module_hv = <gregtech:meta_item_1:32632>;

var battery_lithium_mv = <gregtech:meta_item_1:32528>;
var cover_interface = <litecraftcore:lc_meta_item:15>;

val list_dyes = [
  <ore:dyeWhite>,     <ore:dyeOrange>, <ore:dyeMagenta>, <ore:dyeLightBlue>, 
  <ore:dyeYellow>,    <ore:dyeLime>,   <ore:dyePink>,    <ore:dyeGray>, 
  <ore:dyeLightGray>, <ore:dyeCyan>,   <ore:dyePurple>,  <ore:dyeBlue>, 
  <ore:dyeBrown>,     <ore:dyeGreen>,  <ore:dyeRed>,     <ore:dyeBlack>
] as IOreDictEntry[];

val list_illumar = [
  <projectred-core:resource_item:500>, <projectred-core:resource_item:501>, <projectred-core:resource_item:502>, <projectred-core:resource_item:503>,
  <projectred-core:resource_item:504>, <projectred-core:resource_item:505>, <projectred-core:resource_item:506>, <projectred-core:resource_item:507>,
  <projectred-core:resource_item:508>, <projectred-core:resource_item:509>, <projectred-core:resource_item:510>, <projectred-core:resource_item:511>,
  <projectred-core:resource_item:512>, <projectred-core:resource_item:513>, <projectred-core:resource_item:514>, <projectred-core:resource_item:515>
] as IItemStack[];

val list_insulated_wire = [
  <projectred-transmission:wire:1>, <projectred-transmission:wire:2>, <projectred-transmission:wire:3>, <projectred-transmission:wire:4>,
  <projectred-transmission:wire:5>, <projectred-transmission:wire:6>, <projectred-transmission:wire:7>, <projectred-transmission:wire:8>,
  <projectred-transmission:wire:9>, <projectred-transmission:wire:10>, <projectred-transmission:wire:11>, <projectred-transmission:wire:12>,
  <projectred-transmission:wire:13>, <projectred-transmission:wire:14>, <projectred-transmission:wire:15>, <projectred-transmission:wire:16>
] as IItemStack[];

val list_carpet = [
  <minecraft:carpet:0>, <minecraft:carpet:1>, <minecraft:carpet:2>, <minecraft:carpet:3>,
  <minecraft:carpet:4>, <minecraft:carpet:5>, <minecraft:carpet:6>, <minecraft:carpet:7>,
  <minecraft:carpet:8>, <minecraft:carpet:9>, <minecraft:carpet:10>, <minecraft:carpet:11>,
  <minecraft:carpet:12>, <minecraft:carpet:13>, <minecraft:carpet:14>, <minecraft:carpet:15>
] as IItemStack[];




// --- Remove Recipes ---


// --- Red Iron Compound
recipes.remove(<projectred-core:resource_item:251>);

// --- Electrotine Iron Compound
recipes.remove(<projectred-core:resource_item:252>);

// --- Sandy Coal Compound
recipes.remove(sandy_coal_compound);

// --- Silicon Boule
furnace.remove(silicon_boule);

// --- Circuit Plate
furnace.remove(circuit_plate);

// --- IC Workbench
recipes.remove(<projectred-fabrication:ic_machine>);

// --- IC Printer
recipes.remove(<projectred-fabrication:ic_machine:1>);

// --- Screwdriver
recipes.remove(<projectred-core:screwdriver>);

// --- Multimeter
recipes.remove(<projectred-core:multimeter>);

// --- Red Alloy Wire
recipes.remove(<projectred-transmission:wire>);

// --- Red Silicon Compound
recipes.remove(red_silicon_compound);

// --- Glowing Silicon Compound
recipes.remove(glowing_silicon_compound);

// --- Electrotine Silicone Compound
recipes.remove(electrotine_silicon_compound);

// --- Infused Silicon
furnace.remove(infused_silicon);

// --- Energized Silicon
furnace.remove(energized_silicon);

// --- Electro Silicone
furnace.remove(electro_silicon);

// --- Silicon Wafer
recipes.remove(silicon_wafer);

// --- IC Chip
recipes.remove(<projectred-fabrication:ic_chip>);


// --- Adding Recipes ---


// --- Assembling Machine Recipes ---
val assembler = RecipeMap.getByName("assembler");

// --- IC Chip
assembler.recipeBuilder()
    .duration(200).EUt(30)
    .inputs(circuit_plate * 2)
    .inputs(silicon_wafer)
    .inputs(<ore:boltGold> * 6)
    .fluidInputs(<liquid:red_alloy> * 144)
    .outputs(<projectred-fabrication:ic_chip>)
    .buildAndRegister();


// --- Alloy Smelter Recipes ---
val alloy_smelter = RecipeMap.getByName("alloy_smelter");

// --- Electrotine Alloy
alloy_smelter.recipeBuilder()
    .duration(200).EUt(30)
    .inputs(<ore:ingotIron>)
    .inputs(<ore:dustElectrotine> * 4)
    .outputs(<projectred-core:resource_item:104>)
    .buildAndRegister();

// -
alloy_smelter.recipeBuilder()
    .duration(200).EUt(30)
    .inputs(<ore:dustIron>)
    .inputs(<ore:dustElectrotine> * 4)
    .outputs(<projectred-core:resource_item:104>)
    .buildAndRegister();

// --- Chemical Reactor Recipes ---
val chemical_reactor = RecipeMap.getByName("chemical_reactor");

// --- Red Silicon Compound
chemical_reactor.recipeBuilder()
    .duration(600).EUt(120)
    .inputs(silicon_wafer)
    .inputs(<ore:dustRedstone> * 8)
    .outputs(red_silicon_compound)
    .buildAndRegister();

// --- Glowing Silicon Compound
chemical_reactor.recipeBuilder()
    .duration(600).EUt(120)
    .inputs(silicon_wafer)
    .inputs(<ore:dustGlowstone> * 8)
    .outputs(glowing_silicon_compound)
    .buildAndRegister();

// --- Electrotine Silicon Compound
chemical_reactor.recipeBuilder()
    .duration(600).EUt(120)
    .inputs(silicon_wafer)
    .inputs(<ore:dustElectrotine> * 8)
    .outputs(electrotine_silicon_compound)
    .buildAndRegister();

// --- Circuit Plate
chemical_reactor.recipeBuilder()
    .duration(600).EUt(30)
    .inputs(<ore:dustStone> * 4)
    .inputs(<ore:plateWood>)
    .fluidInputs(<liquid:glue> * 1000)
    .outputs(circuit_plate)
    .buildAndRegister();


// --- Cutting Machine Recipes ---
val cutting_saw = RecipeMap.getByName("cutting_saw");

// --- Silicon Wafer ---
cutting_saw.recipeBuilder()
    .duration(400).EUt(8)
    .inputs(silicon_boule)
    .outputs(silicon_wafer * 16)
    .buildAndRegister();


// --- EBF Recipes ---
val blast_furnace = RecipeMap.getByName("blast_furnace");

// --- Silicon Boule
blast_furnace.recipeBuilder()
    .duration(9000).EUt(120)
    .inputs(sandy_coal_compound)
    .inputs(<ore:nuggetElectricalSteel>)
    .outputs(silicon_boule)
    .buildAndRegister();


// --- Mixer Recipes ---
val mixer = RecipeMap.getByName("mixer");

for i, e in list_illumar {
    mixer.recipeBuilder()
        .duration(100).EUt(4)
        .inputs(list_dyes[i] * 2)
        .inputs(<ore:dustGlowstone> * 2)
        .outputs(e * 4)
        .buildAndRegister();
}

// --- Red Iron Compound
mixer.recipeBuilder()
    .duration(100).EUt(4)
    .inputs(<ore:ingotCopper>)
    .inputs(<ore:dustRedstone> * 4)
    .outputs(<projectred-core:resource_item:251>)
    .buildAndRegister();

// --- Electrotine Iron Compound
mixer.recipeBuilder()
    .duration(100).EUt(4)
    .inputs(<ore:ingotIron>)
    .inputs(<ore:dustElectrotine> * 4)
    .outputs(<projectred-core:resource_item:252>)
    .buildAndRegister();

// --- Sandy Coal Compound
mixer.recipeBuilder()
    .duration(400).EUt(480)
    .inputs(<ore:dustSand> * 32)
    .inputs(<ore:dustCoal> * 32)
    .outputs(sandy_coal_compound)
    .buildAndRegister();


// --- Precision Laser Engraver Recipes ---
val laser_engraver = RecipeMap.getByName("laser_engraver");


// --- Infused Silicon
laser_engraver.recipeBuilder()
    .duration(200).EUt(120)
    .inputs(red_silicon_compound)
    .notConsumable(<ore:craftingLensRed>)
    .outputs(infused_silicon)
    .buildAndRegister();

// --- Energized Silicon
laser_engraver.recipeBuilder()
    .duration(200).EUt(120)
    .inputs(glowing_silicon_compound)
    .notConsumable(<ore:craftingLensYellow>)
    .outputs(energized_silicon)
    .buildAndRegister();

// --- Infused Silicon
laser_engraver.recipeBuilder()
    .duration(200).EUt(120)
    .inputs(electrotine_silicon_compound)
    .notConsumable(<ore:craftingLensBlue>)
    .outputs(electro_silicon)
    .buildAndRegister();


// --- Unpacker Recipes ---
val unpacker = RecipeMap.getByName("unpacker");

// --- Red Alloy Wire
unpacker.recipeBuilder()
    .inputs(<ore:projredInsulatedWire>)
    .outputs(<projectred-transmission:wire>)
    .buildAndRegister();


// --- Crafting Recipes ---


// --- IC Workbench
recipes.addShaped(<projectred-fabrication:ic_machine>, 
[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 
[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], 
[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// --- IC Printer
recipes.addShaped(<projectred-fabrication:ic_machine:1>, 
[[<ore:stickStainlessSteel>, <minecraft:glass>, <ore:stickStainlessSteel>], 
[robot_arm_hv, <projectred-fabrication:ic_machine>, robot_arm_hv], 
[conveyor_module_hv, <ore:circuitAdvanced>, conveyor_module_hv]]);

// --- Screwdriver
recipes.addShaped(<projectred-core:screwdriver>, 
[[null, <ore:craftingToolFile>, <ore:stickIron>], 
[<ore:dyeBlue>, <ore:stickIron>, <ore:craftingToolHardHammer>], 
[<ore:stickWood>, <ore:dyeBlue>, null]]);

// --- Multimeter
recipes.addShaped(<projectred-core:multimeter>, 
[[<ore:cableGtSingleRedAlloy>, <ore:plateAluminium>, <ore:cableGtSingleRedAlloy>], 
[<ore:circuitGood>, cover_interface, <ore:circuitGood>], 
[<ore:plateAluminium>, battery_lithium_mv, <ore:plateAluminium>]]);

// --- Red Alloy Wire
recipes.addShapeless(<projectred-transmission:wire>, [<ore:wireGtSingleRedAlloy>]);
//-
recipes.addShapeless(<projectred-transmission:wire>, [<ore:wireGtSingleRedstoneAlloy>]);

// --- Insulated Wire
for i, e in list_insulated_wire {
  recipes.remove(e);
  recipes.addShapeless(e, [<projectred-transmission:wire>, list_carpet[i], <ore:string>]);
  recipes.addShapeless(e, [list_dyes[i], <ore:projredInsulatedWire>]);
}

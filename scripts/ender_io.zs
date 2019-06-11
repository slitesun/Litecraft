// --- Created by Miha_77 ---



// --- Imports ---
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.tconstruct.Casting;
import mods.enderio.AlloySmelter;
import mods.gregtech.recipe.RecipeMap;



// --- Variables ---
var benitoite = <bigreactors:mineralbenitoite>;
var anglesite = <bigreactors:mineralanglesite>;
var glass_cable = <appliedenergistics2:part:16>;

var hv_machine_hull = <gregtech:machine:503>;
var small_battery_lithium = <gregtech:meta_item_1:32518>;
var motor_lv = <gregtech:meta_item_1:32600>;
var robot_arm_lv = <gregtech:meta_item_1:32650>;
var conveyor_lv = <gregtech:meta_item_1:32630>;

var mold_block = <gregtech:meta_item_1:32308>;

var dynamite = <gregtech:meta_item_1:32629>;

val list_items = [
  <enderio:item_item_conduit>, <enderio:item_liquid_conduit>, <enderio:item_liquid_conduit:1>, <enderio:item_liquid_conduit:2>, <enderio:item_power_conduit>, 
  <enderio:item_power_conduit:1>, <enderio:item_power_conduit:2>, <enderio:item_redstone_conduit>, <enderio:item_me_conduit>, <enderio:item_me_conduit:1>
] as IItemStack[];

val crafting_item_list_ore_dict = [
  <ore:nuggetPulsatingIron>, <ore:fusedGlass>, <ore:fusedQuartz>
] as IOreDictEntry[];

val crafting_item_list = [
  <ore:wireGtDoubleConductiveIron>, <ore:wireGtDoubleEnergeticAlloy>, <ore:wireGtDoubleVibrantAlloy>, <ore:wireGtDoubleRedstoneAlloy>
] as IOreDictEntry[];




// --- Remove Recipes ---

for e in list_items {
  recipes.remove(e);
}

// --- Solar Panels
recipes.remove(<enderio:block_solar_panel:1>);
recipes.remove(<enderio:block_solar_panel:2>);
recipes.remove(<enderio:block_solar_panel:3>);

// --- Dual-wings
recipes.remove(<enderio:item_material:6>);

// --- Wing remake
recipes.remove(<enderio:item_material:7>);

// --- Basic Capasitor Bank
recipes.remove(<enderio:block_cap_bank:1>);

// --- Flour
recipes.remove(<enderio:item_material:21>);

// --- Pulsating Crystall
recipes.remove(<enderio:item_material:14>);
Casting.removeTableRecipe(<enderio:item_material:14>);

// --- Vibrant Crystall
recipes.remove(<enderio:item_material:15>);
Casting.removeTableRecipe(<enderio:item_material:15>);

// --- Infinity Bimetal Gear
recipes.remove(<enderio:item_material:11>);
Casting.removeTableRecipe(<enderio:item_material:11>);

// --- Energized Bimetal Gear
recipes.remove(<enderio:item_material:12>);
Casting.removeTableRecipe(<enderio:item_material:12>);

// --- Vibrant Bimetal Gear
recipes.remove(<enderio:item_material:13>);
Casting.removeTableRecipe(<enderio:item_material:13>);

// --- Dark Bimetal Gear
recipes.remove(<enderio:item_material:73>);
Casting.removeTableRecipe(<enderio:item_material:73>);

// --- Simple Machine Chassis
recipes.remove(<enderio:item_material>);

// --- Industrial Machine Chassis
recipes.remove(<enderio:item_material:1>);

// --- Soul Machine Chassis
recipes.remove(<enderio:item_material:53>);

// --- Enhanced Machine Chassis
recipes.remove(<enderio:item_material:54>);

// --- End Steel Chassis
recipes.remove(<enderio:item_material:66>);

// --- Dark Steel Bars
recipes.remove(<enderio:block_dark_iron_bars>);

// --- End Steel Bars
recipes.remove(<enderio:block_end_iron_bars>);

// --- Electrical Steel
furnace.remove(<ore:ingotElectricalSteel>);

// --- Energetic Alloy
furnace.remove(<ore:ingotEnergeticAlloy>);

// --- Vibrant Alloy
furnace.remove(<ore:ingotVibrantAlloy>);

// --- Pulsating Iron
furnace.remove(<ore:ingotPulsatingIron>);

// --- Dark Steel
furnace.remove(<ore:ingotDarkSteel>);

// --- Soularium
furnace.remove(<ore:ingotSoularium>);

// --- End Steel
furnace.remove(<ore:ingotEndSteel>);

// --- Confusion Charge
recipes.remove(<enderio:block_confusion_charge>);

// --- Ender Charge
recipes.remove(<enderio:block_ender_charge>);

// --- Concussion Charge
recipes.remove(<enderio:block_concussion_charge>);

// --- Simple Powered Furnace
recipes.remove(<enderio:block_simple_furnace>);

// --- Simple Alloy Smelter
recipes.remove(<enderio:block_simple_alloy_smelter>);

// --- Simple Striling Generator
recipes.remove(<enderio:block_simple_stirling_generator>);

// --- Simple SAG Mill
recipes.remove(<enderio:block_simple_sag_mill>);

// --- Simple Wired Charger
recipes.remove(<enderio:block_simple_wired_charger>);

// --- Simple Crafter
recipes.remove(<enderio:block_simple_crafter>);




// --- Added Recipes ---
for i, conduit in list_items {
  if(i < 3){
    recipes.addShaped(conduit * 4, 
      [[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
      [crafting_item_list_ore_dict[i], crafting_item_list_ore_dict[i], crafting_item_list_ore_dict[i]], 
      [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
  } else if (i == 3) {
    recipes.addShaped(conduit * 4, 
      [[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
      [crafting_item_list_ore_dict[i - 1], crafting_item_list[i - 1], crafting_item_list_ore_dict[i - 1]], 
      [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
  } else if (i >= 4 && i < 8) {
    recipes.addShaped(conduit * 4, 
      [[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
      [crafting_item_list[i - 4], crafting_item_list[i - 4], crafting_item_list[i - 4]], 
      [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
  } else if (i == 8) {
    recipes.addShaped(conduit * 4, 
      [[<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>], 
      [glass_cable, glass_cable, glass_cable], 
      [<ore:itemConduitBinder>, <ore:itemConduitBinder>, <ore:itemConduitBinder>]]);
  } else {
    recipes.addShaped(conduit * 4, 
      [[<ore:itemConduitBinder>, <enderio:item_me_conduit>, <ore:itemConduitBinder>], 
      [<enderio:item_me_conduit>, <ore:itemConduitBinder>, <enderio:item_me_conduit>], 
      [<ore:itemConduitBinder>, <enderio:item_me_conduit>, <ore:itemConduitBinder>]]);
  }
}


// --- Dark Steel Bars
recipes.addShaped(<enderio:block_dark_iron_bars> * 8, 
[[null, <ore:craftingToolWrench>, null], 
[<ore:stickDarkSteel>, <ore:stickDarkSteel>, <ore:stickDarkSteel>], 
[<ore:stickDarkSteel>, <ore:stickDarkSteel>, <ore:stickDarkSteel>]]);

// --- End Steel Bars
recipes.addShaped(<enderio:block_end_iron_bars> * 8, 
[[null, <ore:craftingToolWrench>, null], 
[<ore:stickEndSteel>, <ore:stickEndSteel>, <ore:stickEndSteel>], 
[<ore:stickEndSteel>, <ore:stickEndSteel>, <ore:stickEndSteel>]]);

// --- Infinity Bimetal Gear
recipes.addShaped(<enderio:item_material:11>, 
[[<ore:dustBedrock>, <ore:plateConstructionAlloy>, <ore:dustBedrock>], 
[<ore:plateConstructionAlloy>, <ore:gearIron>, <ore:plateConstructionAlloy>], 
[<ore:craftingToolFile>, <ore:plateConstructionAlloy>, <ore:craftingToolHardHammer>]]);

// --- Energized Bimetal Gear
recipes.addShaped(<enderio:item_material:12>, 
[[null, <ore:plateEnergeticAlloy>, null], 
[<ore:plateEnergeticAlloy>, <ore:gearIronInfinity>, <ore:plateEnergeticAlloy>], 
[<ore:craftingToolFile>, <ore:plateEnergeticAlloy>, <ore:craftingToolHardHammer>]]);
// -
Casting.addTableRecipe(<enderio:item_material:12>, <ore:gearIronInfinity>, <liquid:energetic_alloy>, 576, true);

// --- Vibrant Bimetal Gear
recipes.addShaped(<enderio:item_material:13>, 
[[null, <ore:plateVibrantAlloy>, null], 
[<ore:plateVibrantAlloy>, <ore:gearIronInfinity>, <ore:plateVibrantAlloy>], 
[<ore:craftingToolFile>, <ore:plateVibrantAlloy>, <ore:craftingToolHardHammer>]]);
// -
Casting.addTableRecipe(<enderio:item_material:13>, <ore:gearIronInfinity>, <liquid:vibrant_alloy>, 576, true);

// --- Dark Bimetal Gear
recipes.addShaped(<enderio:item_material:73>, 
[[null, <ore:plateDarkSteel>, null], 
[<ore:plateDarkSteel>, <ore:gearIronInfinity>, <ore:plateDarkSteel>], 
[<ore:craftingToolFile>, <ore:plateDarkSteel>, <ore:craftingToolHardHammer>]]);
// -
Casting.addTableRecipe(<enderio:item_material:73>, <ore:gearIronInfinity>, <liquid:dark_steel>, 576, true);


// --- Simple Machines 

// --- Simple Powered Furnace
recipes.addShaped(<enderio:block_simple_furnace>, 
[[<ore:plateConstructionAlloy>, <ore:craftingFurnace>, <ore:plateConstructionAlloy>], 
[<ore:cableGtSingleTin>, <ore:itemSimpleMachineChassi>, <ore:cableGtSingleTin>], 
[<ore:gearStone>, <ore:craftingFurnace>, <ore:gearStone>]]);

// --- Simple Alloy Smelter
recipes.addShaped(<enderio:block_simple_alloy_smelter>, 
[[<ore:wireGtDoubleCopper>, <ore:cableGtSingleTin>, <ore:wireGtDoubleCopper>], 
[<ore:craftingFurnace>, <ore:itemSimpleMachineChassi>, <ore:craftingFurnace>], 
[<ore:gearStone>, <ore:cableGtSingleTin>, <ore:gearStone>]]);

// --- Simple Striling Generator
recipes.addShaped(<enderio:block_simple_stirling_generator>, 
[[<ore:stickCopper>, <ore:plateConstructionAlloy>, <ore:stickCopper>], 
[<ore:stickIronMagnetic>, <ore:itemSimpleMachineChassi>, <ore:stickIronMagnetic>], 
[<ore:gearStone>, motor_lv, <ore:gearStone>]]);

// --- Simple SAG Mill
recipes.addShaped(<enderio:block_simple_sag_mill>, 
[[<ore:gemDiamond>, <ore:craftingPiston>, <ore:gemDiamond>], 
[<ore:cableGtSingleTin>, <ore:itemSimpleMachineChassi>, <ore:cableGtSingleTin>], 
[<ore:gearStone>, <ore:craftingPiston>, <ore:gearStone>]]);

// --- Simple Wired Charger
recipes.addShaped(<enderio:block_simple_wired_charger>, 
[[<ore:cableGtDoubleConstructionAlloy>, <ore:cableGtSingleTin>, <ore:cableGtDoubleConstructionAlloy>], 
[<ore:cableGtSingleTin>, <ore:itemSimpleMachineChassi>, <ore:cableGtSingleTin>], 
[<ore:gearStone>, <ore:cableGtSingleTin>, <ore:gearStone>]]);

// --- Simple Crafter
recipes.addShaped(<enderio:block_simple_crafter>, 
[[robot_arm_lv, <ore:cableGtSingleTin>, robot_arm_lv], 
[conveyor_lv, <ore:itemSimpleMachineChassi>, conveyor_lv], 
[<ore:gearStone>, <avaritia:compressed_crafting_table>, <ore:gearStone>]]);




// --- Dual-wings remake
//recipes.addShaped(<enderio:item_material:6>, [[null, <rustic:tallow>, <minecraft:leather>], [<rustic:tallow>, <minecraft:leather>, <minecraft:leather>], [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);

// --- Wing remake
//recipes.addShaped(<enderio:item_material:7>, [[null, <ore:ingotSteel>, null], [<enderio:item_material:6>, <ore:ingotSteel>, <enderio:item_material:6>]]);

// --- Basic Capasitor Bank
recipes.addShaped(<enderio:block_cap_bank:1>, [[null, <ore:ingotConductiveIron>, null], [small_battery_lithium, hv_machine_hull, small_battery_lithium], [<enderio:item_basic_capacitor>, <ore:ingotConductiveIron>, <enderio:item_basic_capacitor>]]);

// --- Assembler Recipes ---
val assembler = RecipeMap.getByName("assembler");


// --- Dark Steel Bars
assembler.recipeBuilder()
    .duration(300).EUt(4)
    .property("circuit", 3)
    .inputs(<ore:stickDarkSteel> * 3)
    .outputs(<enderio:block_dark_iron_bars> * 4)
    .buildAndRegister();

// --- End Steel Bars
assembler.recipeBuilder()
    .duration(300).EUt(4)
    .property("circuit", 3)
    .inputs(<ore:stickEndSteel> * 3)
    .outputs(<enderio:block_end_iron_bars> * 4)
    .buildAndRegister();
    

// --- Confusion Charge
assembler.recipeBuilder()
    .duration(400).EUt(120)
    .inputs(<ore:plateWood> * 6)
    .inputs(dynamite)
    .inputs(<ore:dustGunpowder> * 2)
    .inputs(<ore:itemConfusingDust> * 8)
    .fluidInputs(<liquid:glue> * 300)
    .outputs(<enderio:block_confusion_charge>)
    .buildAndRegister();

// --- Ender Charge
assembler.recipeBuilder()
    .duration(400).EUt(120)
    .inputs(<ore:plateWood> * 6)
    .inputs(dynamite)
    .inputs(<ore:dustGunpowder> * 2)
    .inputs(<ore:itemEnderFragment> * 4)
    .fluidInputs(<liquid:glue> * 300)
    .outputs(<enderio:block_ender_charge>)
    .buildAndRegister();

// --- Concussion Charge
assembler.recipeBuilder()
    .duration(400).EUt(120)
    .inputs(<ore:plateWood> * 6)
    .inputs(<ore:platePaper> * 2)
    .inputs(<ore:dustGunpowder> * 4)
    .inputs(<ore:itemConfusingDust> * 3)
    .inputs(<ore:itemEnderFragment> * 3)
    .fluidInputs(<liquid:glue> * 300)
    .outputs(<enderio:block_concussion_charge>)
    .buildAndRegister();

// --- Simple Machine Chassis
assembler.recipeBuilder()
    .duration(400).EUt(30)
    .inputs(<ore:dustBedrock> * 4)
    .inputs(<ore:barsConstructionAlloy> * 6)
    .inputs(<ore:plateConstructionAlloy> * 2)
    .fluidInputs(<liquid:soldering_alloy> * 288)
    .outputs(<enderio:item_material>)
    .buildAndRegister();

// --- Industrial Machine Chassis
assembler.recipeBuilder()
    .duration(400).EUt(480)
    .inputs(<ore:dyeMachine> * 4)
    .inputs(<ore:barsStainlessSteel> * 6)
    .inputs(<ore:plateStainlessSteel> * 2)
    .fluidInputs(<liquid:soldering_alloy> * 288)
    .outputs(<enderio:item_material:1>)
    .buildAndRegister();

// --- Soul Machine Chassis
assembler.recipeBuilder()
    .duration(400).EUt(480)
    .inputs(<ore:dyeSoulMachine> * 4)
    .inputs(<ore:barsSoularium> * 6)
    .inputs(<ore:plateSoularium> * 2)
    .fluidInputs(<liquid:soldering_alloy> * 288)
    .outputs(<enderio:item_material:53>)
    .buildAndRegister();

// --- Enhanced Machine Chassis
assembler.recipeBuilder()
    .duration(400).EUt(1920)
    .inputs(<ore:dyeEnhancedMachine> * 4)
    .inputs(<ore:barsTitanium> * 6)
    .inputs(<ore:plateTitanium> * 2)
    .fluidInputs(<liquid:soldering_alloy> * 288)
    .outputs(<enderio:item_material:54>)
    .buildAndRegister();

// --- End Steel Chassis
assembler.recipeBuilder()
    .duration(400).EUt(1920)
    .inputs(<ore:dustBedrock> * 4)
    .inputs(<ore:barsEndSteel> * 6)
    .inputs(<ore:plateEndSteel> * 2)
    .fluidInputs(<liquid:soldering_alloy> * 288)
    .outputs(<enderio:item_material:66>)
    .buildAndRegister();


// --- Alloy Smelter Recipes ---
val alloy_smelter = RecipeMap.getByName("alloy_smelter");

// --- Construcion Alloy
alloy_smelter.recipeBuilder()
    .duration(200).EUt(16)
    .inputs(<ore:dustTinAlloy> * 8)
    .inputs(<ore:dustSilicon>)
    .outputs(<enderio:item_alloy_ingot:9> * 9)
    .buildAndRegister();
//-
alloy_smelter.recipeBuilder()
    .duration(200).EUt(16)
    .inputs(<ore:ingotTinAlloy> * 8)
    .inputs(<ore:ingotSilicon>)
    .outputs(<enderio:item_alloy_ingot:9> * 9)
    .buildAndRegister();
//-
alloy_smelter.recipeBuilder()
    .duration(200).EUt(16)
    .inputs(<ore:ingotTinAlloy> * 8)
    .inputs(<ore:dustSilicon>)
    .outputs(<enderio:item_alloy_ingot:9> * 9)
    .buildAndRegister();
//-
alloy_smelter.recipeBuilder()
    .duration(200).EUt(16)
    .inputs(<ore:dustTinAlloy> * 8)
    .inputs(<ore:ingotSilicon>)
    .outputs(<enderio:item_alloy_ingot:9> * 9)
    .buildAndRegister();

// --- Fused Quartz
alloy_smelter.recipeBuilder()
    .duration(200).EUt(16)
    .inputs(<ore:dustQuartz> * 4)
    .notConsumable(mold_block)
    .outputs(<enderio:block_fused_quartz>)
    .buildAndRegister();
// -
alloy_smelter.recipeBuilder()
    .duration(300).EUt(16)
    .inputs(<ore:gemQuartz> * 4)
    .notConsumable(mold_block)
    .outputs(<enderio:block_fused_quartz>)
    .buildAndRegister();
// -
alloy_smelter.recipeBuilder()
    .duration(400).EUt(24)
    .inputs(<ore:blockNetherQuartz>)
    .notConsumable(mold_block)
    .outputs(<enderio:block_fused_quartz>)
    .buildAndRegister();

// --- Enlightened Fused Quartz

alloy_smelter.recipeBuilder()
    .duration(400).EUt(24)
    .inputs(<ore:gemQuartz> * 4)
    .inputs(<ore:glowstone>)
    .outputs(<enderio:block_enlightened_fused_quartz>)
    .buildAndRegister();
// - 
alloy_smelter.recipeBuilder()
    .duration(400).EUt(24)
    .inputs(<ore:dustQuartz> * 4)
    .inputs(<ore:dustGlowstone> * 4)
    .outputs(<enderio:block_enlightened_fused_quartz>)
    .buildAndRegister();
// - 
alloy_smelter.recipeBuilder()
    .duration(400).EUt(24)
    .inputs(<ore:gemQuartz> * 4)
    .inputs(<ore:glowstone>)
    .outputs(<enderio:block_enlightened_fused_quartz>)
    .buildAndRegister();
// - 
alloy_smelter.recipeBuilder()
    .duration(400).EUt(24)
    .inputs(<ore:dustQuartz> * 4)
    .inputs(<ore:glowstone>)
    .outputs(<enderio:block_enlightened_fused_quartz>)
    .buildAndRegister();
// - 
alloy_smelter.recipeBuilder()
    .duration(400).EUt(24)
    .inputs(<enderio:block_fused_quartz>)
    .inputs(<ore:glowstone>)
    .outputs(<enderio:block_enlightened_fused_quartz>)
    .buildAndRegister();
// - 
alloy_smelter.recipeBuilder()
    .duration(400).EUt(24)
    .inputs(<enderio:block_fused_quartz>)
    .inputs(<ore:dustGlowstone> * 4)
    .outputs(<enderio:block_enlightened_fused_quartz>)
    .buildAndRegister();
// - 
alloy_smelter.recipeBuilder()
    .duration(400).EUt(24)
    .inputs(<ore:blockNetherQuartz>)
    .inputs(<ore:dustGlowstone> * 4)
    .outputs(<enderio:block_enlightened_fused_quartz>)
    .buildAndRegister();
// - 
alloy_smelter.recipeBuilder()
    .duration(400).EUt(24)
    .inputs(<ore:blockNetherQuartz>)
    .inputs(<ore:glowstone>)
    .outputs(<enderio:block_enlightened_fused_quartz>)
    .buildAndRegister();
















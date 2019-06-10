// --- Created by Miha_77 ---




// --- Imports ---
import mods.appliedenergistics2.Inscriber;

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.gregtech.recipe.RecipeMap;




// --- Variables ---
var glass_cable                 = <appliedenergistics2:part:16>;
var dens_smart_cable            = <appliedenergistics2:part:76>;
var toggle_bus                  = <appliedenergistics2:part:80>;
var quartz_fiber                = <appliedenergistics2:part:140>;
var illuminated_panel           = <appliedenergistics2:part:180>;

var ME_storage_bus              = <appliedenergistics2:part:220>;
var ME_fluid_storage_bus        = <appliedenergistics2:part:221>;

var ME_import_bus               = <appliedenergistics2:part:240>;
var ME_fluid_import_bus         = <appliedenergistics2:part:241>;

var ME_export_bus               = <appliedenergistics2:part:260>;
var ME_fluid_export_bus         = <appliedenergistics2:part:261>;

var ME_annihilation_plane       = <appliedenergistics2:part:300>;
var ME_fluid_annihilation_plane = <appliedenergistics2:part:302>;

var ME_formation_plane          = <appliedenergistics2:part:320>;
var ME_fluid_formation_plane    = <appliedenergistics2:part:321>;

var ME_pattern_terminal         = <appliedenergistics2:part:340>;
var ME_crafting_terminal        = <appliedenergistics2:part:360>;
var ME_terminal                 = <appliedenergistics2:part:380>;

var ME_storage_monitor          = <appliedenergistics2:part:400>;
var ME_interface_non_cube       = <appliedenergistics2:part:440>;
var p2p_tunnel                  = <appliedenergistics2:part:460>;
var ME_interface_terminal       = <appliedenergistics2:part:480>;
var ME_fluid_terminal           = <appliedenergistics2:part:520>;

var charged_certus_quartz = <appliedenergistics2:material:1>;

val calculation_press = <appliedenergistics2:material:13>;
val engineering_press = <appliedenergistics2:material:14>;
val logic_press       = <appliedenergistics2:material:15>;
val silicon_press     = <appliedenergistics2:material:19>;

val printed_calculation_circuit = <appliedenergistics2:material:16>;
val printed_engineering_circuit = <appliedenergistics2:material:17>;
val printed_logic_circuit       = <appliedenergistics2:material:18>;
val printed_silicon             = <appliedenergistics2:material:20>;

var logic_processor       = <appliedenergistics2:material:22>;
var calculation_processor = <appliedenergistics2:material:23>;
var engineering_processor = <appliedenergistics2:material:24>;

var basic_card            = <appliedenergistics2:material:25>;
var advanced_card         = <appliedenergistics2:material:28>;

var storage_component_1k  = <appliedenergistics2:material:35>;
var storage_component_4k  = <appliedenergistics2:material:36>;
var storage_component_16k = <appliedenergistics2:material:37>;
var storage_component_64k = <appliedenergistics2:material:38>;

var ME_storage_housing    = <appliedenergistics2:material:39>;

var wireless_reciever     = <appliedenergistics2:material:41>;
var wireless_booster      = <appliedenergistics2:material:42>;

var formation_core        = <appliedenergistics2:material:43>;
var annihilation_core     = <appliedenergistics2:material:44>;

var blank_pattern         = <appliedenergistics2:material:52>;

var fluid_storage_component_1k  = <appliedenergistics2:material:54>;
var fluid_storage_component_4k  = <appliedenergistics2:material:55>;
var fluid_storage_component_16k = <appliedenergistics2:material:56>;
var fluid_storage_component_64k = <appliedenergistics2:material:57>;

var piston_EV        = <gregtech:meta_item_1:32643>;
var casing           = <gregtech:machine:504>;
var interface        = <litecraftcore:lc_meta_item:15>;
var data_stick       = <gregtech:meta_item_1:32708>;
var energy_crystall  = <gregtech:meta_item_2:32212>;
var circuit_fluid    = <litecraftcore:lc_meta_item:18>;
var ae_circuit       = <litecraftcore:lc_meta_item:16>;
var adv_ae_circuit   = <litecraftcore:lc_meta_item:17>;

var core_storage_component         = <litecraftcore:lc_meta_item:12>;
var core_fluid_storage_component   = <litecraftcore:lc_meta_item:13>;
var core_spatial_storage_component = <litecraftcore:lc_meta_item:14>;

val list_items = [
  <appliedenergistics2:quartz_glass>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_fixture>, <appliedenergistics2:sky_compass>, <appliedenergistics2:inscriber>, 
  <appliedenergistics2:charger>, <appliedenergistics2:security_station>, <appliedenergistics2:quantum_ring>, <appliedenergistics2:drive>, <appliedenergistics2:chest>, 
  <appliedenergistics2:interface>, <appliedenergistics2:cell_workbench>, <appliedenergistics2:io_port>, <appliedenergistics2:condenser>, <appliedenergistics2:energy_acceptor>, 
  <appliedenergistics2:vibration_chamber>, <appliedenergistics2:quartz_growth_accelerator>, <appliedenergistics2:energy_cell>, <appliedenergistics2:energy_cell>, <appliedenergistics2:molecular_assembler>, 
  <appliedenergistics2:entropy_manipulator>, <appliedenergistics2:color_applicator>, <appliedenergistics2:biometric_card>, <appliedenergistics2:memory_card>, <appliedenergistics2:charged_staff>, 
  ME_storage_housing, <appliedenergistics2:view_cell>, <appliedenergistics2:crafting_unit>, basic_card, advanced_card, 
  wireless_booster, wireless_reciever, ME_annihilation_plane, ME_formation_plane, p2p_tunnel, 
  quartz_fiber, ME_crafting_terminal, ME_interface_terminal, ME_pattern_terminal, ME_terminal,
  illuminated_panel, ME_storage_monitor, toggle_bus, ME_storage_bus, ME_import_bus, 
  ME_export_bus, <appliedenergistics2:controller>, <appliedenergistics2:spatial_io_port>, <appliedenergistics2:spatial_pylon>, <appliedenergistics2:certus_quartz_cutting_knife>, 
  <appliedenergistics2:nether_quartz_cutting_knife>, blank_pattern, ME_fluid_storage_bus, ME_fluid_import_bus, 
  ME_fluid_export_bus, ME_fluid_annihilation_plane, ME_fluid_formation_plane, ME_fluid_terminal, 
  annihilation_core, formation_core, <appliedenergistics2:matter_cannon>, <appliedenergistics2:fluid_interface>, <appliedenergistics2:light_detector>
] as IItemStack[];

val circuits = [     
  <ore:circuitBasic>, <ore:circuitGood>, <ore:circuitAdvanced>, <ore:circuitElite>
] as IOreDictEntry[];

val processors = [
  logic_processor, calculation_processor, engineering_processor, engineering_processor
] as IItemStack[];

val storage_components = [
  data_stick, storage_component_1k, storage_component_4k, storage_component_16k, storage_component_64k
] as IItemStack[];

val fluid_storage_components = [
  data_stick, fluid_storage_component_1k, fluid_storage_component_4k, fluid_storage_component_16k, fluid_storage_component_64k
] as IItemStack[];

val spatial_storage_components = [
  // Data Stick                       2 ^ 3                              16 ^ 3                             128 ^ 3
  data_stick, <appliedenergistics2:material:32>, <appliedenergistics2:material:33>, <appliedenergistics2:material:34>
] as IItemStack[];

val storage_cells = [
  <appliedenergistics2:storage_cell_1k>, <appliedenergistics2:storage_cell_4k>, <appliedenergistics2:storage_cell_16k>, <appliedenergistics2:storage_cell_64k>
] as IItemStack[];

val fluid_storage_cells = [
  <appliedenergistics2:fluid_storage_cell_1k>, <appliedenergistics2:fluid_storage_cell_4k>, <appliedenergistics2:fluid_storage_cell_16k>, <appliedenergistics2:fluid_storage_cell_64k>
] as IItemStack[];

val spatial_storage_cells = [
  <appliedenergistics2:spatial_storage_cell_2_cubed>, <appliedenergistics2:spatial_storage_cell_16_cubed>, <appliedenergistics2:spatial_storage_cell_128_cubed>
] as IItemStack[];

val list_inscriber_item_recipes = [
  calculation_press, engineering_press, logic_press, silicon_press, 
  printed_calculation_circuit, printed_engineering_circuit, printed_logic_circuit, printed_silicon, 
  logic_processor, calculation_processor, engineering_processor
] as IItemStack[];




// --- Remove Recipes ---
for i, e in list_items {
  recipes.remove(e);

  if (i < 3) {
    recipes.remove(spatial_storage_cells[i]);
    recipes.remove(spatial_storage_components[i + 1]);
  }

  if (i < 4) {
    recipes.remove(storage_cells[i]);
    recipes.remove(storage_components[i + 1]);

    recipes.remove(fluid_storage_cells[i]);
    recipes.remove(fluid_storage_components[i + 1]);
  }

  if (i < 11) {
    Inscriber.removeRecipe(list_inscriber_item_recipes[i]);  
  }
}




// --- Adding Recipes --- 

// --- Alloy Smelter Recipes ---
val alloy_smelter = RecipeMap.getByName("alloy_smelter");

// --- Quartz glass
alloy_smelter.recipeBuilder()
    .duration(100).EUt(120)
    .inputs(<ore:blockGlass> * 2)
    .inputs(<ore:dustCertusQuartz>)
    .outputs(<appliedenergistics2:quartz_glass>)
    .buildAndRegister();

//-
alloy_smelter.recipeBuilder()
    .duration(100).EUt(120)
    .inputs(<ore:blockGlass> * 2)
    .inputs(<ore:dustNetherQuartz>)
    .outputs(<appliedenergistics2:quartz_glass>)
    .buildAndRegister();

// --- Vibrant glass
alloy_smelter.recipeBuilder()
    .duration(100).EUt(120)
    .inputs(<appliedenergistics2:quartz_glass>)
    .inputs(<ore:dustGlowstone> * 4)
    .outputs(<appliedenergistics2:quartz_vibrant_glass>)
    .buildAndRegister();


// --- Assembler Recipes ---
val assembler = RecipeMap.getByName("assembler");

// Calculation Processor
assembler.recipeBuilder()
    .duration(100).EUt(480)
    .inputs(printed_calculation_circuit)
    .inputs(printed_silicon)
    .fluidInputs(<liquid:redstone> * 144)
    .outputs(calculation_processor)
    .buildAndRegister();

// Engineering Processor
assembler.recipeBuilder()
    .duration(100).EUt(480)
    .inputs(printed_engineering_circuit)
    .inputs(printed_silicon)
    .fluidInputs(<liquid:redstone> * 144)
    .outputs(engineering_processor)
    .buildAndRegister();

// Logic Processor
assembler.recipeBuilder()
    .duration(100).EUt(480)
    .inputs(printed_logic_circuit)
    .inputs(printed_silicon)
    .fluidInputs(<liquid:redstone> * 144)
    .outputs(logic_processor)
    .buildAndRegister();


// --- Autoclave Recipes ---
val autoclave = RecipeMap.getByName("autoclave");


// --- Charged Certus Quarts Crystall
autoclave.recipeBuilder()
    .duration(600).EUt(480)
    .inputs(<ore:dustChargedCertusQuartz>)
    .fluidInputs(<liquid:distilled_water> * 1000)
    .outputs(<appliedenergistics2:material:1>)
    .buildAndRegister();

// --- Fluix Crystall
autoclave.recipeBuilder()
    .duration(600).EUt(480)
    .inputs(<ore:dustFluix>)
    .fluidInputs(<liquid:distilled_water> * 1000)
    .outputs(<appliedenergistics2:material:7>)
    .buildAndRegister();


// --- Forming Press Recipes ---
val forming_press = RecipeMap.getByName("forming_press");

// Printed Calculation Circuit
forming_press.recipeBuilder()
    .duration(100).EUt(120)
    .notConsumable(calculation_press)
    .inputs(<ore:plateCertusQuartz>)
    .outputs(printed_calculation_circuit)
    .buildAndRegister();

// Printed Engineering Circuit
forming_press.recipeBuilder()
    .duration(100).EUt(120)
    .notConsumable(engineering_press)
    .inputs(<ore:plateDiamond>)
    .outputs(printed_engineering_circuit)
    .buildAndRegister();

// Printed Logic Circuit
forming_press.recipeBuilder()
    .duration(100).EUt(120)
    .notConsumable(logic_press)
    .inputs(<ore:plateGold>)
    .outputs(printed_logic_circuit)
    .buildAndRegister();

// Printed Silicon
forming_press.recipeBuilder()
    .duration(100).EUt(120)
    .notConsumable(silicon_press)
    .inputs(<ore:plateSilicon>)
    .outputs(printed_silicon)
    .buildAndRegister();


// --- Macerator Recipes ---
val macerator = RecipeMap.getByName("macerator");

// --- Fluix Dust
macerator.recipeBuilder()
    .duration(30).EUt(8)
    .inputs(<ore:crystalFluix>)
    .outputs(<appliedenergistics2:material:8>)
    .buildAndRegister();


// --- Mixer Recipes ---
val mixer = RecipeMap.getByName("mixer");

// --- Fluix Dust
mixer.recipeBuilder()
    .duration(200).EUt(480)
    .inputs(<ore:dustChargedCertusQuartz>)
    .inputs(<ore:dustRedstone>)
    .inputs(<ore:dustNetherQuartz>)
    .outputs(<appliedenergistics2:material:8> * 2)
    .buildAndRegister();


for i, storage_cell in storage_cells {
  recipes.addShaped(storage_components[i + 1], [[circuits[i], processors[i], circuits[i]], [storage_components[i], core_storage_component, storage_components[i]], [circuits[i], storage_components[i], circuits[i]]]);
  recipes.addShaped(storage_cell, [[<ore:plateDarkSteel>, storage_components[i + 1], <ore:plateDarkSteel>], [<ore:plateDarkSteel>, <ore:cableGtSingleEnergeticAlloy>, <ore:plateDarkSteel>]]);
  recipes.addShapeless(storage_cell, [ME_storage_housing, storage_components[i + 1]]);
}

for i, fluid_storage_cell in fluid_storage_cells {
  recipes.addShaped(fluid_storage_components[i + 1], [[circuits[i], processors[i], circuits[i]], [fluid_storage_components[i], core_fluid_storage_component, fluid_storage_components[i]], [circuits[i], fluid_storage_components[i], circuits[i]]]);
  recipes.addShaped(fluid_storage_cell, [[<ore:plateDarkSteel>, fluid_storage_components[i + 1], <ore:plateDarkSteel>], [<ore:plateDarkSteel>, <ore:cableGtSingleEnergeticAlloy>, <ore:plateDarkSteel>]]);
  recipes.addShapeless(fluid_storage_cell, [ME_storage_housing, fluid_storage_components[i + 1]]);
}

for i, spatial_storage_cell in spatial_storage_cells {
  recipes.addShaped(spatial_storage_components[i + 1], [[circuits[i], spatial_storage_components[i], circuits[i]], [spatial_storage_components[i], core_spatial_storage_component, spatial_storage_components[i]], [circuits[i], spatial_storage_components[i], circuits[i]]]);
  recipes.addShaped(spatial_storage_cell, [[<ore:plateDarkSteel>, spatial_storage_components[i + 1], <ore:plateDarkSteel>], [<ore:plateDarkSteel>, <ore:cableGtSingleEnergeticAlloy>, <ore:plateDarkSteel>]]);
  recipes.addShapeless(spatial_storage_cell, [ME_storage_housing, spatial_storage_components[i + 1]]);
}

// --- Charged Quartz Fixture
recipes.addShapeless(<appliedenergistics2:quartz_fixture>, [charged_certus_quartz, <ore:stickIron>]);

// --- Meteoric Compass
recipes.addShaped(<appliedenergistics2:sky_compass>, [[null, <ore:plateSteel>, null], [<ore:plateSteel>, <appliedenergistics2:quartz_fixture>, <ore:plateSteel>], [null, <ore:plateSteel>, null]]);

// --- Security terminal
recipes.addShaped(<appliedenergistics2:security_station>, [[glass_cable, <appliedenergistics2:chest>, glass_cable], [<ore:plateSignalum>, adv_ae_circuit, <ore:plateSignalum>], [<ore:plateSignalum>, storage_component_16k, <ore:plateSignalum>]]);

// --- Quantum Ring
recipes.addShaped(<appliedenergistics2:quantum_ring>, [[<ore:plateSignalum>, logic_processor, <ore:plateSignalum>], [engineering_processor, <appliedenergistics2:energy_cell>, dens_smart_cable], [<ore:plateSignalum>, logic_processor, <ore:plateSignalum>]]);

// --- Spatial IO Port
recipes.addShaped(<appliedenergistics2:spatial_io_port>, [[<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>], [glass_cable, <appliedenergistics2:io_port>, glass_cable], [<ore:plateSignalum>, engineering_processor, <ore:plateSignalum>]]);

// --- Spatial Pylon
recipes.addShaped(<appliedenergistics2:spatial_pylon>, [[<ore:plateSignalum>, glass_cable, <ore:plateSignalum>], [<ore:dustFluix>, <ore:crystalFluix>, <ore:dustFluix>], [<ore:plateSignalum>, glass_cable, <ore:plateSignalum>]]);

// --- ME Controller
recipes.addShaped(<appliedenergistics2:controller>, [[<ore:plateSignalum>, <ore:crystalPureFluix>, <ore:plateSignalum>], [<ore:crystalPureFluix>, engineering_processor, <ore:crystalPureFluix>], [<ore:plateSignalum>, <ore:crystalPureFluix>, <ore:plateSignalum>]]);

// --- ME Drive
recipes.addShaped(<appliedenergistics2:drive>, [[glass_cable, <ore:plateSignalum>, glass_cable], [engineering_processor, <ore:itemMachineChassi>, engineering_processor], [<ore:plateSignalum>, adv_ae_circuit, <ore:plateSignalum>]]);

// --- ME Chest
recipes.addShaped(<appliedenergistics2:chest>, [[<ore:plateGlass>, ME_terminal, <ore:plateGlass>], [glass_cable, <ore:itemMachineChassi>, glass_cable], [<ore:plateSignalum>, ae_circuit, <ore:plateSignalum>]]);

// --- ME Interface
recipes.addShaped(<appliedenergistics2:interface>, [[<ore:stickStainlesssteel>, <ore:plateSignalum>, <ore:stickStainlesssteel>], [annihilation_core, <ore:itemMachineChassi>, formation_core], [<ore:stickStainlesssteel>, <ore:plateSignalum>, <ore:stickStainlesssteel>]]);
recipes.addShapeless(<appliedenergistics2:interface>, [ME_interface_non_cube]);

// --- ME Fluid Interface
recipes.addShapeless(<appliedenergistics2:fluid_interface>, [<appliedenergistics2:interface>, circuit_fluid, circuit_fluid]);
recipes.addShapeless(<appliedenergistics2:fluid_interface>, [<appliedenergistics2:part:441>]);

// --- Cell Workbench
recipes.addShaped(<appliedenergistics2:cell_workbench>, [[null, ae_circuit, null], [calculation_processor, <ore:itemMachineChassi>, calculation_processor], [<ore:plateSignalum>, <appliedenergistics2:sky_stone_chest>, <ore:plateSignalum>]]);

// --- ME IO Port
recipes.addShaped(<appliedenergistics2:io_port>, [[<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>], [<appliedenergistics2:drive>, glass_cable, <appliedenergistics2:drive>], [<ore:plateSignalum>, logic_processor, <ore:plateSignalum>]]);

// --- Matter Condenser
recipes.addShaped(<appliedenergistics2:condenser>, [[<ore:plateDarkSteel>, piston_EV, <ore:plateDarkSteel>], [piston_EV, adv_ae_circuit, piston_EV], [<ore:plateDarkSteel>, piston_EV, <ore:plateDarkSteel>]]);

// --- Energy Acceptor
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [[<ore:plateSignalum>, <ore:cableGtSingleVibrantAlloy>, <ore:plateSignalum>], [glass_cable, <ore:itemMachineChassi>, glass_cable], [<ore:plateSignalum>, <ore:cableGtSingleVibrantAlloy>, <ore:plateSignalum>]]);

// --- Vibration Chamber
recipes.addShaped(<appliedenergistics2:vibration_chamber>, [[<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>], [<ore:plateDarkSteel>, <minecraft:furnace>, <ore:plateDarkSteel>], [<ore:plateDarkSteel>, <appliedenergistics2:energy_acceptor>, <ore:plateDarkSteel>]]);

// --- Crystall Growth Accelerator
recipes.addShaped(<appliedenergistics2:quartz_growth_accelerator>, [[<ore:plateSignalum>, glass_cable, <ore:plateSignalum>], [<ore:plateGlass>, <appliedenergistics2:fluix_block>, <ore:plateGlass>], [<ore:plateSignalum>, glass_cable, <ore:plateSignalum>]]);

// --- Energy Cell
recipes.addShaped(<appliedenergistics2:energy_cell>, [[energy_crystall, energy_crystall, energy_crystall], [glass_cable, <ore:itemMachineChassi>, glass_cable], [energy_crystall, energy_crystall, energy_crystall]]);

// --- Molecular Assembler
recipes.addShaped(<appliedenergistics2:molecular_assembler>, [[<ore:plateGlass>, engineering_processor, <ore:plateGlass>], [annihilation_core, casing, formation_core], [<ore:plateGlass>, engineering_processor, <ore:plateGlass>]]);

// --- Light Detecting Fixture
recipes.addShapeless(<appliedenergistics2:light_detector>, [<ore:gemQuartz>, <ore:stickIron>]);

// --- Certus Quartz Cutting Knife
recipes.addShaped(<appliedenergistics2:certus_quartz_cutting_knife>, [[null, null, <ore:stickWood>], [<ore:plateStainlesssteel>, <ore:stickWood>, null], [<ore:plateCertusQuartz>, <ore:plateCertusQuartz>, null]]);

// --- Nether Quartz Cutting Knife
recipes.addShaped(<appliedenergistics2:nether_quartz_cutting_knife>, [[null, null, <ore:stickWood>], [<ore:plateStainlesssteel>, <ore:stickWood>, null], [<ore:plateNetherQuartz>, <ore:plateNetherQuartz>, null]]);

// --- Entropy Manipulator
recipes.addShaped(<appliedenergistics2:entropy_manipulator>, [[engineering_processor, <ore:crystalFluix>], [<ore:stickLongDarkSteel>, <appliedenergistics2:energy_cell>]]);

// --- Charged Staff
recipes.addShaped(<appliedenergistics2:charged_staff>, [[null, null, charged_certus_quartz], [null, <ore:stickLongDarkSteel>, ae_circuit]]);

// --- Matter Cannon
recipes.addShaped(<appliedenergistics2:matter_cannon>, [[<ore:plateDarkSteel>, <ore:plateDarkSteel>, formation_core], [storage_component_4k, <appliedenergistics2:energy_cell>, null], [<ore:plateDarkSteel>, null, null]]);

// --- Color Applicator
recipes.addShaped(<appliedenergistics2:color_applicator>, [[formation_core, <ore:plateDarkSteel>, null], [<ore:plateDarkSteel>, storage_component_4k, null], [null, null, <appliedenergistics2:energy_cell>]]);

// --- Biometric Card
recipes.addShaped(<appliedenergistics2:biometric_card>, [[engineering_processor, <ore:plateSignalum>, <ore:plateSignalum>], [<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>]]);

// --- Memory Card
recipes.addShaped(<appliedenergistics2:memory_card>, [[calculation_processor, <ore:plateSignalum>, <ore:plateSignalum>], [<ore:plateGold>, <ore:plateRedAlloy>, <ore:plateGold>]]);

// --- ME Storage Housing
recipes.addShaped(ME_storage_housing, [[<ore:plateDarkSteel>, null, <ore:plateDarkSteel>], [<ore:plateDarkSteel>, <ore:cableGtSingleEnergeticAlloy>, <ore:plateDarkSteel>]]);

// --- View Cell
recipes.addShaped(<appliedenergistics2:view_cell>, [[<ore:plateDarkSteel>, interface, <ore:plateDarkSteel>], [<ore:plateDarkSteel>, <ore:cableGtSingleEnergeticAlloy>, <ore:plateDarkSteel>]]);
recipes.addShapeless(<appliedenergistics2:view_cell>, [ME_storage_housing, interface]);

// --- Crafting Unit
recipes.addShaped(<appliedenergistics2:crafting_unit>, [[<ore:plateSignalum>, glass_cable, <ore:plateSignalum>], [calculation_processor, engineering_processor, logic_processor], [<ore:plateSignalum>, glass_cable, <ore:plateSignalum>]]);

// --- Basic Card
recipes.addShaped(basic_card, [[<ore:plateGold>, <ore:plateStainlesssteel>, null], [<ore:plateRedAlloy>, calculation_processor, <ore:plateStainlesssteel>], [<ore:plateGold>, <ore:plateStainlesssteel>, null]]);

// --- Advanced Card
recipes.addShaped(advanced_card, [[<ore:plateAluminum>, <ore:plateStainlesssteel>, null], [<ore:plateRedAlloy>, calculation_processor, <ore:plateStainlesssteel>], [<ore:plateAluminum>, <ore:plateStainlesssteel>, null]]);

// --- Annihilation Core
recipes.addShaped(annihilation_core * 2, [[<ore:stickNetherQuartz>, <ore:dustFluix>, logic_processor]]);

// --- Formation Core
recipes.addShaped(formation_core * 2, [[<ore:stickCertusQuartz>, <ore:dustFluix>, logic_processor]]);

// --- Blank Pattern
recipes.addShaped(blank_pattern, [[<ore:plateGlass>, <ore:plateGlowstone>, <ore:plateGlass>], [<ore:plateGlowstone>, data_stick, <ore:plateGlowstone>], [<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>]]);

// --- Wireless Booster
recipes.addShaped(wireless_booster * 2, [[<ore:cableGtSingleEnergeticAlloy>, adv_ae_circuit, <ore:dustEnderPearl>], [<ore:plateSignalum>, <ore:plateSignalum>, <ore:plateSignalum>]]);

// --- Wireless Reciever
recipes.addShaped(wireless_reciever, [[null, <ore:pearlFluix>, null], [<ore:plateSignalum>, quartz_fiber, <ore:plateSignalum>], [adv_ae_circuit, <ore:plateSignalum>, adv_ae_circuit]]);

// --- ME Annihilation Plane
recipes.addShaped(ME_annihilation_plane, [[ae_circuit, annihilation_core, ae_circuit], [<ore:plateSignalum>, <ore:plateSignalum>, <ore:plateSignalum>]]);

// --- ME Formation Plane
recipes.addShaped(ME_formation_plane, [[ae_circuit, formation_core, ae_circuit], [<ore:plateSignalum>, <ore:plateSignalum>, <ore:plateSignalum>]]);

// --- ME Fluid Annihilation Plane
recipes.addShaped(ME_fluid_annihilation_plane, [[null, circuit_fluid, null], [ae_circuit, annihilation_core, ae_circuit], [<ore:plateSignalum>, <ore:plateSignalum>, <ore:plateSignalum>]]);

// --- ME Fluid Formation Plane
recipes.addShaped(ME_fluid_formation_plane, [[null, circuit_fluid, null], [ae_circuit, formation_core, ae_circuit], [<ore:plateSignalum>, <ore:plateSignalum>, <ore:plateSignalum>]]);

// --- P2P Tunnel
recipes.addShaped(p2p_tunnel, [[null, <ore:plateSignalum>, null], [<ore:plateSignalum>, engineering_processor, <ore:plateSignalum>], [ae_circuit, <ore:plateSignalum>, ae_circuit]]);

// --- Quartz Fiber
recipes.addShaped(quartz_fiber, [[<ore:stickNetherQuartz>, <ore:dustCertusQuartz>, <ore:stickNetherQuartz>]]);

// --- ME Crafting Terminal
recipes.addShaped(ME_crafting_terminal, [[<ore:plateSignalum>, ME_terminal, <ore:plateSignalum>], [calculation_processor, adv_ae_circuit, calculation_processor]]);

// --- ME Fluid Terminal
recipes.addShaped(ME_fluid_terminal, [[null, circuit_fluid, null], [<ore:plateSignalum>, ME_terminal, <ore:plateSignalum>], [calculation_processor, adv_ae_circuit, calculation_processor]]);

// --- ME Interface Terminal
recipes.addShaped(ME_interface_terminal, [[null, adv_ae_circuit, null], [<ore:itemIlluminatedPanel>, interface, <ore:plateGlass>], [<ore:plateSignalum>, ME_interface_non_cube, <ore:plateSignalum>]]);

// --- ME Pattern Terminal
recipes.addShaped(ME_pattern_terminal, [[logic_processor, ME_crafting_terminal, logic_processor], [engineering_processor, data_stick, engineering_processor]]);

// --- ME Terminal
recipes.addShaped(ME_terminal, [[ae_circuit, formation_core, ae_circuit], [<ore:itemIlluminatedPanel>, interface, <ore:plateGlass>], [<ore:plateSignalum>, annihilation_core, <ore:plateSignalum>]]);

// --- Illuminated Panel
recipes.addShaped(illuminated_panel, [[null, <ore:plateGlowstone>, <ore:plateGlass>], [<ore:plateSignalum>, <ore:plateGlowstone>, <ore:plateGlass>], [null, <ore:plateGlowstone>, <ore:plateGlass>]]);

// --- ME Storage Monitor
recipes.addShaped(ME_storage_monitor, [[null, <ore:plateGlass>, null], [<ore:plateSignalum>, <ore:itemIlluminatedPanel>, <ore:plateSignalum>], [ae_circuit, interface, ae_circuit]]);

// --- Toggle Bus
recipes.addShaped(toggle_bus, [[<ore:plateSignalum>, ae_circuit, <ore:nuggetRedstoneAlloy>]]);

// --- ME Storage Bus
recipes.addShaped(ME_storage_bus, [[annihilation_core, ME_interface_non_cube, formation_core], [null, ae_circuit, null]]);

// --- ME Import Bus
recipes.addShaped(ME_import_bus, [[<ore:plateSignalum>, annihilation_core, <ore:plateSignalum>], [null, ae_circuit, null]]);

// --- ME Export Bus
recipes.addShaped(ME_export_bus, [[<ore:plateSignalum>, formation_core, <ore:plateSignalum>], [null, ae_circuit, null]]);

// --- ME Fluid Storage Bus
recipes.addShaped(ME_fluid_storage_bus, [[null, circuit_fluid, null], [annihilation_core, ME_interface_non_cube, formation_core], [null, ae_circuit, null]]);

// --- ME Fluid Import Bus
recipes.addShaped(ME_fluid_import_bus, [[null, circuit_fluid, null], [<ore:plateSignalum>, annihilation_core, <ore:plateSignalum>], [null, ae_circuit, null]]);

// --- ME Fluid Export Bus
recipes.addShaped(ME_fluid_export_bus, [[null, circuit_fluid, null], [<ore:plateSignalum>, formation_core, <ore:plateSignalum>], [null, ae_circuit, null]]);

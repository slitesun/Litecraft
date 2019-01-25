// Created by Miha_77

import crafttweaker.item.IItemStack;

import mods.thermalexpansion.InductionSmelter;


var certus_quartz_dust = <appliedenergistics2:material:2>;
var nether_quartz_dust = <jaopca:item_dustquartz>;

var mechanical_component = <immersiveengineering:material:9>;
var glass_cable = <appliedenergistics2:part:16>;
var storage_component_64k = <appliedenergistics2:material:38>;
var storage_component_16k = <appliedenergistics2:material:37>;
var storage_component_4k = <appliedenergistics2:material:36>;
var storage_component_1k = <appliedenergistics2:material:35>;
var logic_processor = <appliedenergistics2:material:22>;
var calculation_processor = <appliedenergistics2:material:23>;
var engineering_processor = <appliedenergistics2:material:24>;
var ME_terminal = <appliedenergistics2:part:380>;
var ME_crafting_terminal = <appliedenergistics2:part:360>;
var ME_interface_terminal = <appliedenergistics2:part:480>;
var ME_annihilation_plane = <appliedenergistics2:part:300>;
var ME_formation_plane = <appliedenergistics2:part:320>;
var ME_interface_non_cube = <appliedenergistics2:part:440>;
var ME_pattern_terminal = <appliedenergistics2:part:340>;
var ME_storage_monitor  = <appliedenergistics2:part:400>;
var ME_storage_bus = <appliedenergistics2:part:220>;
var ME_import_bus = <appliedenergistics2:part:240>;
var ME_export_bus = <appliedenergistics2:part:260>;
var illuminated_panel = <appliedenergistics2:part:180>;
var toggle_bus = <appliedenergistics2:part:80>;
var p2p_tunnel = <appliedenergistics2:part:460>;
var quartz_fiber = <appliedenergistics2:part:140>;
var formation_core = <appliedenergistics2:material:43>;
var annihilation_core = <appliedenergistics2:material:44>;
var basic_card = <appliedenergistics2:material:25>;
var advanced_card = <appliedenergistics2:material:28>;
var wireless_booster = <appliedenergistics2:material:42>;
var wireless_reciever = <appliedenergistics2:material:41>;
var device_frame = <thermalexpansion:frame:64>;
var ME_storage_housing = <appliedenergistics2:material:39>;
var interface = <advancedrocketry:misc>;
var advanced_circuit = <advancedrocketry:ic:2>; 

var dens_smart_cable = <appliedenergistics2:part:76>;

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
  ME_export_bus, <appliedenergistics2:controller>, <appliedenergistics2:spatial_io_port>, <appliedenergistics2:spatial_pylon>
] as IItemStack[];

val circuits = [
  // Basic control circuit    advanced control circuit     elite cintrol circuit        ultimate control circuit
  <mekanism:controlcircuit>, <mekanism:controlcircuit:1>, <mekanism:controlcircuit:2>, <mekanism:controlcircuit:3>
] as IItemStack[];

val processors = [
  logic_processor, calculation_processor, engineering_processor, engineering_processor
] as IItemStack[];

val storage_components = [
  <advancedrocketry:dataunit>, storage_component_1k, storage_component_4k, storage_component_16k, storage_component_64k
] as IItemStack[];

val storage_cells = [
  <appliedenergistics2:storage_cell_1k>, <appliedenergistics2:storage_cell_4k>, <appliedenergistics2:storage_cell_16k>, <appliedenergistics2:storage_cell_64k>
] as IItemStack[];

val spatial_storage_components = [
  // Fluix pearl                     1 ^ 3                              16 ^ 3                             128 ^ 3
  <appliedenergistics2:material:9>, <appliedenergistics2:material:32>, <appliedenergistics2:material:33>, <appliedenergistics2:material:34>
] as IItemStack[];

val spatial_storage_cells = [
  <appliedenergistics2:spatial_storage_cell_2_cubed>, <appliedenergistics2:spatial_storage_cell_16_cubed>, <appliedenergistics2:spatial_storage_cell_128_cubed>
] as IItemStack[];

for i, e in list_items {

  recipes.remove(e);

  if (i < 3) {
    recipes.remove(spatial_storage_cells[i]);
    recipes.remove(spatial_storage_components[i + 1]);
  }

  if (i < 4) {
    recipes.remove(storage_cells[i]);
    recipes.remove(storage_components[i + 1]);
  }
}

for i, spatial_storage_cell in spatial_storage_cells {
  recipes.addShaped(spatial_storage_components[i + 1], [[circuits[i], spatial_storage_components[i], circuits[i]], [spatial_storage_components[i], engineering_processor, spatial_storage_components[i]], [circuits[i], spatial_storage_components[i], circuits[i]]]);
  recipes.addShaped(spatial_storage_cell, [[<customitems:plate_dark_steel>, spatial_storage_components[i + 1], <customitems:plate_dark_steel>], [<customitems:plate_dark_steel>, <customitems:conductive_element_energetic_alloy>, <customitems:plate_dark_steel>]]);
  recipes.addShapeless(spatial_storage_cell, [ME_storage_housing, spatial_storage_components[i + 1]]);
}

for i, circuit in circuits {
  recipes.addShaped(storage_components[i + 1], [[circuit, processors[i], circuit], [storage_components[i], <appliedenergistics2:quartz_glass>, storage_components[i]], [circuit, storage_components[i], circuit]]);
  recipes.addShaped(storage_cells[i], [[<customitems:plate_dark_steel>, storage_components[i + 1], <customitems:plate_dark_steel>], [<customitems:plate_dark_steel>, <customitems:conductive_element_energetic_alloy>, <customitems:plate_dark_steel>]]);
  recipes.addShapeless(storage_cells[i], [ME_storage_housing, storage_components[i + 1]]);
}


// Quartz glass
InductionSmelter.addRecipe(<appliedenergistics2:quartz_glass>, certus_quartz_dust * 2, <minecraft:glass>, 2000);
InductionSmelter.addRecipe(<appliedenergistics2:quartz_glass>, nether_quartz_dust * 2, <minecraft:glass>, 2000);
nether_quartz_dust = <enderio:item_material:33>;
InductionSmelter.addRecipe(<appliedenergistics2:quartz_glass>, nether_quartz_dust * 2, <minecraft:glass>, 2000);

// Vibrant glass
InductionSmelter.addRecipe(<appliedenergistics2:quartz_vibrant_glass>, <minecraft:glowstone_dust> * 2, <appliedenergistics2:quartz_glass>, 2000);

// Charged Quartz Fixture
recipes.addShapeless(<appliedenergistics2:quartz_fixture>, [<ore:gemChargedCertusQuartz>, <ore:stickIron>]);

// Meteoric Compass
recipes.addShaped(<appliedenergistics2:sky_compass>, [[null, <ore:plateSteel>, null], [<ore:plateSteel>, <appliedenergistics2:quartz_fixture>, <ore:plateSteel>], [null, <ore:plateSteel>, null]]);

// Inscriber
recipes.addShaped(<appliedenergistics2:inscriber>, [[<ore:circuitUltimate>, mechanical_component, <ore:circuitUltimate>], [<customitems:plate_osgloglas>, <ore:itemMachineChassi>, <customitems:plate_osgloglas>], [<customitems:plate_osgloglas>, <tconstruct:large_plate>.withTag({Material: "steel"}), <customitems:plate_osgloglas>]]);

// Security terminal
recipes.addShaped(<appliedenergistics2:security_station>, [[glass_cable, <appliedenergistics2:chest>, glass_cable], [<customitems:plate_osgloglas>, <ore:circuitElite>, <customitems:plate_osgloglas>], [<customitems:plate_osgloglas>, storage_component_16k, <customitems:plate_osgloglas>]]);

// Quantum Ring
recipes.addShaped(<appliedenergistics2:quantum_ring>, [[<customitems:plate_osgloglas>, logic_processor, <customitems:plate_osgloglas>], [engineering_processor, <appliedenergistics2:energy_cell>, dens_smart_cable], [<customitems:plate_osgloglas>, logic_processor, <customitems:plate_osgloglas>]]);

// Spatial IO Port
recipes.addShaped(<appliedenergistics2:spatial_io_port>, [[<customitems:plate_glass>, <customitems:plate_glass>, <customitems:plate_glass>], [glass_cable, <appliedenergistics2:io_port>, glass_cable], [<customitems:plate_osgloglas>, engineering_processor, <customitems:plate_osgloglas>]]);

// Spatial Pylon
recipes.addShaped(<appliedenergistics2:spatial_pylon>, [[<customitems:plate_osgloglas>, glass_cable, <customitems:plate_osgloglas>], [<ore:dustFluix>, <ore:crystalFluix>, <ore:dustFluix>], [<customitems:plate_osgloglas>, glass_cable, <customitems:plate_osgloglas>]]);

// ME Controller
recipes.addShaped(<appliedenergistics2:controller>, [[<customitems:plate_osgloglas>, <ore:crystalPureFluix>, <customitems:plate_osgloglas>], [<ore:crystalPureFluix>, engineering_processor, <ore:crystalPureFluix>], [<customitems:plate_osgloglas>, <ore:crystalPureFluix>, <customitems:plate_osgloglas>]]);

// ME Drive
recipes.addShaped(<appliedenergistics2:drive>, [[glass_cable, <customitems:plate_osgloglas>, glass_cable], [engineering_processor, <ore:itemMachineChassi>, engineering_processor], [<customitems:plate_osgloglas>, <ore:circuitElite>, <customitems:plate_osgloglas>]]);

// ME Chest
recipes.addShaped(<appliedenergistics2:chest>, [[<customitems:plate_glass>, ME_terminal, <customitems:plate_glass>], [glass_cable, <ore:itemMachineChassi>, glass_cable], [<customitems:plate_osgloglas>, <ore:circuitAdvanced>, <customitems:plate_osgloglas>]]);

// ME Interface
recipes.addShaped(<appliedenergistics2:interface>, [[<ore:stickStainlesssteel>, <customitems:plate_osgloglas>, <ore:stickStainlesssteel>], [annihilation_core, <ore:itemMachineChassi>, formation_core], [<ore:stickStainlesssteel>, <customitems:plate_osgloglas>, <ore:stickStainlesssteel>]]);

// Cell Workbench
recipes.addShaped(<appliedenergistics2:cell_workbench>, [[null, <ore:circuitAdvanced>, null], [calculation_processor, <ore:itemMachineChassi>, calculation_processor], [<customitems:plate_osgloglas>, <appliedenergistics2:sky_stone_chest>, <customitems:plate_osgloglas>]]);

// ME IO Port
recipes.addShaped(<appliedenergistics2:io_port>, [[<customitems:plate_glass>, <customitems:plate_glass>, <customitems:plate_glass>], [<appliedenergistics2:drive>, glass_cable, <appliedenergistics2:drive>], [<customitems:plate_osgloglas>, logic_processor, <customitems:plate_osgloglas>]]);

// Matter Condenser
recipes.addShaped(<appliedenergistics2:condenser>, [[<customitems:plate_dark_steel>, mechanical_component, <customitems:plate_dark_steel>], [mechanical_component, <ore:circuitElite>, mechanical_component], [<customitems:plate_dark_steel>, mechanical_component, <customitems:plate_dark_steel>]]);

// Energy Acceptor
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [[<customitems:plate_osgloglas>, <customitems:conductive_element_vibrant_alloy>, <customitems:plate_osgloglas>], [glass_cable, <ore:itemMachineChassi>, glass_cable], [<customitems:plate_osgloglas>, <customitems:conductive_element_vibrant_alloy>, <customitems:plate_osgloglas>]]);

// Vibration Chamber
recipes.addShaped(<appliedenergistics2:vibration_chamber>, [[<customitems:plate_dark_steel>, <customitems:plate_dark_steel>, <customitems:plate_dark_steel>], [<customitems:plate_dark_steel>, <minecraft:furnace>, <customitems:plate_dark_steel>], [<customitems:plate_dark_steel>, <appliedenergistics2:energy_acceptor>, <customitems:plate_dark_steel>]]);

// Crystall Growth Accelerator
recipes.addShaped(<appliedenergistics2:quartz_growth_accelerator>, [[<customitems:plate_osgloglas>, glass_cable, <customitems:plate_osgloglas>], [<customitems:plate_glass>, <appliedenergistics2:fluix_block>, <customitems:plate_glass>], [<customitems:plate_osgloglas>, glass_cable, <customitems:plate_osgloglas>]]);

// Energy Cell
recipes.addShaped(<appliedenergistics2:energy_cell>, [[<mekanism:energytablet>, <mekanism:energytablet>, <mekanism:energytablet>], [glass_cable, <ore:itemMachineChassi>, glass_cable], [<mekanism:energytablet>, <mekanism:energytablet>, <mekanism:energytablet>]]);

// Molecular Assembler
recipes.addShaped(<appliedenergistics2:molecular_assembler>, [[<customitems:plate_glass>, engineering_processor, <customitems:plate_glass>], [annihilation_core, device_frame, formation_core], [<customitems:plate_glass>, engineering_processor, <customitems:plate_glass>]]);

// Entropy Manipulator
recipes.addShaped(<appliedenergistics2:entropy_manipulator>, [[engineering_processor, <ore:gemFluix>], [<tconstruct:tough_tool_rod>.withTag({Material: "dark_steel"}), <appliedenergistics2:energy_cell>]]);

// Color Applicator
recipes.addShaped(<appliedenergistics2:color_applicator>, [[formation_core, <customitems:plate_dark_steel>, null], [<customitems:plate_dark_steel>, storage_component_4k, null], [null, null, <appliedenergistics2:energy_cell>]]);

// Biometric Card
recipes.addShaped(<appliedenergistics2:biometric_card>, [[engineering_processor, <customitems:plate_osgloglas>, <customitems:plate_osgloglas>], [<ore:plateGold>, <customitems:conductive_element_redsrone_alloy>, <ore:plateGold>]]);

// Memory Card
recipes.addShaped(<appliedenergistics2:memory_card>, [[calculation_processor, <customitems:plate_osgloglas>, <customitems:plate_osgloglas>], [<ore:plateGold>, <customitems:conductive_element_redsrone_alloy>, <ore:plateGold>]]);

// Charged Staff
recipes.addShaped(<appliedenergistics2:charged_staff>, [[null, null, <ore:gemChargedCertusQuartz>], [null, <tconstruct:tough_tool_rod>.withTag({Material: "dark_steel"}), null]]);

// ME Storage Housing
recipes.addShaped(ME_storage_housing, [[<customitems:plate_dark_steel>, null, <customitems:plate_dark_steel>], [<customitems:plate_dark_steel>, <customitems:conductive_element_energetic_alloy>, <customitems:plate_dark_steel>]]);

// View Cell
recipes.addShaped(<appliedenergistics2:view_cell>, [[<customitems:plate_dark_steel>, interface, <customitems:plate_dark_steel>], [<customitems:plate_dark_steel>, <customitems:conductive_element_energetic_alloy>, <customitems:plate_dark_steel>]]);
recipes.addShapeless(<appliedenergistics2:view_cell>, [ME_storage_housing, interface]);

// Crafting Unit
recipes.addShaped(<appliedenergistics2:crafting_unit>, [[<customitems:plate_osgloglas>, glass_cable, <customitems:plate_osgloglas>], [calculation_processor, engineering_processor, logic_processor], [<customitems:plate_osgloglas>, glass_cable, <customitems:plate_osgloglas>]]);

// Basic Card
recipes.addShaped(basic_card, [[<ore:plateGold>, <ore:plateStainlesssteel>, null], [<customitems:conductive_element_redsrone_alloy>, calculation_processor, <ore:plateStainlesssteel>], [<ore:plateGold>, <ore:plateStainlesssteel>, null]]);

// Advanced Card
recipes.addShaped(advanced_card, [[<ore:plateAluminum>, <ore:plateStainlesssteel>, null], [<customitems:conductive_element_redsrone_alloy>, calculation_processor, <ore:plateStainlesssteel>], [<ore:plateAluminum>, <ore:plateStainlesssteel>, null]]);

// Wireless Booster
recipes.addShaped(wireless_booster * 2, [[<customitems:conductive_element_energetic_alloy>, <ore:circuitElite>, <ore:dustEnderPearl>], [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]]);

// Wireless Reciever
recipes.addShaped(wireless_reciever, [[null, <ore:pearlFluix>, null], [<ore:plateTitanium>, quartz_fiber, <ore:plateTitanium>], [<ore:circuitElite>, <ore:plateTitanium>, <ore:circuitElite>]]);

// ME Annihilation Plane
recipes.addShaped(ME_annihilation_plane, [[advanced_circuit, annihilation_core, advanced_circuit], [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]]);

// ME Formation Plane
recipes.addShaped(ME_formation_plane, [[advanced_circuit, formation_core, advanced_circuit], [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]]);

// P2P Tunnel
recipes.addShaped(p2p_tunnel, [[null, <ore:plateTitanium>, null], [<ore:plateTitanium>, engineering_processor, <ore:plateTitanium>], [<ore:circuitAdvanced>, <ore:plateTitanium>, <ore:circuitAdvanced>]]);

// Quartz Fiber
recipes.addShaped(quartz_fiber, [[<ore:stickQuartz>, <ore:dustCertusQuartz>, <ore:stickQuartz>]]);

// ME Crafting Terminal
recipes.addShaped(ME_crafting_terminal, [[<customitems:plate_osgloglas>, ME_terminal, <customitems:plate_osgloglas>], [calculation_processor, <ore:circuitElite>, calculation_processor]]);

// ME Interface Terminal
recipes.addShaped(ME_interface_terminal, [[null, <ore:circuitElite>, null], [<ore:itemIlluminatedPanel>, interface, <customitems:plate_glass>], [<customitems:plate_osgloglas>, ME_interface_non_cube, <customitems:plate_osgloglas>]]);

// ME Pattern Terminal
recipes.addShaped(ME_pattern_terminal, [[logic_processor, ME_crafting_terminal, logic_processor], [engineering_processor, <advancedrocketry:dataunit>, engineering_processor]]);

// ME Terminal
recipes.addShaped(ME_terminal, [[<ore:circuitAdvanced>, formation_core, <ore:circuitAdvanced>], [<ore:itemIlluminatedPanel>, interface, <customitems:plate_glass>], [<customitems:plate_osgloglas>, annihilation_core, <customitems:plate_osgloglas>]]);

// Illuminated Panel
recipes.addShaped(illuminated_panel, [[null, <ore:dustGlowstone>, <customitems:plate_glass>], [<customitems:plate_osgloglas>, <ore:dustGlowstone>, <customitems:plate_glass>], [null, <ore:dustGlowstone>, <customitems:plate_glass>]]);

// ME Storage Monitor
recipes.addShaped(ME_storage_monitor, [[null, <customitems:plate_glass>, null], [<customitems:plate_osgloglas>, <ore:itemIlluminatedPanel>, <customitems:plate_osgloglas>], [<ore:circuitAdvanced>, interface, <ore:circuitAdvanced>]]);

// Toggle Bus
recipes.addShaped(toggle_bus, [[<customitems:plate_osgloglas>, <ore:circuitAdvanced>, <ore:gearRedstone>]]);

// ME Storage Bus
recipes.addShaped(ME_storage_bus, [[annihilation_core, ME_interface_non_cube, formation_core], [null, <ore:circuitAdvanced>, null]]);

// ME Import Bus
recipes.addShaped(ME_import_bus, [[<customitems:plate_osgloglas>, annihilation_core, <customitems:plate_osgloglas>], [null, <ore:circuitAdvanced>, null]]);

// ME Export Bus
recipes.addShaped(ME_export_bus, [[<customitems:plate_osgloglas>, formation_core, <customitems:plate_osgloglas>], [null, <ore:circuitAdvanced>, null]]);













// Created by Miha_77



// Imports
import crafttweaker.item.IItemStack;




// Variables
var control_circut_plate = <advancedrocketry:ic:3>;
var items_IO_plate = <advancedrocketry:ic:4>;
var hardened_fluxduct = <thermaldynamics:duct_16:2>;
var itemduct = <thermaldynamics:duct_32>;

val array_items = [
  <thermaldynamics:servo>, <thermaldynamics:servo:1>, <thermaldynamics:servo:2>, <thermaldynamics:servo:3>, <thermaldynamics:servo:4>, 
  <thermaldynamics:filter>, <thermaldynamics:filter:1>, <thermaldynamics:filter:2>, <thermaldynamics:filter:3>, <thermaldynamics:filter:4>,
  <thermaldynamics:retriever>, <thermaldynamics:retriever:1>, <thermaldynamics:retriever:2>, <thermaldynamics:retriever:3>, <thermaldynamics:retriever:4>,
  <thermaldynamics:relay>,
  
  // fluxducts
  // leadstone,              hardened,                   redstone energy (empty),    signalum (empty),           signalum
  <thermaldynamics:duct_0>, <thermaldynamics:duct_0:1>, <thermaldynamics:duct_0:6>, <thermaldynamics:duct_0:7>, <thermaldynamics:duct_0:3>,
  // resonant (empty),         resonant                    cryo-stabilized(empty)
  <thermaldynamics:duct_0:8>, <thermaldynamics:duct_0:4>, <thermaldynamics:duct_0:9>,
  
  // fluiducts
  // fluiduct                 fluiduct (opaque)            hardened                     hardened (opaque)
  <thermaldynamics:duct_16>, <thermaldynamics:duct_16:1>, <thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:3>, 
  // signalum-plated            signalum-plated (opaque)     super-laminar                super-laminar (opaque)
  <thermaldynamics:duct_16:4>, <thermaldynamics:duct_16:5>, <thermaldynamics:duct_16:6>, <thermaldynamics:duct_16:7>,
  
  // itemducts
  // itemduct                 itemduct (opaque)            impulse itemduct             impulse itemduct(opaque)
  <thermaldynamics:duct_32>, <thermaldynamics:duct_32:1>, <thermaldynamics:duct_32:2>, <thermaldynamics:duct_32:3>, 
  // signalum-plated itemduct   signalum-plated (opaque)    signalum-plated impulse       signalum-plated impulse (opaque)
  <thermaldynamics:duct_32:4>, <thermaldynamics:duct_32:5>, <thermaldynamics:duct_32:6>, <thermaldynamics:duct_32:7>,
  
  // viaducts
  // viaduct (untreared)        long range viaduct
  <thermaldynamics:duct_64:3>, <thermaldynamics:duct_64:1>
] as IItemStack[];



// Remove recipe
for e in array_items {
  recipes.remove(e);
}



// Adding recipe

// Servo
recipes.addShaped(<thermaldynamics:servo>, [[<ore:nuggetCopper>, items_IO_plate, <ore:nuggetCopper>], [<ore:plateSteel>, <ore:ingotRedstoneAlloy>, <ore:plateSteel>]]);
recipes.addShaped(<thermaldynamics:servo:1>, [[<ore:nuggetConductiveIron>, items_IO_plate, <ore:nuggetConductiveIron>], [<ore:plateAluminium>, <ore:ingotRedstoneAlloy>, <ore:plateAluminium>]]);
recipes.addShaped(<thermaldynamics:servo:2>, [[<ore:nuggetEnergeticAlloy>, items_IO_plate, <ore:nuggetEnergeticAlloy>], [<ore:plateStainlesssteel>, <ore:ingotRedstoneAlloy>, <ore:plateStainlesssteel>]]);
recipes.addShaped(<thermaldynamics:servo:3>, [[<ore:nuggetPulsatingIron>, items_IO_plate, <ore:nuggetPulsatingIron>], [<ore:plateSignalum>, <ore:ingotRedstoneAlloy>, <ore:plateSignalum>]]);
recipes.addShaped(<thermaldynamics:servo:4>, [[<ore:nuggetVibrantAlloy>, items_IO_plate, <ore:nuggetVibrantAlloy>], [<ore:plateEnderium>, <ore:ingotRedstoneAlloy>, <ore:plateEnderium>]]);

// Retriever
recipes.addShaped(<thermaldynamics:retriever>, [[<ore:nuggetCopper>, items_IO_plate, <ore:nuggetCopper>], [<ore:plateSteel>, <minecraft:ender_eye>, <ore:plateSteel>]]);
recipes.addShaped(<thermaldynamics:retriever:1>, [[<ore:nuggetConductiveIron>, items_IO_plate, <ore:nuggetConductiveIron>], [<ore:plateAluminium>, <minecraft:ender_eye>, <ore:plateAluminium>]]);
recipes.addShaped(<thermaldynamics:retriever:2>, [[<ore:nuggetEnergeticAlloy>, items_IO_plate, <ore:nuggetEnergeticAlloy>], [<ore:plateStainlesssteel>, <minecraft:ender_eye>, <ore:plateStainlesssteel>]]);
recipes.addShaped(<thermaldynamics:retriever:3>, [[<ore:nuggetPulsatingIron>, items_IO_plate, <ore:nuggetPulsatingIron>], [<ore:plateSignalum>, <minecraft:ender_eye>, <ore:plateSignalum>]]);
recipes.addShaped(<thermaldynamics:retriever:4>, [[<ore:nuggetVibrantAlloy>, items_IO_plate, <ore:nuggetVibrantAlloy>], [<ore:plateEnderium>, <minecraft:ender_eye>, <ore:plateEnderium>]]);

// Filter
recipes.addShaped(<thermaldynamics:filter>, [[<ore:nuggetCopper>, <ore:plateLapis>, <ore:nuggetCopper>], [<ore:plateSteel>, <extrautils2:filter>, <ore:plateSteel>]]);
recipes.addShaped(<thermaldynamics:filter:1>, [[<ore:nuggetConductiveIron>, <ore:plateLapis>, <ore:nuggetConductiveIron>], [<ore:plateAluminium>, <extrautils2:filter>, <ore:plateAluminium>]]);
recipes.addShaped(<thermaldynamics:filter:2>, [[<ore:nuggetEnergeticAlloy>, <ore:plateLapis>, <ore:nuggetEnergeticAlloy>], [<ore:plateStainlesssteel>, <extrautils2:filter>, <ore:plateStainlesssteel>]]);
recipes.addShaped(<thermaldynamics:filter:3>, [[<ore:nuggetPulsatingIron>, <ore:plateLapis>, <ore:nuggetPulsatingIron>], [<ore:plateSignalum>, <extrautils2:filter>, <ore:plateSignalum>]]);
recipes.addShaped(<thermaldynamics:filter:4>, [[<ore:nuggetVibrantAlloy>, <ore:plateLapis>, <ore:nuggetVibrantAlloy>], [<ore:plateEnderium>, <extrautils2:filter>, <ore:plateEnderium>]]);

// Relay
recipes.addShaped(<thermaldynamics:relay>, [[<ore:gemRedstone>, <ore:gearRedstone>, <ore:gemRedstone>], [<ore:plateQuartz>, control_circut_plate, <ore:plateQuartz>]]);


// Fluxducts

// Leadstone Fluxduct
recipes.addShaped(<thermaldynamics:duct_0> * 3, [[<ore:stickLead>, <minecraft:glass_pane>, <ore:stickLead>], [<customitems:conductive_element_redsrone_alloy>, <customitems:conductive_element_redsrone_alloy>, <customitems:conductive_element_redsrone_alloy>], [<ore:stickLead>, <minecraft:glass_pane>, <ore:stickLead>]]);

// Hardened Fluxduct
recipes.addShaped(<thermaldynamics:duct_0:1> * 3, [[<ore:stickAluminum>, <customitems:plate_glass>, <ore:stickAluminum>], [<customitems:conductive_element_conductive_iron>, <customitems:conductive_element_conductive_iron>, <customitems:conductive_element_conductive_iron>], [<ore:stickAluminum>, <customitems:plate_glass>, <ore:stickAluminum>]]);

// Redstone Energy Fluxduct (Empty)
recipes.addShaped(<thermaldynamics:duct_0:6> * 3, [[<ore:stickStainlesssteel>, <customitems:plate_glass>, <ore:stickStainlesssteel>], [<customitems:conductive_element_energetic_alloy>, <customitems:conductive_element_energetic_alloy>, <customitems:conductive_element_energetic_alloy>], [<ore:stickStainlesssteel>, <customitems:plate_glass>, <ore:stickStainlesssteel>]]);

// Signalum Fluxduct (Empty)
recipes.addShaped(<thermaldynamics:duct_0:7> * 3, [[<ore:stickTitanium>, <customitems:plate_reinforced_glass>, <ore:stickTitanium>], [<customitems:conductive_element_pulsating_iron>, <customitems:conductive_element_pulsating_iron>, <customitems:conductive_element_pulsating_iron>], [<ore:stickTitanium>, <customitems:plate_reinforced_glass>, <ore:stickTitanium>]]);

// Resonant Fluxduct (Empty)
recipes.addShaped(<thermaldynamics:duct_0:8> * 3, [[<ore:stickOsmium>, <customitems:plate_reinforced_glass>, <ore:stickOsmium>], [<customitems:conductive_element_vibrant_alloy>, <customitems:conductive_element_vibrant_alloy>, <customitems:conductive_element_vibrant_alloy>], [<ore:stickOsmium>, <customitems:plate_reinforced_glass>, <ore:stickOsmium>]]);

// Cryo-Stabilized Fluxduct (Empty)
recipes.addShaped(<thermaldynamics:duct_0:9> * 3, [[<ore:stickTitanium>, <customitems:plate_reinforced_glass>, <ore:stickTitanium>], [<customitems:plate_reinforced_glass>, <thermaldynamics:duct_0:4>, <customitems:plate_reinforced_glass>], [<ore:stickTitanium>, <customitems:plate_reinforced_glass>, <ore:stickTitanium>]]);


// Fluiducts

// Fluiduct
recipes.addShaped(<thermaldynamics:duct_16> * 3, [[<ore:stickBronze>, <minecraft:glass_pane>, <ore:stickBronze>], [<minecraft:glass_pane>, null, <minecraft:glass_pane>], [<ore:stickBronze>, <minecraft:glass_pane>, <ore:stickBronze>]]);

// Fluiduct (Opaque)
recipes.addShaped(<thermaldynamics:duct_16:1> * 3, [[<ore:stickBronze>, <ore:plateLead>, <ore:stickBronze>], [<ore:plateLead>, null, <ore:plateLead>], [<ore:stickBronze>, <ore:plateLead>, <ore:stickBronze>]]);

// Hardened Fluiduct
recipes.addShaped(<thermaldynamics:duct_16:2> * 3, [[<ore:stickAluminum>, <customitems:plate_glass>, <ore:stickAluminum>], [<customitems:plate_glass>, null, <customitems:plate_glass>], [<ore:stickAluminum>, <customitems:plate_glass>, <ore:stickAluminum>]]);

// Hardened Fluiduct (Opaque)
recipes.addShaped(<thermaldynamics:duct_16:3> * 3, [[<ore:stickAluminum>, <ore:plateInvar>, <ore:stickAluminum>], [<ore:plateInvar>, null, <ore:plateInvar>], [<ore:stickAluminum>, <ore:plateInvar>, <ore:stickAluminum>]]);

// Signalum-Plated Fluiduct
recipes.addShaped(<thermaldynamics:duct_16:4> * 3, [[<ore:stickTitanium>, <customitems:plate_reinforced_glass>, <ore:stickTitanium>], [<customitems:plate_reinforced_glass>, hardened_fluxduct, <customitems:plate_reinforced_glass>], [<ore:stickTitanium>, <customitems:conductive_element_energetic_alloy>, <ore:stickTitanium>]]);

// Signalum-Plated Fluiduct (Opaque)
recipes.addShaped(<thermaldynamics:duct_16:5> * 3, [[<ore:stickTitanium>, <ore:plateSignalum>, <ore:stickTitanium>], [<ore:plateSignalum>, hardened_fluxduct, <ore:plateSignalum>], [<ore:stickTitanium>, <customitems:conductive_element_energetic_alloy>, <ore:stickTitanium>]]);

// Super-Laminar Fluiduct
recipes.addShaped(<thermaldynamics:duct_16:6> * 3, [[<ore:stickOsmium>, <customitems:plate_reinforced_glass>, <ore:stickOsmium>], [<customitems:plate_reinforced_glass>, hardened_fluxduct, <customitems:plate_reinforced_glass>], [<ore:stickOsmium>, <customitems:plate_reinforced_glass>, <ore:stickOsmium>]]);

// Super-Laminar Fluiduct (Opaque)
recipes.addShaped( <thermaldynamics:duct_16:7> * 3, [[<ore:stickOsmium>, <ore:plateEnderium>, <ore:stickOsmium>], [<ore:plateEnderium>, hardened_fluxduct, <ore:plateEnderium>], [<ore:stickOsmium>, <ore:plateEnderium>, <ore:stickOsmium>]]);


// Itemducts

// Itemduct
recipes.addShaped(itemduct * 3, [[<ore:stickTin>, <minecraft:glass_pane>, <ore:stickTin>], [<minecraft:glass_pane>, null, <minecraft:glass_pane>], [<ore:stickTin>, <minecraft:glass_pane>, <ore:stickTin>]]);

// Itemduct (opaque)
recipes.addShaped(<thermaldynamics:duct_32:1> * 3, [[<ore:stickTin>, <ore:plateLead>, <ore:stickTin>], [<ore:plateLead>, null, <ore:plateLead>], [<ore:stickTin>, <ore:plateLead>, <ore:stickTin>]]);

// Signalum-Plated Itemduct
recipes.addShaped(<thermaldynamics:duct_32:4> * 3, [[<ore:stickTitanium>, <customitems:plate_reinforced_glass>, <ore:stickTitanium>], [<customitems:plate_reinforced_glass>, itemduct, <customitems:plate_reinforced_glass>], [<ore:stickTitanium>, <customitems:conductive_element_energetic_alloy>, <ore:stickTitanium>]]);

// Signalum-Plated Itemduct (opaque)
recipes.addShaped(<thermaldynamics:duct_32:5> * 3, [[<ore:stickTitanium>, <ore:plateSignalum>, <ore:stickTitanium>], [<ore:plateSignalum>, itemduct, <ore:plateSignalum>], [<ore:stickTitanium>, <customitems:conductive_element_energetic_alloy>, <ore:stickTitanium>]]);

// Return recipe for vacuum and dense itemducts
for i in 32 .. 39 {
  // Dense
  recipes.addShaped(array_items[i].withTag({DenseType: 1 as byte}), [[array_items[i], <ore:nuggetLead>], [<ore:nuggetLead>, <ore:nuggetLead>]]);
  // Vacuum
  recipes.addShaped(array_items[i].withTag({DenseType: 2 as byte}), [[array_items[i], <ore:nuggetSilver>], [<ore:nuggetSilver>, <ore:nuggetSilver>]]);
}

// Viaducts

// Viaduct (Untreared)
recipes.addShaped(<thermaldynamics:duct_64:3>, [[<ore:stickTitaniumAluminide>, <customitems:plate_glass>, <ore:stickTitaniumAluminide>], [<customitems:plate_glass>, null, <customitems:plate_glass>], [<ore:stickTitaniumAluminide>, <customitems:plate_glass>, <ore:stickTitaniumAluminide>]]);

// Long Range Viaduct
recipes.addShaped(<thermaldynamics:duct_64:1>, [[<ore:stickTitaniumAluminide>, <customitems:plate_reinforced_glass>, <ore:stickTitaniumAluminide>], [<customitems:plate_reinforced_glass>, null, <customitems:plate_reinforced_glass>], [<ore:stickTitaniumAluminide>, <customitems:plate_reinforced_glass>, <ore:stickTitaniumAluminide>]]);

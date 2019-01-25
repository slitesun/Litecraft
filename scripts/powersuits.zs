import crafttweaker.item.IItemStack;

val wire_cutter = <immersiveengineering:tool:1>;
val conductance_coil = <thermalfoundation:material:515>;
val circuit = <advancedrocketry:ic>;
val interface = <advancedrocketry:misc>;

val bucket_liquid_nitrogen = <forge:bucketfilled>.withTag({FluidName: "liquid_nitrogen", Amount: 1000});
val wiring = <powersuits:powerarmorcomponent>;
val solenoid = <powersuits:powerarmorcomponent:1>;
val servo = <powersuits:powerarmorcomponent:2>;
val glider_wing = <powersuits:powerarmorcomponent:3>;
val ion_thruster = <powersuits:powerarmorcomponent:4>;
val capasitor_lv = <powersuits:powerarmorcomponent:5>;
val capasitor_mv = <powersuits:powerarmorcomponent:6>;
val capasitor_hv = <powersuits:powerarmorcomponent:7>;
val capasitor_ev = <powersuits:powerarmorcomponent:8>;
//val parachute = <powersuits:powerarmorcomponent:9>;
val iron_plating = <powersuits:powerarmorcomponent:10>;
val diamond_plating = <powersuits:powerarmorcomponent:11>;
val field_emitter = <powersuits:powerarmorcomponent:12>;
val laser_emitter = <powersuits:powerarmorcomponent:13>;
//val carbon_myofiber = <powersuits:powerarmorcomponent:14>;
val control_circuit = <powersuits:powerarmorcomponent:15>;
//val myofiber_gel = <powersuits:powerarmorcomponent:16>;
//val artificial_muscle = <powersuits:powerarmorcomponent:17>;
val solar_panel = <powersuits:powerarmorcomponent:18>;
val magnet = <powersuits:powerarmorcomponent:19>;
val computer_chip = <powersuits:powerarmorcomponent:20>;

val array_removed = [
  bucket_liquid_nitrogen, <powersuits:powerarmor_head>, <powersuits:powerarmor_torso>, <powersuits:powerarmor_legs>, <powersuits:powerarmor_feet>, 
  wiring, solenoid, servo, glider_wing, ion_thruster, capasitor_lv, capasitor_mv, capasitor_hv, capasitor_ev, iron_plating, 
  diamond_plating, field_emitter, laser_emitter, control_circuit, solar_panel, magnet, 
  computer_chip, <powersuits:tile.tinkertable>, <powersuits:power_fist>
] as IItemStack[];

for e in array_removed {
  recipes.remove(e);
}

recipes.addShapeless(wiring, [<ore:ingotEnergeticAlloy>, wire_cutter]);
recipes.addShaped(solenoid, [[wiring, <ore:stickSteel>, wiring], [wiring, <ore:stickSteel>, wiring], [wiring, <ore:stickSteel>, wiring]]);
recipes.addShaped(servo, [[<ore:casingAluminum>, solenoid, <ore:casingAluminum>], [wiring, <ore:alloyElite>, wiring], [<ore:casingAluminum>, solenoid, <ore:casingAluminum>]]);
recipes.addShaped(glider_wing, [[null, <ore:plateTitaniumAluminide>, <ore:plateTitaniumAluminide>], [<ore:plateTitaniumAluminide>, <ore:plateTitaniumAluminide>, solenoid], [<ore:plateTitaniumAluminide>, null, wiring]]);
recipes.addShaped(field_emitter, [[solenoid, <ore:circuitUltimate>, solenoid], [<ore:circuitUltimate>, <ore:itemPulsatingCrystal>, <ore:circuitUltimate>], [solenoid, <ore:circuitUltimate>, solenoid]]);
recipes.addShaped(ion_thruster, [[wiring, field_emitter, solenoid], [<tconstruct:large_plate>.withTag({Material: "signalum_plustic"}), <thermalexpansion:frame>, <tconstruct:large_plate>.withTag({Material: "signalum_plustic"})], [wiring, field_emitter, solenoid]]);
recipes.addShaped(laser_emitter, [[<minecraft:glass_pane>, <ore:crystalDilithium>, <minecraft:glass_pane>], [<ore:casingAluminum>, conductance_coil, <ore:casingAluminum>]]);
recipes.addShaped(magnet, [[<ore:casingAluminum>, <enderio:item_magnet>, <ore:casingAluminum>], [<ore:casingAluminum>, conductance_coil, <ore:casingAluminum>]]);
recipes.addShaped(capasitor_lv, [[null, <ore:casingAluminum>, null], [wiring, <thermalexpansion:capacitor>, wiring], [<ore:casingAluminum>, conductance_coil, <ore:casingAluminum>]]);
recipes.addShaped(capasitor_mv, [[null, <ore:casingAluminum>, null], [wiring, <thermalexpansion:capacitor:1>, wiring], [<ore:casingAluminum>, conductance_coil, <ore:casingAluminum>]]);
recipes.addShaped(capasitor_hv, [[null, <ore:casingAluminum>, null], [wiring, <thermalexpansion:capacitor:2>, wiring], [<ore:casingAluminum>, conductance_coil, <ore:casingAluminum>]]);
recipes.addShaped(capasitor_ev, [[null, <ore:casingAluminum>, null], [wiring, <thermalexpansion:capacitor:3>, wiring], [<ore:casingAluminum>, conductance_coil, <ore:casingAluminum>]]);
recipes.addShaped(solar_panel, [[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], [<enderio:block_solar_panel:1>, <enderio:block_solar_panel:1>, <enderio:block_solar_panel:1>], [<ore:plateAluminum>, circuit, <ore:plateAluminum>]]);
recipes.addShaped(iron_plating, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:plateTitaniumAluminide>, <ore:plateTitaniumAluminide>, <ore:plateTitaniumAluminide>]]);
recipes.addShaped(diamond_plating, [[<ore:plateDiamond>, <ore:plateDiamond>, <ore:plateDiamond>], [<ore:plateTitaniumAluminide>, <ore:plateTitaniumAluminide>, <ore:plateTitaniumAluminide>]]);
recipes.addShaped(<powersuits:tile.tinkertable>, [[null, interface, null], [<ore:plateStainlesssteel>, <thermalexpansion:frame>, <ore:plateStainlesssteel>], [wiring, <ore:circuitElite>, wiring]]);

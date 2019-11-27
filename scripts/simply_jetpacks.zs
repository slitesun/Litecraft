// --- Created by Miha_77 ---



// --- Imports ---
import mods.enderio.AlloySmelter;
import mods.gregtech.recipe.RecipeMap;




// --- Variables ---
val conductive_iron_thruster = <simplyjetpacks:metaitemmods:7>;
val electrical_steel_thruster = <simplyjetpacks:metaitemmods:8>;
val energetic_thruster = <simplyjetpacks:metaitemmods:9>;
val vibrant_thruster = <simplyjetpacks:metaitemmods:10>;

val leather_strap = <simplyjetpacks:metaitem:4>;

val medium_battery = <gregtech:meta_item_1:32528>;
val advanced_battery = <gregtech:meta_item_2:32212>;
val extreme_battery = <gregtech:meta_item_2:32213>;
val elite_battery = <ore:batteryUltimate>;

val silicon_armor_plating = <simplyjetpacks:metaitemmods:12>;
val conductive_iron_armor_plating = <simplyjetpacks:metaitemmods:13>;
val electrical_steel_armor_plating = <simplyjetpacks:metaitemmods:14>;
val dark_steel_armor_plating = <simplyjetpacks:metaitemmods:15>;

val motor_mv  = <gregtech:meta_item_1:32601>;
val motor_hv  = <gregtech:meta_item_1:32602>;
val motor_ev  = <gregtech:meta_item_1:32603>;
val motor_iv  = <gregtech:meta_item_1:32604>;
val motor_luv = <gregtech:meta_item_1:32606>;

val basic_capacitor = <enderio:item_basic_capacitor>;
val double_layer_capacitor = <enderio:item_basic_capacitor:1>;
val octadic_capacitor = <enderio:item_basic_capacitor:2>;

val basic_capacitor_bank = <enderio:block_cap_bank:1>;
val capacitor_bank = <enderio:block_cap_bank:2>;
val vibrant_capacitor_bank = <enderio:block_cap_bank:3>;



// --- Remove Recipes ---

// --- Conductive Iron Jetpack
recipes.remove(<simplyjetpacks:itemjetpack:1>);

// --- Electrical Steel Jetpack
recipes.remove(<simplyjetpacks:itemjetpack:2>);

// --- Energetic Jetpack
recipes.remove(<simplyjetpacks:itemjetpack:3>);

// --- Vibrant Jetpack
recipes.remove(<simplyjetpacks:itemjetpack:4>);

// --- Dark Soularium Jetplate
recipes.remove(<simplyjetpacks:itemjetpack:9>);

// --- Silicon Armor Plating
recipes.remove(silicon_armor_plating);

// --- Conductive Iron Armor Plating
recipes.remove(conductive_iron_armor_plating);
//-
AlloySmelter.removeRecipe(conductive_iron_armor_plating);

// --- Electrical Steel Armor Plating
recipes.remove(electrical_steel_armor_plating);
//-
AlloySmelter.removeRecipe(electrical_steel_armor_plating);

// --- Dark Steel Armor Plating
recipes.remove(dark_steel_armor_plating);
//-
AlloySmelter.removeRecipe(dark_steel_armor_plating);

// --- Dark Soularium
AlloySmelter.removeRecipe(<simplyjetpacks:metaitemmods:3>);

// --- Basic Capacitor Pack
recipes.remove(<simplyjetpacks:itemfluxpack:1>);

// --- Capacitor Pack
recipes.remove(<simplyjetpacks:itemfluxpack:2>);

// --- Vibrant Capacitor Pack
recipes.remove(<simplyjetpacks:itemfluxpack:3>);

// --- Conductive Iron Thruster
recipes.remove(<simplyjetpacks:metaitemmods:7>);

// --- Electrical Steel Thruster
recipes.remove(<simplyjetpacks:metaitemmods:8>);

// --- Energetic Thruster
recipes.remove(<simplyjetpacks:metaitemmods:9>);

// --- Vibrant Thruster
recipes.remove(<simplyjetpacks:metaitemmods:10>);

// --- Dark Soularium Thruster
recipes.remove(<simplyjetpacks:metaitemmods:11>);

// --- Leather Strap
recipes.remove(<simplyjetpacks:metaitem:4>);

// --- Reinforced Glider Wing
recipes.remove(<simplyjetpacks:metaitemmods:4>);

// --- Flight Control Unit (Empty)
recipes.remove(<simplyjetpacks:metaitemmods:5>);




// --- Adding Recipes ---

// --- Arc Furnace Recipes --- 
val arc_furnace = RecipeMap.getByName("arc_furnace");

// --- Silicon Armor Plating 
arc_furnace.recipeBuilder()
    .duration(200).EUt(30)
    .inputs(<simplyjetpacks:metaitemmods:12>)
    // construction alloy ingot
    .outputs(<enderio:item_alloy_ingot:9> * 4)
    // Silicon ingot
    .outputs(<gregtech:meta_item_1:10061> * 4)
    .buildAndRegister();

// --- Conductive Iron Armor Plating
arc_furnace.recipeBuilder()
    .duration(200).EUt(30)
    .inputs(<simplyjetpacks:metaitemmods:13>)
    // Conductive Iron ingot
    .outputs(<enderio:item_alloy_ingot:4> * 4)
    // Stainless Steel ingot
    .outputs(<gregtech:meta_item_1:10183> * 4)
    .buildAndRegister();

// --- Electrical Steel Armor Plating
arc_furnace.recipeBuilder()
    .duration(200).EUt(30)
    .inputs(<simplyjetpacks:metaitemmods:14>)
    // Electrical Steel ingot
    .outputs(<enderio:item_alloy_ingot> * 4)
    // Titanium ingot
    .outputs(<gregtech:meta_item_1:10072> * 4)
    .buildAndRegister();

// --- Dark Steel Armor Plating
arc_furnace.recipeBuilder()
    .duration(200).EUt(30)
    .inputs(<simplyjetpacks:metaitemmods:15>)
    // Dark Steel ingot
    .outputs(<enderio:item_alloy_ingot:6> * 4)
    // Tungstensteel ingot
    .outputs(<gregtech:meta_item_1:10235> * 4)
    .buildAndRegister();


// --- Arc Furnace Recipes --- 
val forming_press = RecipeMap.getByName("forming_press");

// --- Silicon Armor Plating
forming_press.recipeBuilder()
    .duration(200).EUt(8)
    .inputs([<ore:plateConstructionAlloy> * 4, <ore:plateSilicon> * 4])
    .outputs(silicon_armor_plating)
    .buildAndRegister();

// --- Conductive Iron Armor Plating
forming_press.recipeBuilder()
    .duration(200).EUt(8)
    .inputs([<ore:plateConductiveIron> * 4, <ore:plateStainlessSteel> * 4])
    .outputs(conductive_iron_armor_plating)
    .buildAndRegister();

// --- Electrical Steel Armor Plating
forming_press.recipeBuilder()
    .duration(200).EUt(8)
    .inputs([<ore:plateElectricalSteel> * 4, <ore:plateTitanium> * 4])
    .outputs(electrical_steel_armor_plating)
    .buildAndRegister();

// --- Electrical Steel Armor Plating
forming_press.recipeBuilder()
    .duration(200).EUt(8)
    .inputs([<ore:plateDarkSteel> * 4, <ore:plateTungstenSteel> * 4])
    .outputs(dark_steel_armor_plating)
    .buildAndRegister();

// --- Reinforced Glider Wing
forming_press.recipeBuilder()
    .duration(200).EUt(8)
    .inputs([<ore:plateDarkSoularium> * 3, conductive_iron_armor_plating * 3])
    .outputs(<simplyjetpacks:metaitemmods:4>)
    .buildAndRegister();


// --- Crafting Recipes ---

// --- Conductive Iron Jetpack
recipes.addShaped(<simplyjetpacks:itemjetpack:1>.withTag({Energy: 0, JetpackParticleType: 0}), 
[[<ore:plateConductiveIron>, <ore:circuitGood>, <ore:plateConductiveIron>], 
[<ore:plateConductiveIron>, leather_strap, <ore:plateConductiveIron>], 
[conductive_iron_thruster, medium_battery, conductive_iron_thruster]]);

// --- From Armored Jetpack
recipes.addShapeless(<simplyjetpacks:itemjetpack:1>, [<simplyjetpacks:itemjetpack:5>]);

// --- Particle Jetpack
recipes.addShaped(<simplyjetpacks:itemjetpack:1>, 
[[null, <simplyjetpacks:itemjetpack:1>, null], 
[null, <ore:particleCustomizer>, null], 
[null, null, null]]);

// --- Electrical Steel Jetpack
recipes.addShaped(<simplyjetpacks:itemjetpack:2>.withTag({Energy: 0, JetpackParticleType: 0}), 
[[<ore:plateElectricalSteel>, <ore:circuitAdvanced>, <ore:plateElectricalSteel>], 
[<ore:plateElectricalSteel>, leather_strap, <ore:plateElectricalSteel>], 
[electrical_steel_thruster, advanced_battery, electrical_steel_thruster]]);

// --- From Armored Jetpack
recipes.addShapeless(<simplyjetpacks:itemjetpack:2>, [<simplyjetpacks:itemjetpack:6>]);

// --- Particle Jetpack
recipes.addShaped(<simplyjetpacks:itemjetpack:2>, 
[[null, <simplyjetpacks:itemjetpack:2>, null], 
[null, <ore:particleCustomizer>, null], 
[null, null, null]]);


// --- Energetic Jetpack
recipes.addShaped(<simplyjetpacks:itemjetpack:3>.withTag({Energy: 0, JetpackParticleType: 0}), 
[[<ore:plateEnergeticAlloy>, <ore:circuitExtreme>, <ore:plateEnergeticAlloy>], 
[<ore:plateEnergeticAlloy>, leather_strap, <ore:plateEnergeticAlloy>], 
[energetic_thruster, extreme_battery, energetic_thruster]]);

// --- From Armored Jetpack
recipes.addShapeless(<simplyjetpacks:itemjetpack:3>, [<simplyjetpacks:itemjetpack:7>]);

// --- Particle Jetpack
recipes.addShaped(<simplyjetpacks:itemjetpack:3>, 
[[null, <simplyjetpacks:itemjetpack:3>, null], 
[null, <ore:particleCustomizer>, null], 
[null, null, null]]);


// --- Vibrant Jetpack
recipes.addShaped(<simplyjetpacks:itemjetpack:4>.withTag({Energy: 0, JetpackParticleType: 0}), 
[[<ore:plateVibrantAlloy>, <ore:circuitElite>, <ore:plateVibrantAlloy>], 
[<ore:plateVibrantAlloy>, leather_strap, <ore:plateVibrantAlloy>], 
[vibrant_thruster, elite_battery, vibrant_thruster]]);

// --- From Armored Jetpack
recipes.addShapeless(<simplyjetpacks:itemjetpack:4>, [<simplyjetpacks:itemjetpack:8>]);

// --- Particle Jetpack
recipes.addShaped(<simplyjetpacks:itemjetpack:4>, 
[[null, <simplyjetpacks:itemjetpack:4>, null], 
[null, <ore:particleCustomizer>, null], 
[null, null, null]]);


// --- Dark Steel JetPlate

// --- Particle Jetpack
recipes.addShaped(<simplyjetpacks:itemjetpack:9>, 
[[null, <simplyjetpacks:itemjetpack:9>, null], 
[null, <ore:particleCustomizer>, null], 
[null, null, null]]);


// --- Silicon Armor Plating
recipes.addShaped(silicon_armor_plating, 
[[<ore:plateConstructionAlloy>, <ore:plateSilicon>, <ore:plateConstructionAlloy>], 
[<ore:plateSilicon>, <ore:craftingToolHardHammer>, <ore:plateSilicon>], 
[<ore:plateConstructionAlloy>, <ore:plateSilicon>, <ore:plateConstructionAlloy>]]);

// --- Conductive Iron Armor Plating
recipes.addShaped(conductive_iron_armor_plating, 
[[<ore:plateConductiveIron>, <ore:plateStainlessSteel>, <ore:plateConductiveIron>], 
[<ore:plateStainlessSteel>, <ore:craftingToolHardHammer>, <ore:plateStainlessSteel>], 
[<ore:plateConductiveIron>, <ore:plateStainlessSteel>, <ore:plateConductiveIron>]]);

// --- Electrical Steel Armor Plating
recipes.addShaped(electrical_steel_armor_plating, 
[[<ore:plateElectricalSteel>, <ore:plateTitanium>, <ore:plateElectricalSteel>], 
[<ore:plateTitanium>, <ore:craftingToolHardHammer>, <ore:plateTitanium>], 
[<ore:plateElectricalSteel>, <ore:plateTitanium>, <ore:plateElectricalSteel>]]);

// --- Dark Steel Armor Plating
recipes.addShaped(dark_steel_armor_plating, 
[[<ore:plateDarkSteel>, <ore:plateTungstenSteel>, <ore:plateDarkSteel>], 
[<ore:plateTungstenSteel>, <ore:craftingToolHardHammer>, <ore:plateTungstenSteel>], 
[<ore:plateDarkSteel>, <ore:plateTungstenSteel>, <ore:plateDarkSteel>]]);


// --- Basic Capacitor Pack
recipes.addShaped(<simplyjetpacks:itemfluxpack:1>, 
[[basic_capacitor, basic_capacitor_bank, basic_capacitor], 
[<ore:plateConductiveIron>, leather_strap, <ore:plateConductiveIron>], 
[<ore:plateConductiveIron>, <ore:circuitAdvanced>, <ore:plateConductiveIron>]]);

// --- Capacitor Pack
recipes.addShaped(<simplyjetpacks:itemfluxpack:2>, 
[[double_layer_capacitor, capacitor_bank, double_layer_capacitor], 
[<ore:plateEnergeticAlloy>, leather_strap, <ore:plateEnergeticAlloy>], 
[<ore:plateEnergeticAlloy>, <ore:circuitExtreme>, <ore:plateEnergeticAlloy>]]);

// --- From Armored
recipes.addShapeless(<simplyjetpacks:itemfluxpack:2>, [<simplyjetpacks:itemfluxpack:4>]);

// --- Vibrant Capacitor Pack
recipes.addShaped(<simplyjetpacks:itemfluxpack:3>, 
[[octadic_capacitor, vibrant_capacitor_bank, octadic_capacitor], 
[<ore:plateVibrantAlloy>, leather_strap, <ore:plateVibrantAlloy>], 
[<ore:plateVibrantAlloy>, <ore:circuitElite>, <ore:plateVibrantAlloy>]]);

// --- From Armored
recipes.addShapeless(<simplyjetpacks:itemfluxpack:3>, [<simplyjetpacks:itemfluxpack:5>]);


// --- Conductive Iron Thruster
recipes.addShaped(<simplyjetpacks:metaitemmods:7>, 
[[<ore:plateConductiveIron>, <ore:circuitGood>, <ore:plateConductiveIron>], 
[<ore:cableGtDoubleMvSuperconductorBase>, <ore:frameGtInvar>, <ore:cableGtDoubleMvSuperconductorBase>], 
[motor_mv, <ore:rotorBronze>, motor_mv]]);

// --- Electrical Steel Thruster
recipes.addShaped(<simplyjetpacks:metaitemmods:8>, 
[[<ore:plateElectricalSteel>, <ore:circuitAdvanced>, <ore:plateElectricalSteel>], 
[<ore:cableGtDoubleHvSuperconductorBase>, <ore:frameGtBlueSteel>, <ore:cableGtDoubleHvSuperconductorBase>], 
[motor_hv, <ore:rotorSteel>, motor_hv]]);

// --- Energetic Thruster
recipes.addShaped(<simplyjetpacks:metaitemmods:9>, 
[[<ore:plateEnergeticAlloy>, <ore:circuitExtreme>, <ore:plateEnergeticAlloy>], 
[<ore:cableGtDoubleEvSuperconductorBase>, <ore:frameGtStainlessSteel>, <ore:cableGtDoubleEvSuperconductorBase>], 
[motor_ev, <ore:rotorStainlessSteel>, motor_ev]]);

// --- Vibrant Thruster
recipes.addShaped(<simplyjetpacks:metaitemmods:10>, 
[[<ore:plateVibrantAlloy>, <ore:circuitElite>, <ore:plateVibrantAlloy>], 
[<ore:cableGtDoubleIvSuperconductorBase>, <ore:frameGtHssg>, <ore:cableGtDoubleIvSuperconductorBase>], 
[motor_iv, <ore:rotorTungstenSteel>, motor_iv]]);

// --- Dark Soularium Thruster
recipes.addShaped(<simplyjetpacks:metaitemmods:11>, 
[[<ore:plateDarkSoularium>, <ore:circuitMaster>, <ore:plateDarkSoularium>], 
[<ore:cableGtDoubleLuvSuperconductorBase>, <ore:frameGtHsse>, <ore:cableGtDoubleLuvSuperconductorBase>], 
[motor_luv, <ore:rotorHssg>, motor_luv]]);


// --- Leather Strap
recipes.addShaped(<simplyjetpacks:metaitem:4>, [[<ore:leather>, <ore:plateIron>, <ore:leather>], [null, <ore:string>, null]]);


// --- Reinforced Glider Wing
recipes.addShaped(<simplyjetpacks:metaitemmods:4>, 
[[null, <ore:craftingToolFile>, <ore:plateDarkSoularium>], 
[<ore:craftingToolHardHammer>, <ore:plateDarkSoularium>, conductive_iron_armor_plating], 
[<ore:plateDarkSoularium>, conductive_iron_armor_plating, conductive_iron_armor_plating]]);


// --- Flight Control Unit (Empty)
recipes.addShaped(<simplyjetpacks:metaitemmods:5>, 
[[<ore:plateRedSteel>, <ore:plateDarkSoularium>, <ore:plateRedSteel>], 
[<ore:plateDarkSoularium>, <ore:plateGlass>, <ore:plateDarkSoularium>], 
[<ore:plateRedSteel>, <ore:plateDarkSoularium>, <ore:plateRedSteel>]]);



















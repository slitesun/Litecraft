//
var steel_casing = <mekanism:basicblock:8>;
var refined_obsidian = <mekanism:otherdust:5>;

var resonant_upgrade = <thermalfoundation:upgrade:3>;

var transfer_node_items = <extrautils2:grocket>;
var transfer_node_fluids = <extrautils2:grocket:2>;
var retrieval_node_items = <extrautils2:grocket:3>;

//Энергетические кубы
recipes.remove(<mekanism:energycube>);

//Базовая микросхема
recipes.addShaped(<mekanism:controlcircuit>, [[<immersiveengineering:material:27>, <ore:nuggetConductiveIron>, <enderio:item_basic_capacitor>], [<ore:gemRedstone>, <ore:wireCopper>, <ore:ingotEnergeticAlloy>]]);

//Продвинутая микросхема
recipes.remove(<mekanism:controlcircuit:1>);
recipes.addShaped(<mekanism:controlcircuit:1>, [[<immersiveengineering:material:27>, <mekanism:controlcircuit>, <enderio:item_basic_capacitor:1>], [<ore:gemRedstone>, <ore:wireAluminium>, <ore:alloyAdvanced>]]);

//Элитная микросхема
recipes.remove(<mekanism:controlcircuit:2>);
recipes.addShaped(<mekanism:controlcircuit:2>, [[<immersiveengineering:material:27>, <mekanism:controlcircuit:1>, <enderio:item_basic_capacitor:1>], [<ore:gemRedstone>, <ore:wireElectrum>, <ore:alloyElite>]]);

//Совершенная микросхема
recipes.remove(<mekanism:controlcircuit:3>);
recipes.addShaped(<mekanism:controlcircuit:3>, [[<immersiveengineering:material:27>, <mekanism:controlcircuit:2>, <enderio:item_basic_capacitor:2>], [<extrautils2:suncrystal>, <ore:wireElectrum>, <ore:alloyUltimate>]]);

//Энергетический планшет
recipes.remove(<mekanism:energytablet>);
recipes.addShaped(<mekanism:energytablet>, [[<enderio:item_basic_capacitor>, <thermalexpansion:capacitor>, <enderio:item_basic_capacitor>], [<ore:ingotConductiveIron>, <ore:wireCopper>, <ore:ingotConductiveIron>]]);

//Ядро телепортации
recipes.remove(<mekanism:teleportationcore>);
recipes.addShaped(<mekanism:teleportationcore>, [[<ore:plateEnderium>, <ore:itemPulsatingCrystal>, <ore:plateEnderium>], [<ore:alloyUltimate>, <ore:gemRedstone>, <ore:alloyUltimate>], [<ore:plateEnderium>, <ore:itemPulsatingCrystal>, <ore:plateEnderium>]]);

//Каркас телепорта
recipes.remove(<mekanism:basicblock:7>);
recipes.addShaped(<mekanism:basicblock:7> * 3, [[<ore:ingotRefinedObsidian>, <ore:ingotVibrantAlloy>, <ore:ingotRefinedObsidian>], [<ore:ingotRefinedGlowstone>, <enderio:item_material:1>, <ore:ingotRefinedGlowstone>], [<ore:ingotRefinedObsidian>, <ore:ingotVibrantAlloy>, <ore:ingotRefinedObsidian>]]);

//Телепорт
recipes.remove(<mekanism:machineblock:11>);
recipes.addShaped(<mekanism:machineblock:11>, [[<ore:ingotRefinedObsidian>, <thermalfoundation:material:515>, <ore:ingotRefinedObsidian>], [<mekanism:teleportationcore>, steel_casing, <mekanism:teleportationcore>], [<ore:circuitBasic>, <enderio:block_cap_bank:2>, <ore:circuitBasic>]]);

//Квантовый телепорт
recipes.remove(<mekanism:machineblock3>);
recipes.addShaped(<mekanism:machineblock3>, [[<ore:ingotRefinedObsidian>, <ore:circuitUltimate>, <ore:ingotRefinedObsidian>], [<ore:alloyUltimate>, steel_casing, <ore:alloyUltimate>], [retrieval_node_items, <mekanism:teleportationcore>, retrieval_node_items]]);

//Стальной корпус
recipes.remove(steel_casing);
recipes.addShaped(steel_casing, [[<ore:blockGlassHardened>, <ore:plateSteel>, <ore:blockGlassHardened>], [<ore:plateSteel>, <enderio:item_basic_capacitor:2>, <ore:plateSteel>], [<ore:blockGlassHardened>, <ore:plateSteel>, <ore:blockGlassHardened>]]);

//Металлургический наполнитель
recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped(<mekanism:machineblock:8>, [[<ore:ingotEnergeticAlloy>, resonant_upgrade, <ore:ingotEnergeticAlloy>], [<ore:circuitBasic>, steel_casing, <ore:circuitBasic>], [transfer_node_fluids, <ore:ingotRedstoneAlloy>, transfer_node_items]]);

//Обогащённый сплав
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:enrichedalloy>, <modernmetals:aluminum_ingot>, <minecraft:redstone>, 2000);

//Укреплённый сплав
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:reinforcedalloy>, <mekanism:enrichedalloy>, <basemetals:diamond_powder>, 4000);

//Атомный сплав
mods.thermalexpansion.InductionSmelter.addRecipe(<mekanism:atomicalloy>, <mekanism:reinforcedalloy>, refined_obsidian, 6000);


























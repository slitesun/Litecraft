// Created by Miha_77

import mods.thermalexpansion.InductionSmelter;

var steel_casing = <mekanism:basicblock:8>;
var refined_obsidian = <mekanism:otherdust:5>;
var signalum_ingot = <thermalfoundation:material:165>;
var enderium_ingot = <thermalfoundation:material:167>;

var resonant_upgrade = <thermalfoundation:upgrade:3>;

var transfer_node_items = <extrautils2:grocket>;
var transfer_node_fluids = <extrautils2:grocket:2>;
var retrieval_node_items = <extrautils2:grocket:3>;

//Энергетические кубы
recipes.remove(<mekanism:energycube>);

//Продвинутая микросхема
recipes.remove(<mekanism:controlcircuit:1>);

//Элитная микросхема
recipes.remove(<mekanism:controlcircuit:2>);

//Совершенная микросхема
recipes.remove(<mekanism:controlcircuit:3>);

//Слиток очищенного обсидиана
recipes.remove(<mekanism:ingot>);
recipes.addShaped(<mekanism:ingot>, [[<mekanism:nugget>, <mekanism:nugget>, <mekanism:nugget>], [<mekanism:nugget>, <mekanism:nugget>, <mekanism:nugget>], [<mekanism:nugget>, <mekanism:nugget>, <mekanism:nugget>]]);
recipes.addShapeless(<mekanism:ingot> * 9, [<mekanism:basicblock:2>]);

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
recipes.addShaped(<mekanism:machineblock:11>, [[<customitems:plate_osgloglas>, <thermalfoundation:material:515>, <customitems:plate_osgloglas>], [<mekanism:teleportationcore>, steel_casing, <mekanism:teleportationcore>], [<ore:circuitBasic>, <enderio:block_cap_bank:2>, <ore:circuitBasic>]]);

//Квантовый телепорт
recipes.remove(<mekanism:machineblock3>);
recipes.addShaped(<mekanism:machineblock3>, [[<ore:ingotRefinedObsidian>, <ore:circuitUltimate>, <ore:ingotRefinedObsidian>], [<ore:alloyUltimate>, steel_casing, <ore:alloyUltimate>], [retrieval_node_items, <mekanism:teleportationcore>, retrieval_node_items]]);

//Стальной корпус
recipes.remove(steel_casing);
recipes.addShaped(steel_casing, [[<ore:plateStainlesssteel>, <customitems:plate_osgloglas>, <ore:plateStainlesssteel>], [<ore:plateStainlesssteel>, <mekanism:controlcircuit>, <ore:plateStainlesssteel>], [<ore:plateStainlesssteel>, <customitems:plate_osgloglas>, <ore:plateStainlesssteel>]]);

//Металлургический наполнитель
recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped(<mekanism:machineblock:8>, [[<ore:ingotEnergeticAlloy>, resonant_upgrade, <ore:ingotEnergeticAlloy>], [<ore:circuitBasic>, steel_casing, <ore:circuitBasic>], [transfer_node_fluids, <ore:ingotRedstoneAlloy>, transfer_node_items]]);

//Обогащённый сплав
InductionSmelter.addRecipe(<mekanism:enrichedalloy>, <modernmetals:stainlesssteel_ingot>, <minecraft:redstone> * 4, 4000);

//Укреплённый сплав
InductionSmelter.addRecipe(<mekanism:reinforcedalloy>, signalum_ingot, <basemetals:diamond_powder> * 4, 5000);

//Атомный сплав
InductionSmelter.addRecipe(<mekanism:atomicalloy>, enderium_ingot, refined_obsidian * 4, 6000);

// Created by Miha_77



// --- Imports ---
import mods.gregtech.recipe.RecipeMap;



// --- Variables ---
var interface_cover = <litecraftcore:lc_meta_item:15>;
var fluids_IO_plate = <litecraftcore:lc_meta_item:18>;

var transfer_node_fluids = <gregtech:meta_item_1:32613>;
var transfer_node_items = <gregtech:meta_item_1:32633>;
var PowerIC = <gregtech:meta_item_2:32483>;

var conveyor_hv = <gregtech:meta_item_1:32632>;

val ALLOY_SMELTER = RecipeMap.getByName("alloy_smelter");



//Graphite
furnace.remove(<bigreactors:ingotgraphite>, <minecraft:coal>);
furnace.remove(<bigreactors:ingotgraphite>, <minecraft:coal:1>);

// Reactor Casing Core
recipes.remove(<bigreactors:reactorcasingcores>);
recipes.addShaped(<bigreactors:reactorcasingcores>, [[<ore:stickSteel>, <ore:dustGraphite>, <ore:stickSteel>], [<ore:rodGold>, <ore:plateSignalum>, <ore:rodGold>], [<ore:stickSteel>, <ore:dustGraphite>, <ore:stickSteel>]]);

// Reactor casing
recipes.remove(<bigreactors:reactorcasing>);
recipes.addShaped(<bigreactors:reactorcasing> * 2, [[<ore:plateAlumite>, <ore:plateSignalum>, <ore:plateAlumite>], [<ore:plateSignalum>, <bigreactors:reactorcasingcores>, <ore:plateSignalum>],[<ore:plateAlumite>, <ore:plateSignalum>, <ore:plateAlumite>]]);

//Ядро корпуса турбины
recipes.remove(<bigreactors:turbinehousingcores>);
recipes.addShaped(<bigreactors:turbinehousingcores>, [[<ore:plateGold>, <ore:plateAlumite>, <ore:plateGold>], [<ore:dustGraphite>, <ore:plateSignalum>, <ore:dustGraphite>], [<ore:plateGold>, <ore:plateAlumite>, <ore:plateGold>]]);

//Корпус турбины
recipes.remove(<bigreactors:turbinehousing>);
recipes.addShaped(<bigreactors:turbinehousing> * 2, [[<ore:plateAlumite>, <ore:plateSignalum>, <ore:plateAlumite>], [<ore:plateSignalum>, <bigreactors:turbinehousingcores>, <ore:plateSignalum>],[<ore:plateAlumite>, <ore:plateSignalum>, <ore:plateAlumite>]]);

//Реакторное стекло
recipes.remove(<bigreactors:reactorglass>);

ALLOY_SMELTER.recipeBuilder()
    .duration(1000).EUt(4)
    .inputs(<ore:dustBorosilicateGlass> * 8)
    .inputs(<ore:dustInvar>)
    .outputs(<bigreactors:reactorglass>)
    .buildAndRegister();

//Турбинное стекло
recipes.remove(<bigreactors:turbineglass>);

ALLOY_SMELTER.recipeBuilder()
    .duration(1000).EUt(4)
    .inputs(<ore:dustBorosilicateGlass> * 8)
    .inputs(<ore:dustAlumite>)
    .outputs(<bigreactors:turbineglass>)
    .buildAndRegister();

//Контроллер реактора
recipes.remove(<bigreactors:reactorcontroller>);
recipes.addShaped(<bigreactors:reactorcontroller>, [[<ore:plateSignalum>, <ore:plateGlowstone>, <ore:plateSignalum>], [<ore:plateSignalum>, interface_cover, <ore:plateSignalum>], [<ore:circuitElite>, <bigreactors:reactorcasing>, <ore:circuitElite>]]);

//Контроллер турбины
recipes.remove(<bigreactors:turbinecontroller>);
recipes.addShaped(<bigreactors:turbinecontroller>, [[<ore:plateSignalum>, <ore:plateGlowstone>, <ore:plateSignalum>], [<ore:plateSignalum>, interface_cover, <ore:plateSignalum>], [<ore:circuitElite>, <bigreactors:turbinehousing>, <ore:circuitElite>]]);

//Реакторная розетка
recipes.remove(<bigreactors:reactorpowertaprf>);
recipes.addShaped(<bigreactors:reactorpowertaprf>, [[null, <ore:cableGtDoubleVibrantAlloy>, null], [<ore:cableGtDoubleVibrantAlloy>, <bigreactors:reactorcasing>, <ore:cableGtDoubleVibrantAlloy>], [PowerIC, <ore:cableGtDoubleVibrantAlloy>, PowerIC]]);

//Турбинная розетка
recipes.remove(<bigreactors:turbinepowertaprf>);
recipes.addShaped(<bigreactors:turbinepowertaprf>, [[null, <ore:cableGtDoubleVibrantAlloy>, null], [<ore:cableGtDoubleVibrantAlloy>, <bigreactors:turbinehousing>, <ore:cableGtDoubleVibrantAlloy>], [PowerIC, <ore:cableGtDoubleVibrantAlloy>, PowerIC]]);

//Реакторный порт красного камня
recipes.remove(<bigreactors:reactorredstoneport>);
recipes.addShaped(<bigreactors:reactorredstoneport>, [[null, <ore:cableGtDoubleRedstoneAlloy>, null], [<ore:cableGtDoubleRedstoneAlloy>, <bigreactors:reactorcasing>, <ore:cableGtDoubleRedstoneAlloy>], [null, <ore:cableGtDoubleRedstoneAlloy>, null]]);
// -
recipes.addShaped(<bigreactors:reactorredstoneport>, [[null, <ore:cableGtDoubleRedAlloy>, null], [<ore:cableGtDoubleRedAlloy>, <bigreactors:reactorcasing>, <ore:cableGtDoubleRedAlloy>], [null, <ore:cableGtDoubleRedAlloy>, null]]);

//Охлаждающий порт реактора
recipes.remove(<bigreactors:reactorcoolantport>);
recipes.addShaped(<bigreactors:reactorcoolantport>, [[null, transfer_node_fluids, null], [null, <bigreactors:reactorcasing>, null], [fluids_IO_plate, transfer_node_fluids, fluids_IO_plate]]);

//Жидкостный порт турбины
recipes.remove(<bigreactors:turbinefluidport>);
recipes.addShaped(<bigreactors:turbinefluidport>, [[null, transfer_node_fluids, null], [null, <bigreactors:turbinehousing>, null], [fluids_IO_plate, transfer_node_fluids, fluids_IO_plate]]);

//Топливный стержень
recipes.remove(<bigreactors:reactorfuelrod>);
recipes.addShaped(<bigreactors:reactorfuelrod>, [[<ore:stickLongTitanium>, <ore:blockGlassHardened>, <ore:stickLongTitanium>], [<ore:stickLongTitanium>, <ore:blockGlassHardened>, <ore:stickLongTitanium>], [<ore:stickLongTitanium>, <ore:blockGlassHardened>, <ore:stickLongTitanium>]]);

//Блок контроля топливного стержня
recipes.remove(<bigreactors:reactorcontrolrod>);
recipes.addShaped(<bigreactors:reactorcontrolrod>, [[null, null, null], [null, <ore:plateRedstoneAlloy>, null], [<ore:circuitElite>, <bigreactors:reactorcasing>, <ore:circuitElite>]]);

//Порт доступа
recipes.remove(<bigreactors:reactoraccessport>);
recipes.addShaped(<bigreactors:reactoraccessport>, [[null, null, null], [null, <minecraft:chest>, <enderio:item_item_conduit>], [null, <bigreactors:reactorcasing>, conveyor_hv]]);

//Вал ротора турбины
recipes.remove(<bigreactors:turbinerotorshaft>);
recipes.addShaped(<bigreactors:turbinerotorshaft>, [[<ore:stickLongTitanium>], [<ore:stickLongTitanium>], [<ore:stickLongTitanium>]]);

//Подшипник ротора турбины
recipes.remove(<bigreactors:turbinebearing>);
recipes.addShaped(<bigreactors:turbinebearing>, [[<bigreactors:turbinerotorshaft>, <ore:plateDiamond>, null], [<bigreactors:turbinerotorshaft>, <ore:plateDiamond>, <bigreactors:turbinehousing>], [<bigreactors:turbinerotorshaft>, <ore:plateDiamond>, null]]);

//Лезвие ротора турбины
recipes.remove(<bigreactors:turbinerotorblade>);
recipes.addShaped(<bigreactors:turbinerotorblade>, [[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]]);

//Ядро корпуса реактора
recipes.remove(<bigreactors:reactorcasingcores>);
recipes.addShaped(<bigreactors:reactorcasingcores>, [[<ore:stickSteel>, <ore:dustGraphite>, <ore:stickSteel>], [<ore:rodGold>, <mekanism:reinforcedalloy>, <ore:rodGold>], [<ore:stickSteel>, <ore:dustGraphite>, <ore:stickSteel>]]);

//Корпус реактора
recipes.remove(<bigreactors:reactorcasing>);
recipes.addShaped(<bigreactors:reactorcasing> * 2, [[<ore:plateSteel>, <ore:plateSignalum>, <ore:plateSteel>], [<ore:plateSignalum>, <bigreactors:reactorcasingcores>, <ore:plateSignalum>],[<ore:plateSteel>, <ore:plateSignalum>, <ore:plateSteel>]]);

//Ядро корпуса турбины
recipes.remove(<bigreactors:turbinehousingcores>);
recipes.addShaped(<bigreactors:turbinehousingcores>, [[<ore:plateGold>, <ore:plateSteel>, <ore:plateGold>], [<ore:dustGraphite>, <mekanism:reinforcedalloy>, <ore:dustGraphite>], [<ore:plateGold>, <ore:plateSteel>, <ore:plateGold>]]);

//Корпус турбины
recipes.remove(<bigreactors:turbinehousing>);
recipes.addShaped(<bigreactors:turbinehousing> * 2, [[<ore:plateSteel>, <ore:plateSignalum>, <ore:plateSteel>], [<ore:plateSignalum>, <bigreactors:turbinehousingcores>, <ore:plateSignalum>],[<ore:plateSteel>, <ore:plateSignalum>, <ore:plateSteel>]]);

//Реакторное стекло
recipes.remove(<bigreactors:reactorglass>);
recipes.addShapeless(<bigreactors:reactorglass>, [<bigreactors:reactorcasing>, <ore:blockGlassHardened>]);

//Турбинное стекло
recipes.remove(<bigreactors:turbineglass>);
recipes.addShapeless(<bigreactors:turbineglass>, [<bigreactors:turbinehousing>, <ore:blockGlassHardened>]);

//Контроллер реактора
recipes.remove(<bigreactors:reactorcontroller>);
recipes.addShaped(<bigreactors:reactorcontroller>, [[<mekanism:reinforcedalloy>, <ore:dustGlowstone>, <mekanism:reinforcedalloy>], [<ore:plateSignalum>, <advancedrocketry:misc>, <ore:plateSignalum>], [<ore:circuitElite>, <bigreactors:reactorcasing>, <ore:circuitElite>]]);

//Контроллер турбины
recipes.remove(<bigreactors:turbinecontroller>);
recipes.addShaped(<bigreactors:turbinecontroller>, [[<ore:ingotPlutonium>, <ore:dustGlowstone>, <ore:ingotPlutonium>], [<ore:plateSignalum>, <advancedrocketry:misc>, <ore:plateSignalum>], [<ore:circuitElite>, <bigreactors:reactorcasing>, <ore:circuitElite>]]);

//Реакторная розетка
recipes.remove(<bigreactors:reactorpowertaprf>);
recipes.addShaped(<bigreactors:reactorpowertaprf>, [[null, <ore:ingotVibrantAlloy>, null], [<ore:ingotVibrantAlloy>, <bigreactors:turbinehousing>, <ore:ingotVibrantAlloy>], [null, <ore:ingotVibrantAlloy>, null]]);

//Турбинная розетка
recipes.remove(<bigreactors:turbinepowertaprf>);
recipes.addShaped(<bigreactors:turbinepowertaprf>, [[null, <ore:ingotVibrantAlloy>, null], [<ore:ingotVibrantAlloy>, <bigreactors:turbinehousing>, <ore:ingotVibrantAlloy>], [null, <ore:ingotVibrantAlloy>, null]]);

//Реакторный порт красного камня
recipes.remove(<bigreactors:reactorredstoneport>);
recipes.addShaped(<bigreactors:reactorredstoneport>, [[null, <ore:ingotRedstoneAlloy>, null], [<ore:gemRedstone>, <bigreactors:turbinehousing>, <ore:gemRedstone>], [null, <ore:ingotRedstoneAlloy>, null]]);

//Охлаждающий порт реактора
recipes.remove(<bigreactors:reactorcoolantport>);
recipes.addShaped(<bigreactors:reactorcoolantport>, [[null, <extrautils2:grocket:2>, null], [null, <bigreactors:reactorcasing>, null], [<advancedrocketry:ic:5>, <extrautils2:grocket:2>, <advancedrocketry:ic:5>]]);

//Жидкостный порт турбины
recipes.remove(<bigreactors:turbinefluidport>);
recipes.addShaped(<bigreactors:turbinefluidport>, [[null, <extrautils2:grocket:2>, null], [null, <bigreactors:turbinehousing>, null], [<advancedrocketry:ic:5>, <extrautils2:grocket:2>, <advancedrocketry:ic:5>]]);

//Топливный стержень
recipes.remove(<bigreactors:reactorfuelrod>);
recipes.addShaped(<bigreactors:reactorfuelrod>, [[<ore:stickTitaniumAluminide>, <ore:blockGlassHardened>, <ore:stickTitaniumAluminide>], [<ore:stickTitaniumAluminide>, <ore:blockGlassHardened>, <ore:stickTitaniumAluminide>], [<ore:stickTitaniumAluminide>, <ore:blockGlassHardened>, <ore:stickTitaniumAluminide>]]);

//Блок контроля топливного стержня
recipes.remove(<bigreactors:reactorcontrolrod>);
recipes.addShaped(<bigreactors:reactorcontrolrod>, [[null, <extrautils2:grocket>, null], [null, <ore:ingotRedstoneAlloy>, null], [<ore:circuitElite>, <bigreactors:reactorcasing>, <ore:circuitElite>]]);

//Порт доступа
recipes.remove(<bigreactors:reactoraccessport>);
recipes.addShaped(<bigreactors:reactoraccessport>, [[null, <mekanism:reinforcedalloy>, null], [<extrautils2:grocket>, <minecraft:chest>, <bigreactors:reactorcasing>], [<advancedrocketry:ic:4>, <mekanism:reinforcedalloy>, <advancedrocketry:ic:4>]]);

//Вал ротора турбины
recipes.remove(<bigreactors:turbinerotorshaft>);
recipes.addShaped(<bigreactors:turbinerotorshaft>, [[<ore:stickTitaniumIridium>], [<ore:stickTitaniumIridium>], [<ore:stickTitaniumIridium>]]);

//Подшипник ротора турбины
recipes.remove(<bigreactors:turbinebearing>);
recipes.addShaped(<bigreactors:turbinebearing>, [[<bigreactors:turbinerotorshaft>, <ore:plateDiamond>, null], [<bigreactors:turbinerotorshaft>, <ore:plateDiamond>, <bigreactors:turbinehousing>], [<bigreactors:turbinerotorshaft>, <ore:plateDiamond>, null]]);

//Лезвие ротора турбины
recipes.remove(<bigreactors:turbinerotorblade>);
recipes.addShaped(<bigreactors:turbinerotorblade>, [[<ore:plateTitaniumIridium>, <ore:plateTitaniumIridium>, <ore:plateTitaniumIridium>]]);



//Бенитоит
mods.thermalexpansion.Pulverizer.addRecipe(<bigreactors:minerals:1> * 2, <bigreactors:brore:2>, 4000);

//Англезит
mods.thermalexpansion.Pulverizer.addRecipe(<bigreactors:minerals> * 2, <bigreactors:brore:1>, 4000);

//Графит
//mods.thermalexpansion.Centrifuge.addRecipe(WeightedItemStack[] outputs, IItemStack input, ILiquidStack fluid, int energy);
mods.thermalexpansion.Centrifuge.addRecipe([<bigreactors:dustmetals:2>], <immersiveengineering:material:17> * 8, null, 8000);
















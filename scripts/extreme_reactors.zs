//Ядро корпуса реактора
recipes.remove(<bigreactors:reactorcasingcores>);
recipes.addShaped(<bigreactors:reactorcasingcores>, [[<ore:stickSteel>, <ore:dustGraphite>, <ore:stickSteel>], [<ore:rodGold>, <ore:ingotRedstoneAlloy>, <ore:rodGold>], [<ore:stickSteel>, <ore:dustGraphite>, <ore:stickSteel>]]);

//Корпус реактора
recipes.remove(<bigreactors:reactorcasing>);
recipes.addShaped(<bigreactors:reactorcasing> * 2, [[<ore:plateSteel>, <ore:plateSignalum>, <ore:plateSteel>], [<ore:plateSignalum>, <bigreactors:reactorcasingcores>, <ore:plateSignalum>],[<ore:plateSteel>, <ore:plateSignalum>, <ore:plateSteel>]]);

//Ядро корпуса турбины
recipes.remove(<bigreactors:turbinehousingcores>);
recipes.addShaped(<bigreactors:turbinehousingcores>, [[<ore:plateGold>, <ore:plateSteel>, <ore:plateGold>], [<ore:dustGraphite>, <ore:ingotRedstoneAlloy>, <ore:dustGraphite>], [<ore:plateGold>, <ore:plateSteel>, <ore:plateGold>]]);

//Корпус турбины
recipes.remove(<bigreactors:turbinehousing>);
recipes.addShaped(<bigreactors:turbinehousing> * 2, [[<ore:plateSteel>, <ore:plateSignalum>, <ore:plateSteel>], [<ore:plateSignalum>, <bigreactors:turbinehousingcores>, <ore:plateSignalum>],[<ore:plateSteel>, <ore:plateSignalum>, <ore:plateSteel>]]);

//Реакторное стекло
recipes.remove(<bigreactors:reactorglass>);
recipes.addShaped(<bigreactors:reactorglass>, [[null, <ore:stickSteel>, null], [<ore:stickSteel>, <thermalfoundation:glass:3>, <ore:stickSteel>], [null, <ore:stickSteel>, null]]);

//Турбинное стекло
recipes.remove(<bigreactors:turbineglass>);
recipes.addShaped(<bigreactors:turbineglass>, [[null, <ore:stickSteel>, null], [<ore:stickSteel>, <ore:fusedQuartz>, <ore:stickSteel>], [null, <ore:stickSteel>, null]]);

//Контроллер реактора
recipes.remove(<bigreactors:reactorcontroller>);
recipes.addShaped(<bigreactors:reactorcontroller>, [[<ore:ingotRedstoneAlloy>, <ore:dustGlowstone>, <ore:ingotRedstoneAlloy>], [<ore:plateSignalum>, <ore:plateDiamond>, <ore:plateSignalum>], [<ore:plateSteel>, <bigreactors:reactorcasing>, <ore:plateSteel>]]);

//Контроллер турбины
recipes.remove(<bigreactors:turbinecontroller>);
recipes.addShaped(<bigreactors:turbinecontroller>, [[<bigreactors:ingotmetals:3>, <ore:dustGlowstone>, <bigreactors:ingotmetals:3>], [<ore:plateSignalum>, <ore:plateDiamond>, <ore:plateSignalum>], [<ore:plateSteel>, <bigreactors:reactorcasing>, <ore:plateSteel>]]);

//Reactor Redstone Flux Power Tap
recipes.remove(<bigreactors:reactorpowertaprf>);
recipes.addShaped(<bigreactors:reactorpowertaprf>, [[null, <ore:ingotRedstoneAlloy>, null], [<ore:ingotRedstoneAlloy>, <bigreactors:turbinehousing>, <ore:ingotRedstoneAlloy>], [null, <ore:ingotRedstoneAlloy>, null]]);

//Turbine Redstone Flux Power Tap
recipes.remove(<bigreactors:turbinepowertaprf>);
recipes.addShaped(<bigreactors:turbinepowertaprf>, [[null, <ore:ingotRedstoneAlloy>, null], [<ore:ingotRedstoneAlloy>, <bigreactors:turbinehousing>, <ore:ingotRedstoneAlloy>], [null, <ore:ingotRedstoneAlloy>, null]]);

//Реакторный порт красного камня
recipes.remove(<bigreactors:reactorredstoneport>);
recipes.addShaped(<bigreactors:reactorredstoneport>, [[null, <ore:ingotRedstoneAlloy>, null], [<ore:dustGold>, <bigreactors:turbinehousing>, <ore:dustGold>], [null, <ore:ingotRedstoneAlloy>, null]]);

//Охлаждающий порт реактора
recipes.remove(<bigreactors:reactorcoolantport>);
recipes.addShaped(<bigreactors:reactorcoolantport>, [[null, <extrautils2:grocket:2>, null], [null, <bigreactors:reactorcasing>, null], [null, <extrautils2:grocket:2>, null]]);

//Жидкостный порт турбины
recipes.remove(<bigreactors:turbinefluidport>);
recipes.addShaped(<bigreactors:turbinefluidport>, [[null, <extrautils2:grocket:2>, null], [null, <bigreactors:turbinehousing>, null], [null, <extrautils2:grocket:2>, null]]);

//Топливный стержень
recipes.remove(<bigreactors:reactorfuelrod>);
recipes.addShaped(<bigreactors:reactorfuelrod>, [[<ore:stickSteel>, <ore:blockGlassHardened>, <ore:stickSteel>], [<ore:stickYellorium>, <ore:blockGlassHardened>, <ore:stickYellorium>], [<ore:stickSteel>, <ore:blockGlassHardened>, <ore:stickSteel>]]);

//Блок контроля топливного стержня
recipes.remove(<bigreactors:reactorcontrolrod>);
recipes.addShaped(<bigreactors:reactorcontrolrod>, [[null, <extrautils2:grocket>, null], [null, <ore:ingotRedstoneAlloy>, null], [null, <bigreactors:reactorcasing>, null]]);

//Порт доступа
recipes.remove(<bigreactors:reactoraccessport>);
recipes.addShaped(<bigreactors:reactoraccessport>, [[null, null, null], [<extrautils2:grocket>, <minecraft:chest>, <bigreactors:reactorcasing>], [null, null, null]]);

//Turbine Rotor Shaft
recipes.remove(<bigreactors:turbinerotorshaft>);
recipes.addShaped(<bigreactors:turbinerotorshaft>, [[<ore:plateInvar>, <ore:plateSteel>, <ore:plateInvar>], [<ore:plateInvar>, <ore:plateSteel>, <ore:plateInvar>], [<ore:plateInvar>, <ore:plateSteel>, <ore:plateInvar>]]);

//
recipes.remove(<bigreactors:turbinebearing>);
recipes.addShaped(<bigreactors:turbinebearing>, [[<bigreactors:turbinerotorshaft>, <ore:plateDiamond>, null], [<bigreactors:turbinerotorshaft>, <ore:plateDiamond>, <bigreactors:turbinehousing>], [<bigreactors:turbinerotorshaft>, <ore:plateDiamond>, null]]);
















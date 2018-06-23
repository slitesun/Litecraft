//Рамки

//Рамка механизма
recipes.remove(<thermalexpansion:frame>);
recipes.addShaped(<thermalexpansion:frame>, [[<ore:ingotSteel>, <ore:ingotHOPGraphite>, <ore:ingotSteel>], [<enderio:item_basic_capacitor>, <ore:blockGlassHardened>, <enderio:item_basic_capacitor>], [<ore:ingotSteel>, <ore:ingotHOPGraphite>, <ore:ingotSteel>]]);

//Рамка устройства
recipes.remove(<thermalexpansion:frame:64>);
recipes.addShaped(<thermalexpansion:frame:64>, [[<ore:ingotSteel>, <mekanism:enrichedalloy>, <ore:ingotSteel>], [<enderio:item_basic_capacitor>, <ore:blockGlassHardened>, <enderio:item_basic_capacitor>], [<ore:ingotSteel>, <mekanism:enrichedalloy>, <ore:ingotSteel>]]);

//Рамка энергетической ячейки
recipes.remove(<thermalexpansion:frame:128>);
recipes.addShaped(<thermalexpansion:frame:128>, [[<ore:rodSteel>, <ore:rodGold>, <ore:rodSteel>], [<ore:rodLead>, <ore:blockGlassHardened>, <ore:rodLead>], [<ore:rodSteel>, <ore:rodGold>, <ore:rodSteel>]]);

//Наборы обновлений

//Усиленный набор обновления
recipes.remove(<thermalfoundation:upgrade>);
recipes.addShaped(<thermalfoundation:upgrade>, [[null, <ore:ingotAluminum>, null], [<ore:ingotAluminum>, <ore:gearInvar>, <ore:ingotAluminum>], [<ore:ingotConductiveIron>, <ore:ingotAluminum>, <ore:ingotConductiveIron>]]);

//Укреплённый набор обновления
recipes.remove(<thermalfoundation:upgrade:1>);
recipes.addShaped(<thermalfoundation:upgrade:1>, [[null, <ore:ingotStainlessSteel>, null], [<ore:ingotStainlessSteel>, <ore:gearManganese>, <ore:ingotStainlessSteel>], [<ore:ingotEnergeticAlloy>, <ore:ingotStainlessSteel>, <ore:ingotEnergeticAlloy>]]);

//Синаловый набор обновления
recipes.remove(<thermalfoundation:upgrade:2>);
recipes.addShaped(<thermalfoundation:upgrade:2>, [[null, <ore:ingotSignalum>, null], [<ore:ingotSignalum>, <ore:gearChromium>, <ore:ingotSignalum>], [<ore:ingotPulsatingIron>, <ore:ingotSignalum>, <ore:ingotPulsatingIron>]]);

//Резонирующий набор обновления
recipes.remove(<thermalfoundation:upgrade:3>);
recipes.addShaped(<thermalfoundation:upgrade:3>, [[null, <ore:ingotEnderium>, null], [<ore:ingotEnderium>, <ore:gearLumium>, <ore:ingotEnderium>], [<ore:ingotVibrantAlloy>, <ore:ingotEnderium>, <ore:ingotVibrantAlloy>]]);

//Энергетическая ячейка
recipes.remove(<thermalexpansion:cell>);
recipes.addShaped(<thermalexpansion:cell>, [[<ore:ingotConductiveIron>, <ore:blockRedstone>, <ore:ingotConductiveIron>], [<thermalfoundation:material:513>, <thermalfoundation:material:515>, <thermalfoundation:material:514>], [<ore:battery>, <thermalexpansion:frame:128>, <ore:battery>]]);

//Синаловая смесь
recipes.remove(<thermalfoundation:material:101>);
recipes.addShapeless(<thermalfoundation:material:101> * 4, [<ore:dustTitanium>, <ore:dustTitanium>, <ore:dustTitanium>, <ore:dustOsmium>, <forge:bucketfilled>.withTag({FluidName: "redstone", Amount: 1000})]);

//Ламиумовая смесь
recipes.remove(<thermalfoundation:material:102>);
recipes.addShapeless(<thermalfoundation:material:102> * 4, [<ore:dustAluminum>, <ore:dustAluminum>, <ore:dustAluminum>, <ore:dustPlatinum>, <forge:bucketfilled>.withTag({FluidName: "glowstone", Amount: 1000})]);

//Эндериумная смесь
recipes.remove(<thermalfoundation:material:103>);
recipes.addShapeless(<thermalfoundation:material:103> * 4, [<ore:dustOsmium>, <ore:dustOsmium>, <ore:dustOsmium>, <ore:dustPlatinum>, <forge:bucketfilled>.withTag({FluidName: "ender", Amount: 1000})]);

//Флаксовый конденсатор(основной)
recipes.remove(<thermalexpansion:capacitor>);
recipes.addShaped(<thermalexpansion:capacitor>, [[null, <ore:ingotCopper>, null], [<ore:plateLead>, <ore:dustLead>, <ore:plateLead>], [<ore:plateLead>, <ore:dustSulfur>, <ore:plateLead>]]);

//Флаксовый конденсатор(усиленный)
recipes.remove(<thermalexpansion:capacitor:1>);
recipes.addShaped(<thermalexpansion:capacitor:1>, [[null, <ore:ingotConductiveIron>, null], [<ore:plateAluminum>, <ore:dustLithium>, <ore:plateAluminum>], [<ore:plateAluminum>, <ore:dustLithium>, <ore:plateAluminum>]]);

//Флаксовый конденсатор(укреплённый)
recipes.remove(<thermalexpansion:capacitor:2>);
recipes.addShaped(<thermalexpansion:capacitor:2>, [[<ore:ingotElectricalSteel>, <ore:ingotEnergeticAlloy>, <ore:ingotElectricalSteel>], [<ore:ingotStainlessSteel>, <ore:ingotEnergeticAlloy>, <ore:ingotStainlessSteel>], [<ore:ingotStainlessSteel>, <enderio:block_cap_bank:2>, <ore:ingotStainlessSteel>]]);

//Флаксовый конденсатор(синаловый)
recipes.remove(<thermalexpansion:capacitor:3>);
recipes.addShaped(<thermalexpansion:capacitor:3>, [[<ore:itemVibrantCrystal>, <ore:ingotPulsatingIron>, <ore:itemVibrantCrystal>], [<ore:plateSignalum>, <enderio:block_cap_bank:2>, <ore:plateSignalum>], [<ore:plateSignalum>, <enderio:block_cap_bank:2>, <ore:plateSignalum>]]);

//Флаксовый конденсатор(резонирующий)
recipes.remove(<thermalexpansion:capacitor:4>);
recipes.addShaped(<thermalexpansion:capacitor:4>, [[<ore:ingotLumium>, <ore:ingotVibrantAlloy>, <ore:ingotLumium>], [<ore:plateEnderium>, <ore:ingotVibrantAlloy>, <ore:plateEnderium>], [<ore:plateEnderium>, <enderio:block_cap_bank:3>, <ore:plateEnderium>]]);

//Головка дрели
recipes.remove(<thermalfoundation:material:656>);
recipes.addShaped(<thermalfoundation:material:656>, [[<ore:dustDiamond>, <ore:plateSteel>, <ore:dustDiamond>], [<ore:dustDiamond>, <ore:plateSteel>, <ore:dustDiamond>], [<ore:plateSteel>, <immersiveengineering:tool>, <ore:plateSteel>]]);

//Лезвие пилы
recipes.remove(<thermalfoundation:material:657>);
recipes.addShaped(<thermalfoundation:material:657>, [[<ore:dustDiamond>, <ore:plateSteel>, <ore:dustDiamond>], [<ore:plateSteel>, <immersiveengineering:tool>, <ore:plateSteel>], [<ore:dustDiamond>, <ore:plateSteel>, <ore:dustDiamond>]]);


//
var circuit = <advancedrocketry:ic>;
var reception_coil = <thermalfoundation:material:513>;
var transmission_coil = <thermalfoundation:material:514>;
var conductance_coil = <thermalfoundation:material:515>;
var hammer = <immersiveengineering:tool>;
var mechanical_component = <immersiveengineering:material:9>;


//Рамки

//Рамка механизма
recipes.remove(<thermalexpansion:frame>);
recipes.addShaped(<thermalexpansion:frame>, [[<ore:plateSteel>, <ore:ingotHOPGraphite>, <ore:plateSteel>], [<enderio:item_basic_capacitor>, <ore:blockGlassHardened>, <enderio:item_basic_capacitor>], [<ore:plateSteel>, <ore:ingotHOPGraphite>, <ore:plateSteel>]]);

//Рамка устройства
recipes.remove(<thermalexpansion:frame:64>);
recipes.addShaped(<thermalexpansion:frame:64>, [[<ore:plateSteel>, <mekanism:enrichedalloy>, <ore:plateSteel>], [<enderio:item_basic_capacitor>, <ore:blockGlassHardened>, <enderio:item_basic_capacitor>], [<ore:plateSteel>, <mekanism:enrichedalloy>, <ore:plateSteel>]]);

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
recipes.addShaped(<thermalexpansion:cell>, [[<ore:ingotConductiveIron>, <ore:blockRedstoneAlloy>, <ore:ingotConductiveIron>], [reception_coil, conductance_coil, transmission_coil], [<ore:battery>, <thermalexpansion:frame:128>, <ore:battery>]]);

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
recipes.addShaped(<thermalfoundation:material:656>, [[<ore:dustDiamond>, <ore:plateSteel>, <ore:dustDiamond>], [<ore:dustDiamond>, <ore:plateSteel>, <ore:dustDiamond>], [<ore:plateSteel>, hammer, <ore:plateSteel>]]);

//Лезвие пилы
recipes.remove(<thermalfoundation:material:657>);
recipes.addShaped(<thermalfoundation:material:657>, [[<ore:dustDiamond>, <ore:plateSteel>, <ore:dustDiamond>], [<ore:plateSteel>, hammer, <ore:plateSteel>], [<ore:dustDiamond>, <ore:plateSteel>, <ore:dustDiamond>]]);

//Фито-Гро
recipes.addShapeless(<thermalfoundation:fertilizer> * 4, [<ore:pulpWood>, <ore:pulpWood>, <ore:dustPhosphorus>, <ore:itemSlag>]);
recipes.addShapeless(<thermalfoundation:fertilizer> * 16, [<ore:dustCharcoal>, <ore:dustPhosphorus>, <ore:itemSlag>]);

//Обогащённый Фито-Гро
recipes.addShapeless(<thermalfoundation:fertilizer:1> * 4, [<ore:pulpWood>, <ore:pulpWood>, <ore:dustPhosphorus>, <ore:itemSlagRich>]);
recipes.addShapeless(<thermalfoundation:fertilizer:1> * 16, [<ore:dustCharcoal>, <ore:dustPhosphorus>, <ore:itemSlagRich>]);

//Рецепты машин

//Красная печь
recipes.remove(<thermalexpansion:machine>);
recipes.addShaped(<thermalexpansion:machine>, [[<ore:ingotConductiveIron>, reception_coil, <ore:ingotConductiveIron>], [<ore:ingotConductiveIron>, <thermalexpansion:frame>, <ore:ingotConductiveIron>], [<ore:wireCopper>, circuit, <ore:wireCopper>]]); 

//Измельчитель
recipes.remove(<thermalexpansion:machine:1>);
recipes.addShaped(<thermalexpansion:machine:1>, [[<ore:gemDiamond>, <ore:gearSteel>, <ore:gemDiamond>], [<ore:wireCopper>, <thermalexpansion:frame>, <ore:wireCopper>], [circuit, <libvulpes:motor>, circuit]]);

//Лесопилка
recipes.remove(<thermalexpansion:machine:2>);
recipes.addShaped(<thermalexpansion:machine:2>, [[<ore:gearSteel>, <advancedrocketry:sawblade>, <ore:gearSteel>], [<ore:wireCopper>, <libvulpes:motor>, <ore:wireCopper>], [circuit, <thermalexpansion:frame>, circuit]]);

//Индукционная плавильня
recipes.remove(<thermalexpansion:machine:3>);
recipes.addShaped(<thermalexpansion:machine:3>, [[<ore:ingotEnergeticAlloy>, reception_coil, <ore:ingotEnergeticAlloy>], [<ore:ingotEnergeticAlloy>, <thermalexpansion:frame>, <ore:ingotEnergeticAlloy>], [<ore:wireElectrum>, circuit, <ore:wireElectrum>]]);

//Фитогенный светильник
recipes.remove(<thermalexpansion:machine:4>);
recipes.addShaped(<thermalexpansion:machine:4>, [[null, <enderio:block_electric_light>, null], [<ore:wireCopper>, reception_coil, <ore:wireCopper>], [circuit, <thermalexpansion:frame>, <ore:plateLumium>]]);

//Компактор
recipes.remove(<thermalexpansion:machine:5>);
recipes.addShaped(<thermalexpansion:machine:5>, [[<ore:wireCopper>, circuit, <ore:wireCopper>], [<libvulpes:motor>, <thermalexpansion:frame>, <libvulpes:motor>], [mechanical_component, <ore:slabSteel>, mechanical_component]]);

//Магмовый тигель
recipes.remove(<thermalexpansion:machine:6>);
recipes.addShaped(<thermalexpansion:machine:6>, [[<ore:ingotEnergeticAlloy>, circuit, <ore:ingotEnergeticAlloy>], [<ore:wireElectrum>, <thermalexpansion:frame>, <ore:wireElectrum>], [reception_coil, <advancedrocketry:iquartzcrucible>, conductance_coil]]);

//Дистиллятор
recipes.remove(<thermalexpansion:machine:7>);
recipes.addShaped(<thermalexpansion:machine:7>, [[<ore:blockGlass>, circuit, <ore:blockGlass>], [<thermaldynamics:duct_16>, <thermalexpansion:frame>, <thermalexpansion:tank>], [<ore:ingotConductiveIron>, reception_coil, <ore:ingotConductiveIron>]]);

//Распределитель жидкостей
recipes.remove(<thermalexpansion:machine:8>);
recipes.addShaped(<thermalexpansion:machine:8>, [[<ore:blockGlass>, circuit, <ore:blockGlass>], [<thermaldynamics:duct_16>, <thermalexpansion:frame>, <thermaldynamics:duct_16>], [<ore:wireCopper>, <thermalexpansion:tank>, <ore:wireCopper>]]);

//Энергетический зарядник
recipes.remove(<thermalexpansion:machine:9>);
recipes.addShaped(<thermalexpansion:machine:9>, [[<ore:wireElectrum>, conductance_coil, <ore:wireElectrum>], [transmission_coil, <thermalexpansion:frame>, transmission_coil], [circuit, reception_coil, circuit]]);

//Центробежный разделитель
recipes.remove(<thermalexpansion:machine:10>);
recipes.addShaped(<thermalexpansion:machine:10>, [[<libvulpes:motor>, circuit, <libvulpes:motor>], [mechanical_component, <thermalexpansion:frame>, mechanical_component], [<ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>]]);

//Цикличный сборщик
recipes.remove(<thermalexpansion:machine:11>);
recipes.addShaped(<thermalexpansion:machine:11>, [[mechanical_component, reception_coil, mechanical_component], [circuit, <thermalexpansion:frame>, circuit], [mechanical_component, <ore:wireCopper>, mechanical_component]]);

//Алхимическая зельеварка
recipes.remove(<thermalexpansion:machine:12>);
recipes.addShaped(<thermalexpansion:machine:12>, [[null, <ore:rodBlaze>, null], [<ore:blockGlass>, <thermalexpansion:frame>, <ore:blockGlass>], [<ore:plateConstantan>, circuit, <ore:plateConstantan>]]);

//Тайный энсоцеллатор
recipes.remove(<thermalexpansion:machine:13>);
recipes.addShaped(<thermalexpansion:machine:13>, [[null, circuit, null], [<ore:plateConstantan>, <thermalexpansion:frame>, <ore:plateConstantan>], [<ore:plateLapis>, <enderio:block_enchanter>, <ore:plateLapis>]]);

//Ледниковый осадитель
recipes.remove(<thermalexpansion:machine:14>);
recipes.addShaped(<thermalexpansion:machine:14>, [[<ore:plateInvar>, <ore:dustCryotheum>, <ore:plateInvar>], [<ore:plateInvar>, <thermalexpansion:frame>, <ore:plateInvar>], [circuit, <advancedrocketry:iquartzcrucible>, circuit]]);

//Вулканический пресс
recipes.remove(<thermalexpansion:machine:15>);
recipes.addShaped(<thermalexpansion:machine:15>, [[<ore:plateInvar>, <thermalexpansion:tank>, <ore:plateInvar>], [<ore:plateInvar>, <thermalexpansion:frame>, <ore:plateInvar>], [circuit, <advancedrocketry:iquartzcrucible>, circuit]]);





























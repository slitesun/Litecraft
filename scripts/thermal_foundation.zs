import crafttweaker.item.IItemStack;

val minerals = [
  <baseminerals:phosphorus_powder>, <mineralogy:phosphorous_dust>, <baseminerals:sulfur_powder>, <thermalfoundation:material:771>, <immersiveengineering:material:25>,
  <mekanism:otherdust:3>, <thermalfoundation:material:772>, <immersiveengineering:material:24>, <mineralogy:nitrate_dust>, 
  <biomesoplenty:ash>] as IItemStack[];

var circuit = <advancedrocketry:ic>;
var reception_coil = <thermalfoundation:material:513>;
var transmission_coil = <thermalfoundation:material:514>;
var conductance_coil = <thermalfoundation:material:515>;
var hammer = <immersiveengineering:tool>;
var mechanical_component = <immersiveengineering:material:9>;
var interface = <advancedrocketry:misc>;

//Усиленный набор обновления
recipes.remove(<thermalfoundation:upgrade>);

//Укреплённый набор обновления
recipes.remove(<thermalfoundation:upgrade:1>);

//Синаловый набор обновления
recipes.remove(<thermalfoundation:upgrade:2>);

//Резонирующий набор обновления
recipes.remove(<thermalfoundation:upgrade:3>);

//Рамки

//Рамка механизма
recipes.remove(<thermalexpansion:frame>);
recipes.addShaped(<thermalexpansion:frame>, [[<ore:plateSteel>, <ore:ingotHOPGraphite>, <ore:plateSteel>], [<customitems:plate_alumite>, <ore:blockGlassHardened>, <customitems:plate_alumite>], [<ore:plateSteel>, <ore:ingotHOPGraphite>, <ore:plateSteel>]]);

//Рамка устройства
recipes.remove(<thermalexpansion:frame:64>);
recipes.addShaped(<thermalexpansion:frame:64>, [[<ore:plateSteel>, <ore:alloyAdvanced>, <ore:plateSteel>], [<enderio:item_basic_capacitor>, <ore:blockGlassHardened>, <enderio:item_basic_capacitor>], [<ore:plateSteel>, <ore:alloyAdvanced>, <ore:plateSteel>]]);

//Рамка энергетической ячейки
recipes.remove(<thermalexpansion:frame:128>);
recipes.addShaped(<thermalexpansion:frame:128>, [[<ore:stickSteel>, <ore:rodGold>, <ore:stickSteel>], [<ore:rodLead>, <ore:blockGlassHardened>, <ore:rodLead>], [<ore:stickSteel>, <ore:rodGold>, <ore:stickSteel>]]);

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
recipes.addShaped(<thermalexpansion:capacitor:2>, [[<ore:ingotElectricalSteel>, <ore:ingotEnergeticAlloy>, <ore:ingotElectricalSteel>], [<ore:plateStainlesssteel>, <ore:ingotEnergeticAlloy>, <ore:plateStainlesssteel>], [<ore:plateStainlesssteel>, <enderio:block_cap_bank:2>, <ore:plateStainlesssteel>]]);

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

recipes.remove(<thermalfoundation:fertilizer>);
recipes.remove(<thermalfoundation:fertilizer:1>);

for e in minerals {
  //Фито-Гро
  recipes.addShapeless(<thermalfoundation:fertilizer> * 4, [<ore:pulpWood>, <ore:pulpWood>, e, <ore:itemSlag>]);
  recipes.addShapeless(<thermalfoundation:fertilizer> * 16, [<ore:dustCharcoal>, e, <ore:itemSlag>]);

  //Обогащённый Фито-Гро
  recipes.addShapeless(<thermalfoundation:fertilizer:1> * 4, [<ore:pulpWood>, <ore:pulpWood>, e, <ore:itemSlagRich>]);
  recipes.addShapeless(<thermalfoundation:fertilizer:1> * 16, [<ore:dustCharcoal>, e, <ore:itemSlagRich>]);
}

//Рецепты машин

//Красная печь
recipes.remove(<thermalexpansion:machine>);
recipes.addShaped(<thermalexpansion:machine>, [[<customitems:small_heat_coil>, reception_coil, <customitems:small_heat_coil>], [<customitems:small_heat_coil>, <thermalexpansion:frame>, <customitems:small_heat_coil>], [<ore:wireCopper>, circuit, <ore:wireCopper>]]); 

//Измельчитель
recipes.remove(<thermalexpansion:machine:1>);
recipes.addShaped(<thermalexpansion:machine:1>, [[<libvulpes:motor>, <ore:gearSteel>, <customitems:grinding_head>], [<ore:wireCopper>, <ore:wireCopper>, <thermalexpansion:frame>], [circuit, circuit, <ore:wireCopper>]]);

//Лесопилка
recipes.remove(<thermalexpansion:machine:2>);
recipes.addShaped(<thermalexpansion:machine:2>, [[<ore:gearSteel>, <advancedrocketry:sawblade>, <ore:gearSteel>], [<ore:wireCopper>, <libvulpes:motor>, <ore:wireCopper>], [circuit, <thermalexpansion:frame>, circuit]]);

//Индукционная плавильня
recipes.remove(<thermalexpansion:machine:3>);
recipes.addShaped(<thermalexpansion:machine:3>, [[<ore:componentWiring>, reception_coil, <ore:componentWiring>], [<ore:componentWiring>, <thermalexpansion:frame>, <ore:componentWiring>], [<ore:wireElectrum>, circuit, <ore:wireElectrum>]]);

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
recipes.addShaped(<thermalexpansion:machine:7>, [[null, circuit, null], [<ore:blockGlass>, <thermalexpansion:frame>, <ore:blockGlass>], [<customitems:small_heat_coil>, <thermalexpansion:tank>, <customitems:small_heat_coil>]]);

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
recipes.addShaped(<thermalexpansion:machine:12>, [[null, <customitems:small_heat_coil>, null], [<ore:blockGlass>, <thermalexpansion:frame>, <ore:blockGlass>], [<ore:plateConstantan>, circuit, <ore:plateConstantan>]]);

//Тайный энсоцеллатор
recipes.remove(<thermalexpansion:machine:13>);
recipes.addShaped(<thermalexpansion:machine:13>, [[null, circuit, null], [<ore:plateConstantan>, <thermalexpansion:frame>, <ore:plateConstantan>], [<ore:plateLapis>, <enderio:block_enchanter>, <ore:plateLapis>]]);

//Ледниковый осадитель
recipes.remove(<thermalexpansion:machine:14>);
recipes.addShaped(<thermalexpansion:machine:14>, [[<ore:plateInvar>, <ore:dustCryotheum>, <ore:plateInvar>], [<ore:plateInvar>, <thermalexpansion:frame>, <ore:plateInvar>], [circuit, <advancedrocketry:iquartzcrucible>, circuit]]);

//Вулканический пресс
recipes.remove(<thermalexpansion:machine:15>);
recipes.addShaped(<thermalexpansion:machine:15>, [[<ore:plateInvar>, <thermalexpansion:tank>, <ore:plateInvar>], [<ore:plateInvar>, <thermalexpansion:frame>, <ore:plateInvar>], [circuit, <advancedrocketry:iquartzcrucible>, circuit]]);

//Generators

//Steam Dynamo
recipes.remove(<thermalexpansion:dynamo>);
recipes.addShaped(<thermalexpansion:dynamo>, [[null, transmission_coil, null], [<ore:gearBronze>, mechanical_component, <ore:plateSteel>], [<ore:plateSteel>, <thermalexpansion:frame>, <ore:gearBronze>]]);

//Magmatic Dynamo
recipes.remove(<thermalexpansion:dynamo:1>);
recipes.addShaped(<thermalexpansion:dynamo:1>, [[null, transmission_coil, null], [<ore:gearInvar>, mechanical_component, <ore:plateInvar>], [<ore:plateInvar>, <thermalexpansion:frame>, <ore:gearInvar>]]);

//Compression Dynamo
recipes.remove(<thermalexpansion:dynamo:2>);
recipes.addShaped(<thermalexpansion:dynamo:2>, [[null, transmission_coil, null], [<ore:gearTin>, mechanical_component, <ore:plateTin>], [<ore:plateTin>, <thermalexpansion:frame>, <ore:gearTin>]]);

//Reactant Dynamo
recipes.remove(<thermalexpansion:dynamo:3>);
recipes.addShaped(<thermalexpansion:dynamo:3>, [[null, transmission_coil, null], [<ore:gearLead>, mechanical_component, <ore:plateLead>], [<ore:plateLead>, <thermalexpansion:frame>, <ore:gearLead>]]);

//Enervation Dynamo
recipes.remove(<thermalexpansion:dynamo:4>);
recipes.addShaped(<thermalexpansion:dynamo:4>, [[null, transmission_coil, null], [<ore:gearElectrum>, mechanical_component, <ore:plateElectrum>], [<ore:plateElectrum>, <thermalexpansion:frame>, <ore:gearElectrum>]]);

//Numismatic Dynamo
recipes.remove(<thermalexpansion:dynamo:5>);
recipes.addShaped(<thermalexpansion:dynamo:5>, [[null, transmission_coil, null], [<ore:gearConstantan>, mechanical_component, <ore:plateConstantan>], [<ore:plateConstantan>, <thermalexpansion:frame>, <ore:gearConstantan>]]);

//Coils
recipes.remove(reception_coil);
recipes.addShaped(reception_coil * 4, [[null, <ore:casingAluminum>, null], [<ore:coilGold>, <ore:stickSteel>, <ore:coilGold>], [null, <ore:casingAluminum>, null]]);

recipes.remove(transmission_coil);
recipes.addShaped(transmission_coil * 4, [[null, <ore:casingAluminum>, null], [<ore:coilAluminum>, <ore:stickSteel>, <ore:coilAluminum>], [null, <ore:casingAluminum>, null]]);

recipes.remove(conductance_coil);
recipes.addShaped(conductance_coil * 4, [[null, <ore:casingAluminum>, null], [<ore:coilCopper>, <ore:stickSteel>, <ore:coilCopper>], [null, <ore:casingAluminum>, null]]);

//Tool casing
recipes.remove(<thermalfoundation:material:640>);
recipes.addShaped(<thermalfoundation:material:640>, [[<ore:casingAluminum>, circuit, <ore:casingAluminum>], [<ore:casingAluminum>, <thermalexpansion:capacitor>, <ore:casingAluminum>]]);

//Multimeter
recipes.remove(<thermalfoundation:meter>);
recipes.addShaped(<thermalfoundation:meter>, [[<ore:plateAluminum>, interface, <ore:plateAluminum>], [<ore:wireCopper>, <thermalfoundation:material:640>, <ore:wireCopper>]]);



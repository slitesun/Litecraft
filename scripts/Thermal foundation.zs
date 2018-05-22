//Рамки

//Рамка механизма
recipes.remove(<thermalexpansion:frame>);
recipies.addShaped(<thermalexpansion:frame>, 
[[<ore:plateSteel>, <ore:gearSteel>, <ore:plateSteel>]
[<ore:gearSteel>, <ore:blockGlassHardened>, <ore:gearSteel>]
[<ore:plateSteel>, <ore:gearSteel>, <ore:plateSteel>]]);

//Рамка устройства
recipes.remove(<thermalexpansion:frame:64>);
recipies.addShaped(<thermalexpansion:frame:64>, 
[[<ore:plateSteel>, <ore:gearTin>, <ore:plateSteel>]
[<ore:gearSteel>, <ore:blockGlassHardened>, <ore:gearSteel>]
[<ore:plateSteel>, <ore:gearTin>, <ore:plateSteel>]]);

//Рамка энергетической ячейки
recipes.remove(<thermalexpansion:frame:128>);
recipies.addShaped(<thermalexpansion:frame:128>, 
[[<ore:plateSteel>, <ore:plateGold>, <ore:plateSteel>]
[<ore:plateLead>, <ore:blockGlassHardened>, <ore:plateLead>]
[<ore:plateSteel>, <ore:plateGold>, <ore:plateSteel>]]);

//Наборы обновлений

//Усиленный набор обновления
recipes.remove(<thermalfoundation:upgrade>);
recipies.addShaped(<thermalfoundation:upgrade>,
[[null, <ore:plateInvar>, null],
[<ore:plateInvar>, <ore:gearBronze>, <ore:plateInvar>],
[<ore:ingotRedstoneAlloy>, <ore:plateInvar>, <ore:ingotRedstoneAlloy>]]);

//Укреплённый набор обновления
recipes.remove(<thermalfoundation:upgrade:1>);
recipies.addShaped(<thermalfoundation:upgrade:1>,
[[null, <ore:plateElectrum>, null],
[<<ore:plateElectrum>, <ore:gearSilver>, <ore:plateElectrum>],
[<thermalfoundation:glass_alloy:1>, <ore:plateElectrum>, <thermalfoundation:glass_alloy:1>]]);

//Синаловый набор обновления
recipes.remove(<thermalfoundation:upgrade:2>);
recipies.addShaped(<thermalfoundation:upgrade:2>,
[[null, <ore:plateSignalum>, null],
[<ore:plateSignalum>, <ore:gearElectrum>, <ore:plateSignalum>],
[<ore:dustCryotheum>, <<ore:plateSignalum>, <ore:dustCryotheum>]]);

//Резонирующий набор обновления
recipes.remove(<thermalfoundation:upgrade:3>);
recipies.addShaped(<thermalfoundation:upgrade:3>,
[[null, <ore:plateEnderium>, null],
[<ore:plateEnderium>, <ore:gearLumium>, <ore:plateEnderium>],
[<ore:dustPyrotheum>, <ore:plateEnderium>, <ore:dustPyrotheum>]]);

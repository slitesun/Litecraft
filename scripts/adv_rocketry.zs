//Схема управления
recipes.remove(<advancedrocketry:ic:3>);
recipes.addShaped(<advancedrocketry:ic:3>, [[<ore:dustRedstone>, <ore:electronTube>, <ore:dustRedstone>], [<ore:dustCopper>, <immersiveengineering:material:27>, <ore:dustCopper>], [<ore:dustCopper>, <ore:plateSteel>, <ore:dustCopper>]]);

//Плата ввода-вывода прредметов
recipes.remove(<advancedrocketry:ic:4>);
recipes.addShaped(<advancedrocketry:ic:4>, [[<ore:dustRedstone>, <ore:electronTube>, <ore:dustRedstone>], [<ore:dustGold>, <immersiveengineering:material:27>, <ore:dustGold>], [<ore:dustGold>, <ore:plateSteel>, <ore:dustGold>]]);

//Плата ввода-вывода жидкостей
recipes.remove(<advancedrocketry:ic:5>);
recipes.addShaped(<advancedrocketry:ic:5>, [[<ore:dustRedstone>, <ore:electronTube>, <ore:dustRedstone>], [<ore:dustLapis>, <immersiveengineering:material:27>, <ore:dustLapis>], [<ore:dustLapis>, <ore:plateSteel>, <ore:dustLapis>]]);

//Графитовый блок
recipes.remove(<advancedrocketry:misc:1>);
mods.thermalexpansion.InductionSmelter.addRecipe(<advancedrocketry:misc:1> * 8, <basemetals:diamond_powder>, <bigreactors:dustmetals:2>, 4000);

//Структурный блок
recipes.remove(<libvulpes:structuremachine>);
recipes.addShaped(<libvulpes:structuremachine> * 4, [[<ore:rodAluminum>, <ore:plateAluminum>, <ore:rodAluminum>], [<ore:plateAluminum>, <ore:alloyAdvanced>, <ore:plateAluminum>], [<ore:rodAluminum>, <ore:plateAluminum>, <ore:rodAluminum>]]);

//Батарейка
recipes.remove(<libvulpes:battery>);
recipes.addShaped(<libvulpes:battery> * 4, [[null, <ore:nuggetConductiveIron>, null], [<ore:plateTin>, <ore:dustLithium>, <ore:plateTin>], [<ore:plateTin>, <ore:dustLithium>, <ore:plateTin>]]);



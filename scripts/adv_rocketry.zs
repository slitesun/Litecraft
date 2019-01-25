var circuit_board = <immersiveengineering:material:27>;
var carbon_brick = <advancedrocketry:misc:1>;
var graphite_dust_big_reactors = <bigreactors:dustmetals:2>;

var concrete = <tconstruct:soil>;


//Coal generation
recipes.remove(<libvulpes:coalgenerator>);

//Basic Circuit
recipes.addShaped(<advancedrocketry:ic>, [[<ore:plateSteel>, <ore:electronTube>, <ore:plateSteel>], [<enderio:item_basic_capacitor>, <ore:ingotRedstoneAlloy>, <enderio:item_basic_capacitor>], [<ore:electronTube>, circuit_board, <ore:electronTube>]]);

//Схема управления
recipes.remove(<advancedrocketry:ic:3>);
recipes.addShaped(<advancedrocketry:ic:3>, [[<ore:dustRedstone>, <ore:electronTube>, <ore:dustRedstone>], [<ore:dustCopper>, circuit_board, <ore:dustCopper>], [<ore:dustCopper>, <ore:plateSteel>, <ore:dustCopper>]]);

//Плата ввода-вывода прредметов
recipes.remove(<advancedrocketry:ic:4>);
recipes.addShaped(<advancedrocketry:ic:4>, [[<ore:dustRedstone>, <ore:electronTube>, <ore:dustRedstone>], [<ore:dustGold>, circuit_board, <ore:dustGold>], [<ore:dustGold>, <ore:plateSteel>, <ore:dustGold>]]);

//Плата ввода-вывода жидкостей
recipes.remove(<advancedrocketry:ic:5>);
recipes.addShaped(<advancedrocketry:ic:5>, [[<ore:dustRedstone>, <ore:electronTube>, <ore:dustRedstone>], [<ore:dustLapis>, circuit_board, <ore:dustLapis>], [<ore:dustLapis>, <ore:plateSteel>, <ore:dustLapis>]]);

//Карбоновый кирпичик
furnace.addRecipe(carbon_brick, <customitems:dust_carbon>);

//Структурный блок
recipes.remove(<libvulpes:structuremachine>);
recipes.addShaped(<libvulpes:structuremachine> * 4, [[<ore:stickAluminum>, <ore:plateAluminum>, <ore:stickAluminum>], [<ore:plateAluminum>, <ore:alloyAdvanced>, <ore:plateAluminum>], [<ore:stickAluminum>, <ore:plateAluminum>, <ore:stickAluminum>]]);

//Продвинутый структурный блок
recipes.remove(<libvulpes:advstructuremachine>);
recipes.addShaped(<libvulpes:advstructuremachine> * 4, [[<ore:stickTitanium>, <ore:plateTitanium>, <ore:stickTitanium>], [<ore:plateTitanium>, <ore:alloyUltimate>, <ore:plateTitanium>], [<ore:stickTitanium>, <ore:plateTitanium>, <ore:stickTitanium>]]);

//Батарейка
recipes.remove(<libvulpes:battery>);
recipes.addShaped(<libvulpes:battery> * 4, [[null, <ore:nuggetConductiveIron>, null], [<ore:plateTin>, <ore:dustLithium>, <ore:plateTin>], [<ore:plateTin>, <ore:dustLithium>, <ore:plateTin>]]);

//Кирпич электродуговой печи
recipes.remove(<advancedrocketry:blastbrick>);
recipes.addShaped(<advancedrocketry:blastbrick> * 4, [[<minecraft:netherbrick>, <ore:ingotBrickSeared>, <minecraft:netherbrick>], [concrete, <minecraft:magma_cream>, concrete], [<minecraft:netherbrick>, <ore:ingotBrickSeared>, <minecraft:netherbrick>]]);

//Титано-алюминевый сплав
mods.thermalexpansion.InductionSmelter.addRecipe(<advancedrocketry:productingot> * 3, <modernmetals:aluminum_ingot> * 7, <modernmetals:titanium_ingot> * 3, 20000);

//Титано-иридиевый сплав
mods.thermalexpansion.InductionSmelter.addRecipe(<advancedrocketry:productingot:1> * 2, <modernmetals:aluminum_ingot>, <modernmetals:iridium_ingot>, 20000);

//
var hammer = <immersiveengineering:tool>;

//Кастрюля
recipes.remove(<harvestcraft:potitem>);
recipes.addShaped(<harvestcraft:potitem>, [[<ore:plateSteel>, hammer, <ore:plateSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

//Кастрюлька
recipes.remove(<harvestcraft:saucepanitem>);
recipes.addShaped(<harvestcraft:saucepanitem>, [[null, null, <ore:stickSteel>], [<ore:plateSteel>, <ore:plateSteel>, hammer], [<ore:plateSteel>, <ore:plateSteel>, null]]);

//Сковорода
recipes.remove(<harvestcraft:skilletitem>);
recipes.addShaped(<harvestcraft:skilletitem>, [[null, <ore:plateSteel>, <ore:plateSteel>], [null, <ore:plateSteel>, <ore:plateSteel>], [<ore:stickSteel>, hammer, null]]);

//Форма для выпечки
recipes.remove(<harvestcraft:bakewareitem>);
recipes.addShaped(<harvestcraft:bakewareitem>, [[null, hammer, null], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

//Ступка и пестик
recipes.remove(<harvestcraft:mortarandpestleitem>);
recipes.addShaped(<harvestcraft:mortarandpestleitem>, [[null, <ore:ingotSteel>, null], [<ore:stone>, <ore:ingotSteel>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]]);

//Чаша для смешивания
recipes.remove(<harvestcraft:mixingbowlitem>);
recipes.addShaped(<harvestcraft:mixingbowlitem>, [[<minecraft:hardened_clay>, null, <minecraft:hardened_clay>], [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]]);

//Соковыжималка
recipes.remove(<harvestcraft:juiceritem>);
recipes.addShaped(<harvestcraft:juiceritem>, [[null, <ore:stickSteel>, hammer], [null, <ore:ingotSteel>, null], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

//Разделочная доска
recipes.remove(<harvestcraft:cuttingboarditem>);
recipes.addShaped(<harvestcraft:cuttingboarditem>, [[<tconstruct:knife_blade>.withTag({Material: "steel"}), null, null], [null, <ore:stickTreatedWood>, null], [null, null, <ore:plankWood>]]);


//Remove Portal Deep Dark
recipes.remove(<extrautils2:teleporter:1>);

//Sun crystall
recipes.remove(<extrautils2:suncrystal:250>);

//Stone drum remake
recipes.remove(<extrautils2:drum>);
recipes.addShaped(<extrautils2:drum>, [[<ore:compressed1xCobblestone>, <minecraft:stone_slab>, <ore:compressed1xCobblestone>], [<ore:compressed1xCobblestone>, <minecraft:bucket>, <ore:compressed1xCobblestone>], [<ore:compressed1xCobblestone>, <minecraft:stone_slab>, <ore:compressed1xCobblestone>]]);

//Transfer cable remake
recipes.remove(<extrautils2:pipe>);
recipes.addShaped(<extrautils2:pipe> * 4, [[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>], [<ore:blockGlassColorless>, <ore:blockRedstone>, <ore:blockGlassColorless>], [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);

//Item node remake
recipes.remove(<extrautils2:grocket>);
recipes.addShaped(<extrautils2:grocket>, [[<minecraft:redstone>, <extrautils2:pipe>, <minecraft:redstone>], [<ore:compressed1xCobblestone>, <ore:chestWood>, <ore:compressed1xCobblestone>]]);

//Fluid node remake
recipes.remove(<extrautils2:grocket:2>);
recipes.addShaped(<extrautils2:grocket:2>, [[<minecraft:redstone>, <extrautils2:pipe>, <minecraft:redstone>], [<ore:compressed1xCobblestone>, <minecraft:bucket>, <ore:compressed1xCobblestone>]]);

//Furnace
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}));
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}), [[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], [<ore:plateBronze>, <extrautils2:machine>, <ore:plateBronze>], [<minecraft:brick_block>, <minecraft:furnace>, <minecraft:brick_block>]]);

//Crusher
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}));
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:crusher"}), [[<ore:gemDiamond>, <ore:plateBronze>, <ore:gemDiamond>], [<ore:plateBronze>, <extrautils2:machine>, <ore:plateBronze>], [<minecraft:piston>, <ore:plateBronze>, <minecraft:piston>]]);

//Survival generator
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}));
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}), [[<ore:bricksStone>, <ore:bricksStone>, <ore:bricksStone>], [<ore:bricksStone>, <extrautils2:machine>, <ore:bricksStone>], [<minecraft:redstone>, <minecraft:furnace>, <minecraft:redstone>]]);

//Generator
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}));
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator"}), [[<ore:plateBronze>, <ore:plateBronze>, <ore:plateBronze>], [<ore:plateBronze>, <extrautils2:machine>, <ore:plateBronze>], [<minecraft:redstone>, <minecraft:furnace>, <minecraft:redstone>]]);

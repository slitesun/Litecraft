//Stone drum remake
recipes.remove(<extrautils2:drum>);
recipes.addShaped(<extrautils2:drum>, [[<ore:compressed1xCobblestone>, <minecraft:stone_slab>, <ore:compressed1xCobblestone>], [<ore:compressed1xCobblestone>, <minecraft:bucket>, <ore:compressed1xCobblestone>], [<ore:compressed1xCobblestone>, <minecraft:stone_slab>, <ore:compressed1xCobblestone>]]);

//Transfer cable remake
recipes.remove(<extrautils2:pipe>);
recipes.addShaped(<extrautils2:pipe> * 4, [[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>], [<ore:blockGlassColorless>, <ore:blockRedstone>, <ore:blockGlassColorless>], [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);

//Item node remake
recipes.remove(<extrautils2:grocket>);
recipes.addShaped(<extrautils2:grocket>, [[null, null, null], [<minecraft:redstone>, <extrautils2:pipe>, <minecraft:redstone>], [<ore:compressed1xCobblestone>, <ore:chestWood>, <ore:compressed1xCobblestone>]]);

//Fluid node remake
recipes.remove(<extrautils2:grocket:2>);
recipes.addShaped(<extrautils2:grocket:2>, [[null, null, null], [<minecraft:redstone>, <extrautils2:pipe>, <minecraft:redstone>], [<ore:compressed1xCobblestone>, <minecraft:bucket>, <ore:compressed1xCobblestone>]]);

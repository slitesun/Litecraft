//Furnace remake
recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [[<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>], [<ore:compressed1xCobblestone>, <minecraft:cobblestone>, <ore:compressed1xCobblestone>], [<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>]]);

//Chest remake
recipes.remove(<minecraft:chest>);
recipes.addShaped(<minecraft:chest>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <rustic:cabinet>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Planks remake
recipes.remove(<minecraft:planks:*>);
recipes.addShapeless(<minecraft:planks:0> * 2, [<minecraft:log:0>]);
recipes.addShapeless(<minecraft:planks:1> * 2, [<minecraft:log:1>]);
recipes.addShapeless(<minecraft:planks:2> * 2, [<minecraft:log:2>]);
recipes.addShapeless(<minecraft:planks:3> * 2, [<minecraft:log:3>]);
recipes.addShapeless(<minecraft:planks:4> * 2, [<minecraft:log:4>]);
recipes.addShapeless(<minecraft:planks:5> * 2, [<minecraft:log:5>]);

//Sticks remake
recipes.remove(<minecraft:stick>);
recipes.addShaped(<minecraft:stick> * 2, [[<ore:plankWood>], [<ore:plankWood>]]);

//Furnace disabler
furnace.remove(<ore:ingotCopper>);
furnace.remove(<ore:ingotSilver>);
furnace.remove(<ore:ingotIron>);
furnace.remove(<ore:ingotGold>);
furnace.remove(<ore:ingotAluminum>);
furnace.remove(<ore:ingotUranium>);
furnace.remove(<ore:ingotTin>);
furnace.remove(<ore:ingotPlatinum>);
furnace.remove(<ore:ingotIridium>);
furnace.remove(<ore:ingotMithril>);
furnace.remove(<ore:ingotCobalt>);
furnace.remove(<ore:ingotArdite>);


var Hammer = <immersiveengineering:tool>;

// Furnace remake
recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [[<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>], [<ore:compressed1xCobblestone>, null, <ore:compressed1xCobblestone>], [<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>]]);

// Chest remake
recipes.remove(<minecraft:chest>);
recipes.addShaped(<minecraft:chest>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <rustic:cabinet>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

// Hopper remake
recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>, [[<ore:plateIron>, null, <ore:plateIron>], [<ore:plateIron>, <minecraft:chest>, <ore:plateIron>], [null, <ore:plateIron>, null]]);
recipes.addShaped(<minecraft:hopper>, [[<ore:plateBronze>, null, <ore:plateBronze>], [<ore:plateBronze>, <minecraft:chest>, <ore:plateBronze>], [null, <ore:plateBronze>, null]]);

// Pressue plates

// Iron
recipes.remove(<minecraft:heavy_weighted_pressure_plate>);
recipes.addShaped(<minecraft:heavy_weighted_pressure_plate>, [[<ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>], [Hammer]]);

// Gold
recipes.remove(<minecraft:light_weighted_pressure_plate>);
recipes.addShaped(<minecraft:light_weighted_pressure_plate>, [[<ore:plateGold>, <ore:plateGold>], [<ore:plateGold>, <ore:plateGold>], [Hammer]]);

// Planks remake
recipes.remove(<minecraft:planks:*>);
recipes.addShapeless(<minecraft:planks:0> * 2, [<minecraft:log:0>]);
recipes.addShapeless(<minecraft:planks:1> * 2, [<minecraft:log:1>]);
recipes.addShapeless(<minecraft:planks:2> * 2, [<minecraft:log:2>]);
recipes.addShapeless(<minecraft:planks:3> * 2, [<minecraft:log:3>]);
recipes.addShapeless(<minecraft:planks:4> * 2, [<minecraft:log:4>]);
recipes.addShapeless(<minecraft:planks:5> * 2, [<minecraft:log:5>]);

// Sticks remake
recipes.remove(<minecraft:stick>);
recipes.addShaped(<minecraft:stick> * 2, [[<ore:plankWood>], [<ore:plankWood>]]);

// Furnace remove and rebalanced recipes
furnace.remove(<minecraft:quartz>, <minecraft:quartz_ore>);
furnace.remove(<minecraft:emerald>, <minecraft:emerald_ore>);
furnace.remove(<minecraft:coal>, <minecraft:coal_ore>);
furnace.remove(<minecraft:dye:4>, <minecraft:lapis_ore>);
furnace.remove(<minecraft:redstone>, <minecraft:redstone_ore>);
furnace.remove(<minecraft:gold_ingot>, <minecraft:gold_ore>);
furnace.remove(<minecraft:iron_ingot>, <minecraft:iron_ore>);

furnace.remove(<ore:ingotAluminum>);
furnace.remove(<ore:ingotTitanium>);
furnace.remove(<ore:ingotOsmium>);
furnace.remove(<ore:ingotSteel>);
furnace.remove(<ore:ingotStainlessSteel>);
furnace.remove(<ore:ingotChromium>);
furnace.remove(<ore:ingotManganese>);
furnace.remove(<ore:ingotIridium>);

furnace.remove(<ore:ingotTitaniumAluminide>);
furnace.remove(<ore:ingotTitaniumIridium>);

furnace.remove(<minecraft:coal:1>);

// Bread processing
recipes.remove(<minecraft:bread>);
furnace.remove(<minecraft:bread>);
furnace.addRecipe(<minecraft:bread>, <harvestcraft:doughitem>);

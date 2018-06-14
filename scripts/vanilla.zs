//Furnace remake
recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [[<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>], [<ore:compressed1xCobblestone>, null, <ore:compressed1xCobblestone>], [<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>]]);

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

//Furnace remove and rebalanced recipes
//furnace.remove(IIngredient output, IIngredient input);

furnace.remove(<basemetals:tin_ingot>, <basemetals:tin_ore>);
furnace.remove(<basemetals:silver_ingot>, <basemetals:silver_ore>);
furnace.remove(<basemetals:platinum_ingot>, <basemetals:platinum_ore>);
furnace.remove(<basemetals:nickel_ingot>, <basemetals:nickel_ore>);
furnace.remove(<basemetals:copper_ingot>, <basemetals:copper_ore>);
furnace.remove(<basemetals:lead_ingot>, <basemetals:lead_ore>);

furnace.remove(<modernmetals:titanium_ingot>, <modernmetals:titanium_ore>);
furnace.remove(<modernmetals:uranium_ingot>, <modernmetals:uranium_ore>);
furnace.remove(<modernmetals:plutonium_ingot>, <modernmetals:plutonium_ore>);
furnace.remove(<modernmetals:aluminum_ingot>, <modernmetals:aluminum_ore>);
furnace.remove(<modernmetals:osmium_ingot>, <modernmetals:osmium_ore>);

furnace.remove(<minecraft:quartz>, <minecraft:quartz_ore>);
furnace.remove(<minecraft:emerald>, <minecraft:emerald_ore>);
furnace.remove(<minecraft:coal>, <minecraft:coal_ore>);
furnace.remove(<minecraft:dye:4>, <minecraft:lapis_ore>);
furnace.remove(<minecraft:redstone>, <minecraft:redstone_ore>);
furnace.remove(<minecraft:gold_ingot>, <minecraft:gold_ore>);
furnace.remove(<minecraft:iron_ingot>, <minecraft:iron_ore>);

//Copper
furnace.remove(<galacticraftcore:basic_item:3>, <galacticraftplanets:mars>);
furnace.remove(<galacticraftcore:basic_item:3>, <galacticraftplanets:venus:7>);

//Tin
furnace.remove(<galacticraftcore:basic_item:4>, <galacticraftplanets:mars:1>);
furnace.remove(<galacticraftcore:basic_item:4>, <galacticraftplanets:venus:11>);

//Desh
furnace.remove(<galacticraftplanets:item_basic_mars:2>, <galacticraftplanets:mars:2>);

//Iron
furnace.remove(<minecraft:iron_ingot>, <galacticraftplanets:mars:3>);
furnace.remove(<minecraft:iron_ingot>, <galacticraftplanets:asteroids_block:5>);

//Aluminium
furnace.remove(<galacticraftcore:basic_item:5>, <galacticraftplanets:asteroids_block:3>);
furnace.remove(<galacticraftcore:basic_item:5>, <galacticraftplanets:venus:6>);

//Titanium
furnace.remove(<galacticraftplanets:item_basic_asteroids>, <galacticraftplanets:asteroids_block:4>);

//Lead
furnace.remove(<galacticraftplanets:basic_item_venus:1>, <galacticraftplanets:venus:8>);

//Quartz
furnace.remove(<minecraft:quartz>, <galacticraftplanets:venus:9>);

//Ardite
furnace.remove(<tconstruct:ingots:1>, <tconstruct:ore:1>);

//Cobalt
furnace.remove(<tconstruct:ingots>, <tconstruct:ore>);


























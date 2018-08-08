//
var grout = <tconstruct:soil>;

//Coke-oven remake
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShapeless(<immersiveengineering:stone_decoration> * 3, [grout, <minecraft:brick>, grout, <minecraft:brick>, <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ironberryjuice", Amount: 1000}}), <minecraft:brick>, grout, <minecraft:brick>, grout]);

//Blast-bricks remake
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShapeless(<immersiveengineering:stone_decoration:1> * 3, [<ore:ingotBrick>, <ore:ingotBrickSeared>, <ore:ingotBrick>, grout, <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ironberryjuice", Amount: 1000}}), grout, <ore:ingotBrick>, <ore:ingotBrickSeared>, <ore:ingotBrick>]);

//Graphite processing
mods.thermalexpansion.InductionSmelter.addRecipe(<immersiveengineering:material:19>, null, <immersiveengineering:material:18>, 4000);

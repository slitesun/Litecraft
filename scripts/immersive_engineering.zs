//Coke-oven remake
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShaped(<immersiveengineering:stone_decoration> * 3, [[<minecraft:clay_ball>, <minecraft:brick>, <minecraft:clay_ball>], [<minecraft:brick>, <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ironberryjuice", Amount: 1000}}), <minecraft:brick>], [<minecraft:clay_ball>, <minecraft:brick>, <minecraft:clay_ball>]]);

//Blast-bricks remake
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3, [[<minecraft:brick_block>, <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ironberryjuice", Amount: 1000}}), <minecraft:brick_block>], [<ore:gravel>, <tconstruct:edible:33>, <ore:gravel>], [<minecraft:brick_block>, <ore:gravel>, <minecraft:brick_block>]]);

//Graphite processing
mods.thermalexpansion.InductionSmelter.addRecipe(<immersiveengineering:material:19>, <immersiveengineering:material:18>, null, 11000);

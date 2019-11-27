// --- Created by Miha_77 ---




// --- Imports ---
import mods.gregtech.recipe.RecipeMap;

import mods.enderio.AlloySmelter;

import mods.tconstruct.Casting;
import mods.tconstruct.Melting;



// --- Variables ---

val Grout = <tconstruct:soil>;
val Sand = <ore:sand>;
val Claydust = <ore:dustClay>;
val Gravel = <ore:gravel>;

val GSlimyMud = <tconstruct:soil:1>;
val BSlimyMud = <tconstruct:soil:2>;
val SlimyMagmaMud = <tconstruct:soil:5>;

val PlantBall = <gregtech:meta_item_2:32570>;




// --- Remove Recipe ---

// --- Tool Forge
recipes.remove(<tconstruct:toolforge>);

// --- Grout
recipes.remove(<tconstruct:soil>);

// --- Green Slimy Mud
recipes.remove(<tconstruct:soil:1>);

// --- Blue Slimy Mud
recipes.remove(<tconstruct:soil:2>);

// --- Slimy Magma Mud
recipes.remove(<tconstruct:soil:5>);

// --- Ball of Moss
recipes.remove(<tconstruct:materials:18>);

// --- Ardite
furnace.remove(<ore:ingotArdite>);
// - 
Melting.removeRecipe(<liquid:ardite>, <gregtech:meta_item_1:2816>);
// -
Melting.removeRecipe(<liquid:ardite>, <enderio:item_material:30>);

// --- Manyullyn
furnace.remove(<tconstruct:ingots:2>);
// -
Melting.removeRecipe(<liquid:manyullyn>, <gregtech:meta_item_1:2817>);

// --- Knightslime
Melting.removeRecipe(<liquid:knightslime>, <gregtech:meta_item_1:2819>);





// --- Adding Recipe ---

// --- Tool Forge
recipes.addShaped(<tconstruct:toolforge>.withTag({textureBlock: {id: "libvulpes:metal0", Count: 1 as byte, Damage: 6 as short}}), [
[<tconstruct:large_plate>.withTag({Material: "conductive_iron"}), <tconstruct:seared_slab>, <tconstruct:large_plate>.withTag({Material: "conductive_iron"})], 
[<ore:blockSteel>, null, <ore:blockSteel>], 
[<ore:blockSteel>, null, <ore:blockSteel>]]);

// --- Grout
recipes.addShaped(Grout * 4, [
[Sand, Sand, Sand],
[Claydust, <minecraft:water_bucket>, Claydust],
[Gravel, Gravel, Gravel]]);
// -
recipes.addShaped(Grout * 4, [
[Gravel, Gravel, Gravel],
[Claydust, <minecraft:water_bucket>, Claydust],
[Sand, Sand, Sand]]);
// -
recipes.addShaped(Grout * 4, [
[Sand, Claydust, Gravel],
[Sand, <minecraft:water_bucket>, Gravel],
[Sand, Claydust, Gravel]]);
// -
recipes.addShaped(Grout * 4, [
[Gravel, Claydust, Sand],
[Gravel, <minecraft:water_bucket>, Sand],
[Gravel, Claydust, Sand]]);

// --- Ball of Moss
recipes.addShaped(<tconstruct:materials:18>, [
[<ore:vine>, <ore:gemExquisiteEmerald>, <ore:vine>], 
[<ore:gemExquisiteEmerald>, PlantBall, <ore:gemExquisiteEmerald>], 
[<ore:vine>, <ore:gemExquisiteEmerald>, <ore:vine>]]);
// -
recipes.addShaped(<tconstruct:materials:18>, [
[<ore:vine>, <ore:gemExquisiteOlivine>, <ore:vine>], 
[<ore:gemExquisiteOlivine>, PlantBall, <ore:gemExquisiteOlivine>], 
[<ore:vine>, <ore:gemExquisiteOlivine>, <ore:vine>]]);
// -
recipes.addShaped(<tconstruct:materials:18>, [
[<ore:vine>, <ore:gemExquisiteGreenSapphire>, <ore:vine>], 
[<ore:gemExquisiteGreenSapphire>, PlantBall, <ore:gemExquisiteGreenSapphire>], 
[<ore:vine>, <ore:gemExquisiteGreenSapphire>, <ore:vine>]]);




// --- Assembler Recipes ---
val assembler = RecipeMap.getByName("assembler");

// --- Ball of Moss
assembler.recipeBuilder()
    .duration(200).EUt(4)
    .inputs(<ore:vine> * 2)
    .inputs(<ore:gemExquisiteEmerald>)
    .outputs(<tconstruct:materials:18>)
    .buildAndRegister();
// -
assembler.recipeBuilder()
    .duration(200).EUt(4)
    .inputs(<ore:vine> * 2)
    .inputs(<ore:gemExquisiteOlivine>)
    .outputs(<tconstruct:materials:18>)
    .buildAndRegister();
// -
assembler.recipeBuilder()
    .duration(200).EUt(4)
    .inputs(<ore:vine> * 2)
    .inputs(<ore:gemExquisiteGreenSapphire>)
    .outputs(<tconstruct:materials:18>)
    .buildAndRegister();
// -
assembler.recipeBuilder()
    .duration(200).EUt(4)
    .inputs(PlantBall)
    .inputs(<ore:gemExquisiteEmerald>)
    .outputs(<tconstruct:materials:18>)
    .buildAndRegister();
// -
assembler.recipeBuilder()
    .duration(200).EUt(4)
    .inputs(PlantBall)
    .inputs(<ore:gemExquisiteOlivine>)
    .outputs(<tconstruct:materials:18>)
    .buildAndRegister();
// -
assembler.recipeBuilder()
    .duration(200).EUt(4)
    .inputs(PlantBall)
    .inputs(<ore:gemExquisiteGreenSapphire>)
    .outputs(<tconstruct:materials:18>)
    .buildAndRegister();



// --- Autoclave Recipes ---
val autoclave = RecipeMap.getByName("autoclave");

// --- Green Slime Crystal
autoclave.recipeBuilder()
    .duration(600).EUt(4)
    .inputs(GSlimyMud)
    .fluidInputs(<liquid:distilled_water> * 1000)
    .outputs(<tconstruct:materials:9>)
    .buildAndRegister();

// --- Blue Slime Crystal
autoclave.recipeBuilder()
    .duration(600).EUt(4)
    .inputs(BSlimyMud)
    .fluidInputs(<liquid:distilled_water> * 1000)
    .outputs(<tconstruct:materials:10>)
    .buildAndRegister();

// --- Magma Slime Crystal
autoclave.recipeBuilder()
    .duration(600).EUt(4)
    .inputs(SlimyMagmaMud)
    .fluidInputs(<liquid:distilled_water> * 1000)
    .outputs(<tconstruct:materials:11>)
    .buildAndRegister();



// --- Mixer Recipes ---
val mixer = RecipeMap.getByName("mixer");

// --- Green Slimy Mud
mixer.recipeBuilder()
    .duration(200).EUt(4)
    .inputs(<ore:slimeballGreen> * 4)
    .inputs(<ore:sand>)
    .inputs(<minecraft:dirt>)
    .outputs(<tconstruct:soil:1>)
    .buildAndRegister();

// --- Blue Slimy Mud
mixer.recipeBuilder()
    .duration(200).EUt(4)
    .inputs(<ore:slimeballBlue> * 4)
    .inputs(<ore:sand>)
    .inputs(<minecraft:dirt>)
    .outputs(<tconstruct:soil:2>)
    .buildAndRegister();

// --- Slimy Magma Mud
mixer.recipeBuilder()
    .duration(200).EUt(4)
    .inputs(<ore:slimeballMagma> * 2)
    .inputs(<minecraft:magma_cream> * 2)
    .inputs(<ore:dustSoulSand>)
    .inputs(<ore:dustNetherrack>)
    .outputs(<tconstruct:soil:5>)
    .buildAndRegister();


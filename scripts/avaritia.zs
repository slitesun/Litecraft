// --- Created by Miha_77 ---




// --- Imports ---
import mods.gregtech.recipe.RecipeMap;

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


// --- Variables ---
var nuggetCosmicNeutronium = <avaritia:resource:3>;
var dustTinyCosmicNeutronium = <avaritia:resource:2>;

var HVRobotArm = <gregtech:meta_item_1:32652>;

var programmed_circuit_3 = <gregtech:meta_item_1:32766>.withTag({Configuration: 3});

val list_dust = [
  <ore:dustIron>, <ore:dustGold>, <ore:dustLapis>, <ore:dustRedstone>, <ore:dustNetherQuartz>, <ore:dustCopper>, <ore:dustTin>, <ore:dustLead>, 
  <ore:dustSilver>, <ore:dustNickel>, <ore:dustDiamond>, <ore:dustEmerald>, <ore:dustZpmSuperconductorBase>, <ore:dustPlatinum>, <ore:dustIridium>
] as IOreDictEntry[];

val list_singularity = [
  <avaritia:singularity>, <avaritia:singularity:1>, <avaritia:singularity:2>, <avaritia:singularity:3>, <avaritia:singularity:4>, <avaritia:singularity:5>, 
  <avaritia:singularity:6>, <avaritia:singularity:7>, <avaritia:singularity:8>, <avaritia:singularity:9>, <avaritia:singularity:10>, <avaritia:singularity:11>, 
  <avaritia:singularity:12>, <avaritia:singularity:13>, <avaritia:singularity:14>
] as IItemStack[];




// --- Remove Recipes ---

// --- Dust Cosmic Neutronium
recipes.remove(dustTinyCosmicNeutronium);

// --- Nugget Cosmic Neutronium
recipes.removeShaped(nuggetCosmicNeutronium, 
[[dustTinyCosmicNeutronium, dustTinyCosmicNeutronium, dustTinyCosmicNeutronium], 
[dustTinyCosmicNeutronium, dustTinyCosmicNeutronium, dustTinyCosmicNeutronium], 
[dustTinyCosmicNeutronium, dustTinyCosmicNeutronium, dustTinyCosmicNeutronium]]);


// --- Extreme Crafting Table
recipes.remove(<avaritia:extreme_crafting_table>);

// --- Extreme Crafting Table
recipes.remove(<avaritia:extreme_crafting_table>);

// --- Diamond Lattice
recipes.remove(<avaritia:resource>);

// --- Crystall Matrix Ingot
recipes.remove(<avaritia:resource:1>);




// --- Adding Recipes ---


// --- Alloy Smelter Recipes ----
val alloy_smelter = RecipeMap.getByName("alloy_smelter");

// Crystall Matrix Ingot
alloy_smelter.recipeBuilder()
    .duration(100).EUt(480)
    .inputs(<ore:dustDiamond> * 4)
    .inputs(<ore:dustTantalum> * 2)
    .outputs(<avaritia:resource:1>)
    .buildAndRegister();


// --- Assembler Recipes ---
val assembler = RecipeMap.getByName("assembler");


for i, e in list_dust {
  // Singulars
  assembler.recipeBuilder()
      .duration(200).EUt(7860)
      .inputs(<appliedenergistics2:material:47>)
      .inputs(list_dust[i] * 9)
      .outputs(list_singularity[i])
      .buildAndRegister();
}

// Diamond Lattice
assembler.recipeBuilder()
    .duration(100).EUt(480)
    .inputs(<ore:stickDiamond> * 3)
    .notConsumable(programmed_circuit_3)
    .outputs(<avaritia:resource>)
    .buildAndRegister();


// --- Extreme Crafting Table
recipes.addShaped(<avaritia:extreme_crafting_table>, 
[[<ore:circuitAdvanced>, <ore:cableGtDoubleEnergeticAlloy>, <ore:circuitAdvanced>], 
[HVRobotArm, <avaritia:double_compressed_crafting_table>, HVRobotArm], 
[<ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>, <ore:ingotCrystalMatrix>]]);

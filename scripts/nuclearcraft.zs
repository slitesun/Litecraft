// --- Created by Miha_77 ---

// Guide for crafttweaker
// https://github.com/turbodiesel4598/NuclearCraft/blob/master/craftTweaker.txt




// --- Imports ---
import mods.nuclearcraft.alloy_furnace;
import mods.gregtech.recipe.RecipeMap;




// --- Variables ---





// --- Remove Recipe ---

// --- Basic Plating
recipes.remove(<nuclearcraft:part>);

// --- Advanced Plating
recipes.remove(<nuclearcraft:part:1>);

// --- DU Plating
recipes.remove(<nuclearcraft:part:2>);

// --- Elite Plating
recipes.remove(<nuclearcraft:part:3>);

// --- Crystal Binder
recipes.remove(<nuclearcraft:compound:1>);

// --- Carbon-Manganese Blend
recipes.remove(<nuclearcraft:compound:9>);

// --- Energetic Blend
recipes.remove(<nuclearcraft:compound:2>);

// --- Rad-X
recipes.remove(<nuclearcraft:rad_x>);

// --- HSLA Steel
alloy_furnace.removeRecipeWithOutput([<nuclearcraft:alloy:15>]);



// --- Adding Recipe ---

// --- Rad-X
recipes.addShaped(<nuclearcraft:rad_x>, [
[<ore:dustEnergeticAlloy>, <ore:bioplastic>, <ore:dustEnergeticAlloy>], 
[<ore:bioplastic>, <nuclearcraft:radaway>, <ore:bioplastic>], 
[<ore:bioplastic>, <ore:dustBlaze>, <ore:bioplastic>]]);




// --- Mixer Recipes ---
val mixer = RecipeMap.getByName("mixer");

// --- Crystal Binder
mixer.recipeBuilder()
    .duration(600).EUt(64)
    .inputs(<ore:dustRhodochrosite>)
    .inputs(<ore:dustCalciumSulfate>)
    .inputs(<ore:dustObsidian>)
    .inputs(<ore:dustMagnesium>)
    .outputs(<nuclearcraft:compound:1> * 4)
    .buildAndRegister();

// --- Carbon-Manganese Blend
mixer.recipeBuilder()
    .duration(600).EUt(64)
    .inputs([<ore:dustManganese>, <ore:dustCarbon>])
    .outputs(<nuclearcraft:compound:9> * 2)
    .buildAndRegister();
    


// --- Forming Press Recipes ---
val forming_press = RecipeMap.getByName("forming_press");

// --- Basic Plating
forming_press.recipeBuilder()
    .duration(200).EUt(30)
    .inputs(<ore:plateLead> *2)
    .inputs(<ore:dustGraphite> * 2)
    .outputs(<nuclearcraft:part>)
    .buildAndRegister();

// --- Advanced Plating
forming_press.recipeBuilder()
    .duration(200).EUt(120)
    .inputs(<ore:plateTough> * 4)
    .inputs(<ore:dustRedstone> * 4)
    .inputs(<nuclearcraft:part>)
    .outputs(<nuclearcraft:part:1>)
    .buildAndRegister();

// --- DU Plating
forming_press.recipeBuilder()
    .duration(200).EUt(480)
    .inputs(<ore:ingotUranium238> * 4)
    .inputs(<ore:dustSulfur> * 4)
    .inputs(<nuclearcraft:part:1>)
    .outputs(<nuclearcraft:part:2>)
    .buildAndRegister();

// --- Elite Plating
forming_press.recipeBuilder()
    .duration(200).EUt(480)
    .inputs(<ore:dustCrystalBinder> * 4)
    .inputs(<ore:dustBoron> * 4)
    .inputs(<nuclearcraft:part:2>)
    .outputs(<nuclearcraft:part:3>)
    .buildAndRegister();



























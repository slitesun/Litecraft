// --- Created by Miha_77




// --- Imports ---
import mods.gregtech.recipe.RecipeMap;




// --- Variables ---
var iron_dust = <gregtech:meta_item_1:2033>;
var meteoric_iron_dust = <gregtech:meta_item_1:2803>;




// --- Remove Recipes ---
furnace.remove(<ore:ingotMeteoricIron>);



// --- Adding Recipes ---


// --- Mixer Recipes ---
val macerator = RecipeMap.getByName("macerator");


// Meteoric Iron Dust
macerator.recipeBuilder()
    .duration(100).EUt(4)
    .inputs(<galacticraftcore:meteoric_iron_raw>)
    .outputs(meteoric_iron_dust)
    .chancedOutput(iron_dust, 1000)
    .buildAndRegister();


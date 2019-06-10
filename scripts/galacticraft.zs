// --- Created by Miha_77

// --- Include Mods: Galacticraft Core, Galacticraft Planets, Galaxy Space




// --- Imports ---
import mods.gregtech.recipe.RecipeMap;




// --- Variables ---
var iron_dust = <gregtech:meta_item_1:2033>;
var meteoric_iron_dust = <gregtech:meta_item_1:2803>;




// --- Remove Recipes ---
furnace.remove(<ore:ingotMeteoricIron>);

// --- Remove OreDict Plates from compressed materials ---

// --- Copper
<ore:plateCopper>.remove(<galacticraftcore:basic_item:6>);

// --- Tin
<ore:plateTin>.remove(<galacticraftcore:basic_item:7>);

// --- Aluminum
<ore:plateAluminum>.remove(<galacticraftcore:basic_item:8>);

// --- Steel
<ore:plateSteel>.remove(<galacticraftcore:basic_item:9>);

// --- Bronze
<ore:plateBronze>.remove(<galacticraftcore:basic_item:10>);

// --- Iron
<ore:plateIron>.remove(<galacticraftcore:basic_item:11>);

// --- Desh
<ore:plateDesh>.remove(<galacticraftplanets:item_basic_mars:5>);

// --- Titanium
<ore:plateTitanium>.remove(<galacticraftplanets:item_basic_asteroids:6>);

// --- Coal
<ore:plateCoal>.remove(<galaxyspace:compressed_plates>);

// --- Cobalt
<ore:plateCobalt>.remove(<galaxyspace:compressed_plates:1>);

// --- Magnesium
<ore:plateMagnesium>.remove(<galaxyspace:compressed_plates:2>);

// --- Nickel
<ore:plateNickel>.remove(<galaxyspace:compressed_plates:3>);





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


// --- Created by Miha_77 ---




// --- Imports ---




// --- Variables ---




// --- Remove Recipe ---

// --- Dough
recipes.remove(<harvestcraft:doughitem>);



// --- Adding Recipe ---

// --- Dough
recipes.addShapeless(<harvestcraft:doughitem>, [<ore:toolMixingbowl>, <ore:listAllwater>, <ore:foodFlour>, <ore:foodSalt>]);


// --- Ore dict Adder
<ore:foodFlour>.addAll(<ore:dustWheat>);
<ore:foodSalt>.addAll(<ore:dustSalt>);

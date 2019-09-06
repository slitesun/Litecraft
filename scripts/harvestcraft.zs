// --- Created by Miha_77 ---




// --- Imports ---




// --- Variables ---
val hammer = <ore:craftingToolHardHammer>;
val file   = <ore:craftingToolFile>;



// --- Remove Recipe ---

// --- Dough
recipes.remove(<harvestcraft:doughitem>);

// --- Market
recipes.remove(<harvestcraft:market>);

// --- Shipping Bin
recipes.remove(<harvestcraft:shippingbin>);

// --- Pot
recipes.remove(<harvestcraft:potitem>);

// --- Saucepan
recipes.remove(<harvestcraft:saucepanitem>);

// --- Skillet
recipes.remove(<harvestcraft:skilletitem>);

// --- Bakeware
recipes.remove(<harvestcraft:bakewareitem>);

// --- Mortar and Pestle
recipes.remove(<harvestcraft:mortarandpestleitem>);

// --- Mixing Bowl
recipes.remove(<harvestcraft:mixingbowlitem>);

// --- Juicer
recipes.remove(<harvestcraft:juiceritem>);

// --- Cutting Board
recipes.remove(<harvestcraft:cuttingboarditem>);

// --- Grinder
recipes.remove(<harvestcraft:grinder>);



// --- Adding Recipe ---

// --- Dough
recipes.addShapeless(<harvestcraft:doughitem>, [<ore:toolMixingbowl>, <ore:listAllwater>, <ore:foodFlour>, <ore:foodSalt>]);

// --- Market
recipes.addShaped(<harvestcraft:market>, [
[<ore:plankWood>, <ore:circuitBasic>, <ore:plankWood>], 
[<ore:plateIron>,<ore:itemSimpleMachineChassi>, <ore:plateIron>], 
[<ore:plateEmerald>, <ore:plateEmerald>, <ore:plateEmerald>]]);

// --- Shipping Bin
recipes.addShaped(<harvestcraft:shippingbin>, [
[<ore:plankWood>, <ore:circuitBasic>, <ore:plankWood>], 
[<ore:plateCopper>,<ore:itemSimpleMachineChassi>, <ore:plateCopper>], 
[<ore:plateEmerald>, <ore:plateEmerald>, <ore:plateEmerald>]]);

// --- Pot
recipes.addShaped(<harvestcraft:potitem>, [
[<ore:plateSteel>, hammer, <ore:plateSteel>], 
[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// --- Saucepan
recipes.addShaped(<harvestcraft:saucepanitem>, [
[null, file, <ore:stickSteel>], 
[<ore:plateSteel>, <ore:plateSteel>, hammer], 
[<ore:plateSteel>, <ore:plateSteel>, null]]);

// --- Skillet
recipes.addShaped(<harvestcraft:skilletitem>, [
[null, <ore:plateSteel>, <ore:plateSteel>], 
[file, <ore:plateSteel>, <ore:plateSteel>], 
[<ore:stickSteel>, hammer, null]]);

// --- Bakeware
recipes.addShaped(<harvestcraft:bakewareitem>, [
[null, hammer, null], 
[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// --- Mortar and Pestle
recipes.addShaped(<harvestcraft:mortarandpestleitem>, [
[null, <ore:ingotSteel>, null], 
[<ore:stone>, <ore:ingotSteel>, <ore:stone>], 
[<ore:stone>, <ore:stone>, <ore:stone>]]);

// --- Mixing Bowl
recipes.addShaped(<harvestcraft:mixingbowlitem>, [
[<minecraft:hardened_clay>, null, <minecraft:hardened_clay>], 
[<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]]);

// --- Juicer
recipes.addShaped(<harvestcraft:juiceritem>, [
[file, <ore:stickSteel>, hammer], 
[null, <ore:ingotSteel>, null], 
[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// --- Cutting Board
recipes.addShaped(<harvestcraft:cuttingboarditem>, [
[<tconstruct:knife_blade>.withTag({Material: "steel"}), null, null], 
[null, <ore:stickWood>, null], 
[null, null, <ore:plankWood>]]);

// --- Grinder
recipes.addShaped(<harvestcraft:grinder>, [
[null, null, null], 
[<ore:gearIron>, <ore:itemSimpleMachineChassi>, <ore:gearIron>], 
[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);


// --- Ore dict Adder
<ore:foodFlour>.addAll(<ore:dustWheat>);
<ore:foodSalt>.addAll(<ore:dustSalt>);
















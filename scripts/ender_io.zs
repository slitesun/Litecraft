//Dual-wings remake
recipes.remove(<enderio:item_material:6>);
recipes.addShaped(<enderio:item_material:6>, [[null, <rustic:tallow>, <minecraft:leather>], [<rustic:tallow>, <minecraft:leather>, <minecraft:leather>], [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);

//Wing remake
recipes.remove(<enderio:item_material:7>);
recipes.addShaped(<enderio:item_material:7>, [[null, null, null], [null, <ore:ingotSteel>, null], [<enderio:item_material:6>, <ore:ingotSteel>, <enderio:item_material:6>]]);

//Basic Capasitor Bank
recipes.remove(<enderio:block_cap_bank:1>);
recipes.addShaped(<enderio:block_cap_bank:1>, [[null, <ore:ingotConductiveIron>, null], [<ore:battery>, <thermalexpansion:frame:128>, <ore:battery>], [<enderio:item_basic_capacitor>, <ore:ingotConductiveIron>, <enderio:item_basic_capacitor>]]);

//Industrial Powder Coating
recipes.remove(<enderio:item_material:51>);
recipes.addShaped(<enderio:item_material:51> * 9, [[<ore:dustCobalt>, <ore:dustNetherQuartz>, <ore:dustLapis>], [<ore:dustSteel>, <ore:dustSteel>, <ore:dustSteel>], [<ore:dustSteel>, <ore:dustSteel>, <ore:dustSteel>]]);

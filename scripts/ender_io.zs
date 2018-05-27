//Dual-wings remake
recipes.remove(<enderio:item_material:6>);
recipes.addShaped(<enderio:item_material:6>, [[null, <rustic:tallow>, <minecraft:leather>], [<rustic:tallow>, <minecraft:leather>, <minecraft:leather>], [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);

//Wing remake
recipes.remove(<enderio:item_material:7>);
recipes.addShaped(<enderio:item_material:7>, [[null, null, null], [null, <ore:ingotSteel>, null], [<enderio:item_material:6>, <ore:ingotSteel>, <enderio:item_material:6>]]);
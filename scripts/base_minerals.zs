//Silicon blend
recipes.remove(<baseminerals:silicon_blend>);
recipes.addShapeless(<baseminerals:silicon_blend> * 2, [<ore:sand>, <ore:sand>, <ore:sand>, <ore:dustCoal>, <ore:dustCoal>, <ore:dustCoal>, <ore:sand>, <ore:sand>, <ore:sand>]);
recipes.addShapeless(<baseminerals:silicon_blend>, [<ore:sand>, <ore:sand>, <ore:sand>, <ore:dustCharcoal>, <ore:dustCharcoal>, <ore:dustCharcoal>, <ore:sand>, <ore:sand>, <ore:sand>]);

//Silicone powder
recipes.remove(<baseminerals:silicon_powder>);
mods.thermalexpansion.Centrifuge.addRecipe([<baseminerals:silicon_powder>], <minecraft:sand> * 3, null, 1000);

//Silicone block
recipes.remove(<baseminerals:silicon_block>);
recipes.addShaped(<baseminerals:silicon_block>, [[<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>], [<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>], [<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>]]);
recipes.addShapeless(<libvulpes:productingot:3> * 9, [<baseminerals:silicon_block>]);
recipes.addShapeless(<enderio:item_material:5> * 9, [<baseminerals:silicon_block>]);

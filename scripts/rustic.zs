//Cabinet remake
recipes.remove(<rustic:cabinet>);
recipes.addShaped(<rustic:cabinet>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Crushing tub remake
recipes.remove(<rustic:crushing_tub>);
recipes.addShaped(<rustic:crushing_tub>, [[<ore:plankWood>, null, <ore:plankWood>], [<ore:stone>, <ore:stone>, <ore:stone>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Plank Ironwood remake
recipes.remove(<rustic:planks:1>);
recipes.addShapeless(<rustic:planks:1> * 2, [<rustic:log:1>]);

//Plank Oliva wood remake
recipes.remove(<rustic:planks>);
recipes.addShapeless(<rustic:planks> * 2, [<rustic:log>]);

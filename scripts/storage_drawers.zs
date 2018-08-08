//
var machine_block_eu = <extrautils2:machine>;
var items_IO_plate = <advancedrocketry:ic:4>;


//Контроллер ящика
recipes.remove(<storagedrawers:controller>);
recipes.addShaped(<storagedrawers:controller>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:ingotRedstoneAlloy>, machine_block_eu, <ore:ingotRedstoneAlloy>], [items_IO_plate, <ore:circuitBasic>, items_IO_plate]]);

//Подчинённый контроллера
recipes.remove(<storagedrawers:controllerslave>);
recipes.addShaped(<storagedrawers:controllerslave>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:ingotRedstoneAlloy>, machine_block_eu, <ore:ingotRedstoneAlloy>], [items_IO_plate, <enderio:item_basic_capacitor>, items_IO_plate]]);

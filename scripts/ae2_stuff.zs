// --- Created By Miha_77 ---




// --- Imports ---




// --- Variables ---
var glass_cable = <appliedenergistics2:part:16>;
var cover_interface = <litecraftcore:lc_meta_item:15>;
var engineering_processor = <appliedenergistics2:material:24>;
var wireless_reciever = <appliedenergistics2:material:41>;
var ae_circuit = <litecraftcore:lc_meta_item:16>;



// --- Remove Recipes ---

// --- Pattern Encoder
recipes.remove(<ae2stuff:encoder>);

// --- Crystall Growth Chamber
recipes.remove(<ae2stuff:grower>);

// --- Advanced Inscriber
recipes.remove(<ae2stuff:inscriber>);

// --- Wireless Connector
recipes.remove(<ae2stuff:wireless>);




// --- Adding Recipes ---

// --- Pattern Encoder
recipes.addShaped(<ae2stuff:encoder>, [[engineering_processor, cover_interface, engineering_processor], [glass_cable, <ore:itemMachineChassi>, glass_cable]]);

// --- Wireless Connector
recipes.addShaped(<ae2stuff:wireless>, [[wireless_reciever, glass_cable, wireless_reciever], [ae_circuit, <ore:itemMachineChassi>, ae_circuit]]);

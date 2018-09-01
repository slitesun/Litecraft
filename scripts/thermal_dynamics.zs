//
import crafttweaker.item.IItemStack;

var control_circut_plate = <advancedrocketry:ic:3>;
var items_IO_plate = <advancedrocketry:ic:4>;

//all remove id items and blocks

val array_removed = [
  
  <thermaldynamics:servo>, <thermaldynamics:servo:1>, <thermaldynamics:servo:2>, <thermaldynamics:servo:3>, <thermaldynamics:servo:4>, 
  <thermaldynamics:filter>, <thermaldynamics:filter:1>, <thermaldynamics:filter:2>, <thermaldynamics:filter:3>, <thermaldynamics:filter:4>,
  <thermaldynamics:retriever>, <thermaldynamics:retriever:1>, <thermaldynamics:retriever:2>, <thermaldynamics:retriever:3>, <thermaldynamics:retriever:4>,
  <thermaldynamics:relay>
] as IItemStack[];

for e in array_removed {

  recipes.remove(e);
}

//Servos
recipes.addShaped(<thermaldynamics:servo>, [[<ore:nuggetCopper>, items_IO_plate, <ore:nuggetCopper>], [<ore:plateSteel>, <ore:ingotRedstoneAlloy>, <ore:plateSteel>]]);
recipes.addShaped(<thermaldynamics:servo:1>, [[<ore:nuggetConductiveIron>, items_IO_plate, <ore:nuggetConductiveIron>], [<ore:plateAluminium>, <ore:ingotRedstoneAlloy>, <ore:plateAluminium>]]);
recipes.addShaped(<thermaldynamics:servo:2>, [[<ore:nuggetEnergeticAlloy>, items_IO_plate, <ore:nuggetEnergeticAlloy>], [<ore:plateStainlesssteel>, <ore:ingotRedstoneAlloy>, <ore:plateStainlesssteel>]]);
recipes.addShaped(<thermaldynamics:servo:3>, [[<ore:nuggetPulsatingIron>, items_IO_plate, <ore:nuggetPulsatingIron>], [<ore:plateSignalum>, <ore:ingotRedstoneAlloy>, <ore:plateSignalum>]]);
recipes.addShaped(<thermaldynamics:servo:4>, [[<ore:nuggetVibrantAlloy>, items_IO_plate, <ore:nuggetVibrantAlloy>], [<ore:plateEnderium>, <ore:ingotRedstoneAlloy>, <ore:plateEnderium>]]);

//Retrievers
recipes.addShaped(<thermaldynamics:retriever>, [[<ore:nuggetCopper>, items_IO_plate, <ore:nuggetCopper>], [<ore:plateSteel>, <minecraft:ender_eye>, <ore:plateSteel>]]);
recipes.addShaped(<thermaldynamics:retriever:1>, [[<ore:nuggetConductiveIron>, items_IO_plate, <ore:nuggetConductiveIron>], [<ore:plateAluminium>, <minecraft:ender_eye>, <ore:plateAluminium>]]);
recipes.addShaped(<thermaldynamics:retriever:2>, [[<ore:nuggetEnergeticAlloy>, items_IO_plate, <ore:nuggetEnergeticAlloy>], [<ore:plateStainlesssteel>, <minecraft:ender_eye>, <ore:plateStainlesssteel>]]);
recipes.addShaped(<thermaldynamics:retriever:3>, [[<ore:nuggetPulsatingIron>, items_IO_plate, <ore:nuggetPulsatingIron>], [<ore:plateSignalum>, <minecraft:ender_eye>, <ore:plateSignalum>]]);
recipes.addShaped(<thermaldynamics:retriever:4>, [[<ore:nuggetVibrantAlloy>, items_IO_plate, <ore:nuggetVibrantAlloy>], [<ore:plateEnderium>, <minecraft:ender_eye>, <ore:plateEnderium>]]);

//Filters
recipes.addShaped(<thermaldynamics:filter>, [[<ore:nuggetCopper>, <ore:plateLapis>, <ore:nuggetCopper>], [<ore:plateSteel>, <extrautils2:filter>, <ore:plateSteel>]]);
recipes.addShaped(<thermaldynamics:filter:1>, [[<ore:nuggetConductiveIron>, <ore:plateLapis>, <ore:nuggetConductiveIron>], [<ore:plateAluminium>, <extrautils2:filter>, <ore:plateAluminium>]]);
recipes.addShaped(<thermaldynamics:filter:2>, [[<ore:nuggetEnergeticAlloy>, <ore:plateLapis>, <ore:nuggetEnergeticAlloy>], [<ore:plateStainlesssteel>, <extrautils2:filter>, <ore:plateStainlesssteel>]]);
recipes.addShaped(<thermaldynamics:filter:3>, [[<ore:nuggetPulsatingIron>, <ore:plateLapis>, <ore:nuggetPulsatingIron>], [<ore:plateSignalum>, <extrautils2:filter>, <ore:plateSignalum>]]);
recipes.addShaped(<thermaldynamics:filter:4>, [[<ore:nuggetVibrantAlloy>, <ore:plateLapis>, <ore:nuggetVibrantAlloy>], [<ore:plateEnderium>, <extrautils2:filter>, <ore:plateEnderium>]]);

//Relay
recipes.addShaped(<thermaldynamics:relay>, [[<ore:gemRedstone>, <ore:gearRedstone>, <ore:gemRedstone>], [<ore:plateQuartz>, control_circut_plate, <ore:plateQuartz>]]);


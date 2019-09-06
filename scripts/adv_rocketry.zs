// --- Created by Miha_77 ---
// Include mods: Vulpes library




// --- Imports ---
import mods.gregtech.recipe.RecipeMap;




// --- Variables ---
var SBatteryHull  = <gregtech:meta_item_1:32500>;
var RAM           = <gregtech:meta_item_2:32485>;
var LvEmitter     = <gregtech:meta_item_1:32680>;
var MvEmitter     = <gregtech:meta_item_1:32681>;
var LvSensor      = <gregtech:meta_item_1:32690>;
var OpticalSensor = <advancedrocketry:satelliteprimaryfunction>;
var SiBoule       = <libvulpes:productboule:3>; 
var SiWafer       = <advancedrocketry:wafer>;
var PCB           = <gtadditions:ga_meta_item:32031>;
var GoodPhenolicCB = <gtadditions:ga_meta_item:32030>;
var CProcessor    = <litecraftcore:lc_meta_item:25>;
var IProcessor    = <litecraftcore:lc_meta_item:27>;
var FProcessor    = <litecraftcore:lc_meta_item:8>;
var SMDCapacitor  = <gregtech:meta_item_2:32458>;
var SMDTransistor = <gregtech:meta_item_2:32460>; 
var SMDResistor   = <gregtech:meta_item_2:32459>;
var SMDDiode      = <gregtech:meta_item_2:32457>;
var FineRedstoneAlloyWire = <gregtech:meta_item_2:16805>;
var IntegratedCircuit = <gregtech:meta_item_2:32477>;
var NANDGate      = <gregtech:meta_item_2:32480>;
var Chip1         = <litecraftcore:lc_meta_item:22>;
var Chip2         = <litecraftcore:lc_meta_item:23>;
var TrackingUnit  = <advancedrocketry:ic:1>;
var ABasicCircuit = <advancedrocketry:ic>;
var CPU           = <gregtech:meta_item_2:32478>;
var NORGate       = <gregtech:meta_item_2:32482>;
var SolarPanelCover = <gregtech:meta_item_1:32750>;


// --- Remove Recipe ---

// --- Copper Coil
recipes.remove(<libvulpes:coil0:4>);

// --- Gold Coil
recipes.remove(<libvulpes:coil0:2>);

// --- Aluminum Coil
recipes.remove(<libvulpes:coil0:9>);

// --- Titanium Coil
recipes.remove(<libvulpes:coil0:7>);

// --- Iridium Coil
recipes.remove(<libvulpes:coil0:10>);

// --- Rods
recipes.remove(<libvulpes:productrod:*>);
recipes.remove(<advancedrocketry:productrod:*>);

// --- Steel Fan
recipes.remove(<libvulpes:productfan:6>);

// --- Small Battery
recipes.remove(<libvulpes:battery>);

// --- 2x Small Battery
recipes.remove(<libvulpes:battery:1>);

// --- Linker
recipes.remove(<libvulpes:linker>);

// --- Holo-projector
recipes.remove(<libvulpes:holoprojector>);

// --- Titanium Iridium Alloy Gear
recipes.removeShaped(<advancedrocketry:productgear:1>);

// --- Titanium Aluminide Gear
recipes.removeShaped(<advancedrocketry:productgear>);

// --- Steel Gear
recipes.remove(<advancedrocketry:productgear:6>);

// --- Titanium Gear
recipes.removeShaped(<advancedrocketry:productgear:7>);

// --- Carbon Brick
recipes.remove(<advancedrocketry:misc:1>);

// --- Satellite Id Chip
recipes.remove(<advancedrocketry:satelliteidchip>);

// --- Space Station Id Chip
recipes.remove(<advancedrocketry:spacestationchip>);

// --- Planet Id Chip
recipes.remove(<advancedrocketry:planetidchip>);

// --- Asteroid Chip
recipes.remove(<advancedrocketry:asteroidchip>);

// --- Control Circuit Board
recipes.remove(<advancedrocketry:ic:3>);

// --- Item IO Circuit Board
recipes.remove(<advancedrocketry:ic:4>);

// --- Liquid IO Circuit Board
recipes.remove(<advancedrocketry:ic:5>);

// --- Machine Structure
recipes.remove(<libvulpes:structuremachine>);

// --- Advanced Machine Structure
recipes.remove(<libvulpes:advstructuremachine>);

// --- Thermite
recipes.remove(<advancedrocketry:thermite>);

// --- Solar Panel
recipes.remove(<advancedrocketry:solarpanel>);

// --- Solar Generator
recipes.remove(<advancedrocketry:solargenerator>);

// --- Basic Solar Panel
recipes.remove(<advancedrocketry:satellitepowersource>);

// --- Large Solar Panel
recipes.remove(<advancedrocketry:satellitepowersource:1>);


// --- Aluminum Ingot
furnace.remove(<ore:ingotAluminum>);

// --- Iridium
furnace.remove(<ore:ingotIridium>);

// --- Titanium Aluminide
furnace.remove(<ore:ingotTitaniumAluminide>);

// --- Titanium Iridium Alloy
furnace.remove(<ore:ingotTitaniumIridium>);



// --- Adding Recipe ---


// --- Steel Fan
recipes.addShapeless(<libvulpes:productfan:6>, [<ore:rotorSteel>]);

// --- 2x Small Battery
recipes.addShaped(<libvulpes:battery:1>, [
[<ore:itemBattery>, <ore:plateCopper>, <ore:itemBattery>], 
[null, <ore:craftingToolHardHammer>, null], 
[null, null, null]]);

// --- Solar Panel
recipes.addShaped(<advancedrocketry:solarpanel>, [
[SolarPanelCover, SolarPanelCover, SolarPanelCover], 
[null, <libvulpes:structuremachine>, null], 
[null, null, null]]);

// --- Solar Generator
recipes.addShaped(<advancedrocketry:solargenerator>, [
[<ore:cableGtSingleAnnealedCopper>, <advancedrocketry:solarpanel>, <ore:cableGtSingleAnnealedCopper>], 
[<ore:itemBattery>, <libvulpes:forgepoweroutput>, <ore:itemBattery>], 
[null, null, null]]);


// --- Assembler Recipes ---
val assembler = RecipeMap.getByName("assembler");


// --- Copper Coil
assembler.recipeBuilder()
    .duration(200).EUt(30)
    .inputs(<ore:wireFineCopper> * 64)
    .inputs(<ore:wireFineCopper> * 64)
    .inputs(<ore:stickIronMagnetic>)
    .fluidInputs(<liquid:tin> * 144)
    .outputs(<libvulpes:coil0:4>)
    .buildAndRegister();

// --- Gold Coil
assembler.recipeBuilder()
    .duration(300).EUt(120)
    .inputs(<ore:wireFineGold> * 64)
    .inputs(<ore:wireFineGold> * 64)
    .inputs(<ore:stickSteelMagnetic>)
    .fluidInputs(<liquid:copper> * 144)
    .outputs(<libvulpes:coil0:2>)
    .buildAndRegister();

// --- Aluminum Coil
assembler.recipeBuilder()
    .duration(450).EUt(480)
    .inputs(<ore:wireFineAluminium> * 64)
    .inputs(<ore:wireFineAluminium> * 64)
    .inputs(<ore:stickSteelMagnetic>)
    .fluidInputs(<liquid:aluminum> * 144)
    .outputs(<libvulpes:coil0:9>)
    .buildAndRegister();

// --- Titanium Coil
assembler.recipeBuilder()
    .duration(600).EUt(1920)
    .inputs(<ore:wireFineTitanium> * 64)
    .inputs(<ore:wireFineTitanium> * 64)
    .inputs(<ore:stickNeodymiumMagnetic>)
    .fluidInputs(<liquid:nichrome> * 144)
    .outputs(<libvulpes:coil0:7>)
    .buildAndRegister();

// --- Iridium Coil
assembler.recipeBuilder()
    .duration(860).EUt(7860)
    .inputs(<ore:wireFineIridium> * 64)
    .inputs(<ore:wireFineIridium> * 64)
    .inputs(<ore:stickLongNeodymiumMagnetic>)
    .fluidInputs(<liquid:tungsten> * 144)
    .outputs(<libvulpes:coil0:10>)
    .buildAndRegister();

// --- Holo-projector
assembler.recipeBuilder()
    .duration(200).EUt(120)
    .inputs(<ore:plateAluminium> * 6)
    .inputs(<ore:circuitGood> * 3)
    .inputs(OpticalSensor * 4)
    .inputs(MvEmitter * 2)
    .inputs(<ore:cableGtSingleCopper> * 6)
    .outputs(<libvulpes:holoprojector>)
    .buildAndRegister();

// --- Machine Structure
assembler.recipeBuilder()
    .duration(200).EUt(120)
    .inputs(<ore:plateElectricalSteel> * 8)
    .inputs(<ore:stickLongElectricalSteel> * 6)
    .outputs(<libvulpes:structuremachine> * 4)
    .buildAndRegister();

// --- Advanced Machine Structure
assembler.recipeBuilder()
    .duration(200).EUt(120)
    .inputs(<ore:plateSignalum> * 8)
    .inputs(<ore:stickLongSignalum> * 6)
    .outputs(<libvulpes:advstructuremachine>)
    .buildAndRegister();

// --- Low Pressure Tank
assembler.recipeBuilder()
    .duration(600).EUt(30)
    .inputs(<ore:sheetIron> * 8)
    .property("circuit", 8)
    .outputs(<advancedrocketry:pressuretank>)
    .buildAndRegister();

// --- Pressure Tank
assembler.recipeBuilder()
    .duration(600).EUt(30)
    .inputs(<ore:sheetSteel> * 8)
    .property("circuit", 8)
    .outputs(<advancedrocketry:pressuretank:1>)
    .buildAndRegister();

// --- High Pressure Tank
assembler.recipeBuilder()
    .duration(600).EUt(30)
    .inputs(<ore:sheetAluminum> * 8)
    .property("circuit", 8)
    .outputs(<advancedrocketry:pressuretank:2>)
    .buildAndRegister();

// --- Super High Pressure Tank
assembler.recipeBuilder()
    .duration(600).EUt(30)
    .inputs(<ore:sheetTitanium> * 8)
    .property("circuit", 8)
    .outputs(<advancedrocketry:pressuretank:3>)
    .buildAndRegister();

// --- Basic Solar Panel
assembler.recipeBuilder()
    .duration(600).EUt(30)
    .inputs(<ore:stickAluminium> * 6)
    .inputs(<ore:cableGtSingleAnnealedCopper> * 4)
    .inputs(SolarPanelCover * 10)
    .outputs(<advancedrocketry:satellitepowersource>)
    .buildAndRegister();

// --- Large Solar Panel
assembler.recipeBuilder()
    .duration(600).EUt(30)
    .inputs(<advancedrocketry:satellitepowersource> * 8)
    .outputs(<advancedrocketry:satellitepowersource:1>)
    .buildAndRegister();

// --- Autoclave Recipes ---
val autoclave = RecipeMap.getByName("autoclave");

// --- Dilithium
autoclave.recipeBuilder()
    .duration(600).EUt(480)
    .inputs(<ore:dustDilithium>)
    .fluidInputs(<liquid:distilled_water> * 1000)
    .outputs(<libvulpes:productcrystal>)
    .buildAndRegister();


// --- EBF Recipes ---
val blast_furnace = RecipeMap.getByName("blast_furnace");

// --- Silicon Boule
blast_furnace.recipeBuilder()
    .duration(2000).EUt(120)
    .property("temperature", 1000)
    .inputs(<ore:dustSilicon> * 32)
    .inputs(<ore:nuggetElectricalSteel>)
    .outputs(SiBoule)
    .buildAndRegister();


// --- Canning Recipes ---
val canner = RecipeMap.getByName("canner");

// --- Small Batterry
canner.recipeBuilder()
    .duration(100).EUt(2)
    .inputs(<ore:dustRedstone> * 2)
    .inputs(SBatteryHull)
    .outputs(<libvulpes:battery>)
    .buildAndRegister();


// --- Cluster Mill Recipes --- 
val cluster_mill = RecipeMap.getByName("cluster_mill");

// --- Iron Sheet
cluster_mill.recipeBuilder()
    .duration(60).EUt(24)
    .inputs(<ore:ingotIron>)
    .outputs(<libvulpes:productsheet:1>)
    .buildAndRegister();

// --- Copper Sheet
cluster_mill.recipeBuilder()
    .duration(70).EUt(24)
    .inputs(<ore:ingotCopper>)
    .outputs(<libvulpes:productsheet:4>)
    .buildAndRegister();

// --- Steel Sheet
cluster_mill.recipeBuilder()
    .duration(65).EUt(24)
    .inputs(<ore:ingotSteel>)
    .outputs(<libvulpes:productsheet:6>)
    .buildAndRegister();

// --- Titanium Sheet
cluster_mill.recipeBuilder()
    .duration(45).EUt(24)
    .inputs(<ore:ingotTitanium>)
    .outputs(<libvulpes:productsheet:7>)
    .buildAndRegister();

// --- Aluminum Sheet
cluster_mill.recipeBuilder()
    .duration(25).EUt(24)
    .inputs(<ore:ingotAluminium>)
    .outputs(<libvulpes:productsheet:9>)
    .buildAndRegister();

// --- Titanium Aluminide Sheet
cluster_mill.recipeBuilder()
    .duration(80).EUt(24)
    .inputs(<ore:ingotTitaniumAluminide>)
    .outputs(<advancedrocketry:productsheet>)
    .buildAndRegister();

// --- Titanium Iridium Alloy Sheet
cluster_mill.recipeBuilder()
    .duration(100).EUt(24)
    .inputs(<ore:ingotTitaniumIridium>)
    .outputs(<advancedrocketry:productsheet:1>)
    .buildAndRegister();


// --- Chemical Reactor Recipes ---
val chemical_reactor = RecipeMap.getByName("chemical_reactor");

// --- Basic Circuit Plate
chemical_reactor.recipeBuilder()
    .duration(3000).EUt(4)
    .inputs(SiWafer)
    .inputs(<ore:dustGold> * 8)
    .fluidInputs(<liquid:redstone_alloy> * 288)
    .outputs(<advancedrocketry:itemcircuitplate>)
    .buildAndRegister();

// --- Advanced Circuit Plate
chemical_reactor.recipeBuilder()
    .duration(3000).EUt(4)
    .inputs(SiWafer)
    .inputs(<ore:dustEmerald> * 16)
    .fluidInputs(<liquid:conductive_iron> * 288)
    .outputs(<advancedrocketry:itemcircuitplate:1>)
    .buildAndRegister();


// --- Circuit Assembler Recipes ---
val circuit_assembler = RecipeMap.getByName("circuit_assembler");

// --- Linker
circuit_assembler.recipeBuilder()
    .duration(400).EUt(30)
    .inputs(<ore:platePlastic> * 6)
    .inputs(<ore:circuitBasic> * 2)
    .inputs(RAM * 4)
    .inputs(LvEmitter)
    .inputs(LvSensor)
    .inputs(<ore:wireFineCopper> * 16)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(<libvulpes:linker>)
    .buildAndRegister();

// --- Control Circuit Board
circuit_assembler.recipeBuilder()
    .duration(400).EUt(30)
    .inputs(PCB)
    .inputs(CProcessor)
    .inputs(IntegratedCircuit * 4)
    .inputs(SMDCapacitor * 8)
    .inputs(SMDTransistor * 8)
    .inputs(FineRedstoneAlloyWire * 16)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(<advancedrocketry:ic:3>)
    .buildAndRegister();

// --- Item IO Circuit Board
circuit_assembler.recipeBuilder()
    .duration(400).EUt(30)
    .inputs(PCB)
    .inputs(IProcessor)
    .inputs(IntegratedCircuit * 4)
    .inputs(SMDCapacitor * 8)
    .inputs(SMDTransistor * 8)
    .inputs(FineRedstoneAlloyWire * 16)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(<advancedrocketry:ic:4>)
    .buildAndRegister();

// --- Liquid IO Circuit Board
circuit_assembler.recipeBuilder()
    .duration(400).EUt(30)
    .inputs(PCB)
    .inputs(FProcessor)
    .inputs(IntegratedCircuit * 4)
    .inputs(SMDCapacitor * 8)
    .inputs(SMDTransistor * 8)
    .inputs(FineRedstoneAlloyWire * 16)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(<advancedrocketry:ic:5>)
    .buildAndRegister();

// --- Basic Circuit
circuit_assembler.recipeBuilder()
    .duration(400).EUt(30)
    .inputs(GoodPhenolicCB)
    .inputs(Chip1 * 2)
    .inputs(SMDResistor * 4)
    .inputs(SMDCapacitor * 4)
    .inputs(SMDTransistor * 4)
    .inputs(<ore:wireFineCopper> * 8)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(<advancedrocketry:ic>)
    .buildAndRegister();

// --- Advanced Circuit
circuit_assembler.recipeBuilder()
    .duration(400).EUt(120)
    .inputs(PCB)
    .inputs(Chip2 * 2)
    .inputs(SMDResistor * 4)
    .inputs(SMDCapacitor * 4)
    .inputs(SMDTransistor * 4)
    .inputs(<ore:wireFineGold> * 8)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(<advancedrocketry:ic:2>)
    .buildAndRegister();

// --- Space Elevator Chip
circuit_assembler.recipeBuilder()
    .duration(400).EUt(120)
    .inputs(PCB)
    .inputs(<advancedrocketry:spacestationchip>)
    .inputs(TrackingUnit)
    .inputs(SMDDiode * 4)
    .inputs(NANDGate * 4)
    .inputs(<ore:wireFineElectrum> * 8)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(<advancedrocketry:elevatorchip>)
    .buildAndRegister();

// --- Satellite Id Chip
circuit_assembler.recipeBuilder()
    .duration(400).EUt(120)
    .inputs(PCB)
    .inputs(ABasicCircuit)
    .inputs(NANDGate * 8)
    .inputs(RAM * 4)
    .inputs(<ore:wireFineGold> * 8)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(<advancedrocketry:satelliteidchip>)
    .buildAndRegister();

// --- Space Station Id Chip
circuit_assembler.recipeBuilder()
    .duration(400).EUt(120)
    .inputs(PCB)
    .inputs(ABasicCircuit)
    .inputs(<libvulpes:linker>)
    .inputs(CPU * 4)
    .inputs(<ore:wireFineGold> * 8)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(<advancedrocketry:spacestationchip>)
    .buildAndRegister();

// --- Planet Id Chip
circuit_assembler.recipeBuilder()
    .duration(400).EUt(120)
    .inputs(PCB)
    .inputs(<advancedrocketry:satelliteidchip>)
    .inputs(ABasicCircuit * 2)
    .inputs(NANDGate * 8)
    .inputs(NORGate * 4)
    .inputs(<ore:wireFineElectrum> * 8)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(<advancedrocketry:planetidchip>)
    .buildAndRegister();

// --- Tracking Circuit
circuit_assembler.recipeBuilder()
    .duration(400).EUt(120)
    .inputs(PCB)
    .inputs(LvEmitter)
    .inputs(LvSensor)
    .inputs(ABasicCircuit)
    .inputs(CProcessor * 2)
    .inputs(<ore:wireFineGold> * 16)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(<advancedrocketry:ic:1>)
    .buildAndRegister();

// --- Asteroid Chip
circuit_assembler.recipeBuilder()
    .duration(400).EUt(120)
    .inputs(PCB)
    .inputs(<advancedrocketry:ic:1>)
    .inputs(<advancedrocketry:dataunit>)
    .inputs(RAM * 8)
    .inputs(CProcessor * 4)
    .inputs(<ore:wireFineElectrum> * 8)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(<advancedrocketry:asteroidchip>)
    .buildAndRegister();

// --- Data Storage Unit
circuit_assembler.recipeBuilder()
    .duration(400).EUt(120)
    .inputs(PCB)
    .inputs(<ore:platePlastic> * 4)
    .inputs(ABasicCircuit)
    .inputs(RAM * 4)
    .inputs(NANDGate * 32)
    .inputs(<ore:wireFineRedstoneAlloy> * 8)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(<advancedrocketry:dataunit>)
    .buildAndRegister();

// --- Cutting Machine Recipes ---
val cutting_saw = RecipeMap.getByName("cutting_saw");

// --- Silicon Wafer
cutting_saw.recipeBuilder()
    .duration(600).EUt(8)
    .inputs(SiBoule)
    .outputs(SiWafer * 16)
    .buildAndRegister();


// --- Mixer Recipes ---
val mixer = RecipeMap.getByName("mixer");

// --- Thermite Dust
mixer.recipeBuilder()
    .duration(250).EUt(120)
    .inputs(<ore:dustAluminium>)
    .inputs(<ore:dustBandedIron> * 2)
    .outputs(<advancedrocketry:thermite>)
    .buildAndRegister();




























// --- Created by Miha_77 ---




// --- Imports ---
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;



// --- Variables ---

var PAHelmet     = <powersuits:powerarmor_head>;
var PAChestplate = <powersuits:powerarmor_torso>;
var PALeggins    = <powersuits:powerarmor_legs>;
var PABoots      = <powersuits:powerarmor_feet>;
var PAFist       = <powersuits:power_fist>;

var LvCapacitor = <powersuits:powerarmorcomponent:5>;
var MvCapacitor = <powersuits:powerarmorcomponent:6>;
var HvCapacitor = <powersuits:powerarmorcomponent:7>;
var EvCapacitor = <powersuits:powerarmorcomponent:8>;

var Wiring           = <powersuits:powerarmorcomponent>;
var Parachute        = <powersuits:powerarmorcomponent:9>;
var CarbonMyofiber   = <powersuits:powerarmorcomponent:14>;
var MyofiberGel      = <powersuits:powerarmorcomponent:16>;
var ArtificialMuscle = <powersuits:powerarmorcomponent:17>;
var InsRubberHose    = <powersuits:powerarmorcomponent:21>;

var Solenoid        = <powersuits:powerarmorcomponent:1>;
var ServoMotor      = <powersuits:powerarmorcomponent:2>;
var GliderWing      = <powersuits:powerarmorcomponent:3>;
var IonThruster     = <powersuits:powerarmorcomponent:4>;
var IronPlating     = <powersuits:powerarmorcomponent:10>;
var DiamondPlating  = <powersuits:powerarmorcomponent:11>;
var FieldEmitter    = <powersuits:powerarmorcomponent:12>;
var HologramEmitter = <powersuits:powerarmorcomponent:13>;
var SolarPanel      = <powersuits:powerarmorcomponent:18>;
var Magnet          = <powersuits:powerarmorcomponent:19>;

var ControlCircuit = <powersuits:powerarmorcomponent:15>;
var ComputerChip   = <powersuits:powerarmorcomponent:20>;

var PATTable = <powersuits:tile.tinkertable>;

var LapotronCrystal = <gregtech:meta_item_2:32213>;
var ReinfIridiumAlloy = <gregtech:meta_item_2:32435>;
var AdvAlloyPlate = <gregtech:meta_item_2:32433>;
var LuVPiston = <gregtech:meta_item_1:32645>;
var LuVFieldGen = <gregtech:meta_item_1:32675>;

var PIC  = <gregtech:meta_item_2:32483>;
var HPIC = <gregtech:meta_item_2:32479>;
var MCircuitBoard = <gtadditions:ga_meta_item:32035>;
var RAM = <gregtech:meta_item_2:32485>;
var NORGate = <gregtech:meta_item_2:32482>;
var SMDDiode = <gregtech:meta_item_2:32457>;
var LvSolarPanel = <gregtech:meta_item_1:32752>;

var EConduit2 = <enderio:item_power_conduit:1>;
var ConduitProbe = <enderio:item_conduit_probe>;

var Capacitor  = <enderio:item_basic_capacitor>;
var Capacitor2 = <enderio:item_basic_capacitor:1>;
var Capacitor3 = <enderio:item_basic_capacitor:2>;

var ListItems = [
  PAHelmet, PAChestplate, PALeggins, PABoots, PAFist, LvCapacitor, MvCapacitor, HvCapacitor, EvCapacitor, 
  Wiring, Parachute, CarbonMyofiber, MyofiberGel, ArtificialMuscle, InsRubberHose,
  Solenoid, ServoMotor, GliderWing, IonThruster, IronPlating, DiamondPlating, FieldEmitter, HologramEmitter, SolarPanel, Magnet,
  ControlCircuit, ComputerChip, PATTable
] as IItemStack[];


// --- Remove Recipe ---

for e in ListItems{
  recipes.remove(e);
}


// --- Adding Recipe ---

// --- Assembler Recipes ---
val assembler = RecipeMap.getByName("assembler");

// --- Wiring
assembler.recipeBuilder()
    .duration(200).EUt(30720)
    .property("circuit", 24)
    .inputs(<ore:wireGtSinglePulsatingIron>)
    .fluidInputs(<liquid:redstone> * 288)
    .outputs(Wiring)
    .buildAndRegister();

// --- LV Capacitor
assembler.recipeBuilder()
    .duration(400).EUt(30)
    .inputs(<ore:plateAluminium> * 4)
    .inputs(PIC * 4)
    .inputs(Capacitor * 4)
    .inputs(<ore:cableGtSingleConstructionAlloy> * 12)
    .fluidInputs(<liquid:soldering_alloy> * 576)
    .outputs(LvCapacitor)
    .buildAndRegister();

// --- MV Capacitor
assembler.recipeBuilder()
    .duration(400).EUt(120)
    .inputs(<ore:plateAluminium> * 4)
    .inputs(PIC * 8)
    .inputs(Capacitor2 * 4)
    .inputs(<ore:cableGtSingleConductiveIron> * 12)
    .fluidInputs(<liquid:soldering_alloy> * 576)
    .outputs(MvCapacitor)
    .buildAndRegister();

// --- HV Capacitor
assembler.recipeBuilder()
    .duration(400).EUt(480)
    .inputs(<ore:plateAluminium> * 4)
    .inputs(HPIC * 4)
    .inputs(Capacitor3 * 4)
    .inputs(<ore:cableGtSingleEnergeticAlloy> * 12)
    .fluidInputs(<liquid:soldering_alloy> * 576)
    .outputs(HvCapacitor)
    .buildAndRegister();

// --- EV Capacitor
assembler.recipeBuilder()
    .duration(400).EUt(1920)
    .inputs(<ore:plateAluminium> * 4)
    .inputs(HPIC * 8)
    .inputs(LapotronCrystal * 4)
    .inputs(<ore:cableGtSinglePulsatingIron> * 12)
    .inputs(ComputerChip)
    .fluidInputs(<liquid:soldering_alloy> * 576)
    .outputs(EvCapacitor)
    .buildAndRegister();

// --- Hologram Emitter
assembler.recipeBuilder()
    .duration(400).EUt(480)
    .inputs(<ore:crystalDilithium>)
    .inputs(<enderio:block_electric_light:2>)
    .inputs(<ore:cableGtSingleEnergeticAlloy> * 4)
    .inputs(<ore:plateAluminium> * 4)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(HologramEmitter)
    .buildAndRegister();

// --- Artificial Muscle
assembler.recipeBuilder()
    .duration(400).EUt(480)
    .inputs(CarbonMyofiber * 16)
    .inputs(MyofiberGel)
    .outputs(ArtificialMuscle)
    .buildAndRegister();

// --- Solar Panel
assembler.recipeBuilder()
    .duration(400).EUt(480)
    .inputs(LvSolarPanel * 4)
    .inputs(<ore:plateAluminium> * 4)
    .inputs(<ore:screwAluminium> * 8)
    .inputs(<ore:wireFineGold> * 32)
    .fluidInputs(<liquid:soldering_alloy> * 288)
    .outputs(SolarPanel)
    .buildAndRegister();


// --- Assembly Line Recipes ---
val assembly_line = RecipeMap.getByName("assembly_line");

// --- Power Armor Helmet 
assembly_line.recipeBuilder()
    .duration(1600).EUt(130000)
    .inputs(<enderio:item_end_steel_helmet>)
    .inputs(ReinfIridiumAlloy * 5)
    .inputs(<ore:circuitUltimate> * 2)
    .inputs(<ore:plateGlass> * 8)
    .inputs(Wiring * 10)
    .fluidInputs(<liquid:soldering_alloy> * 720)
    .fluidInputs(<liquid:titanium> * 576)
    .outputs(PAHelmet)
    .buildAndRegister();

// --- Power Armor Chestplate 
assembly_line.recipeBuilder()
    .duration(1600).EUt(130000)
    .inputs(<enderio:item_end_steel_chestplate>)
    .inputs(ReinfIridiumAlloy * 8)
    .inputs(<ore:circuitUltimate> * 4)
    .inputs(<ore:frameGtAluminium> * 2)
    .inputs(Wiring * 16)
    .fluidInputs(<liquid:soldering_alloy> * 1296)
    .fluidInputs(<liquid:titanium> * 1152)
    .outputs(PAChestplate)
    .buildAndRegister();

// --- Power Armor Leggins 
assembly_line.recipeBuilder()
    .duration(1600).EUt(130000)
    .inputs(<enderio:item_end_steel_leggings>)
    .inputs(ReinfIridiumAlloy * 7)
    .inputs(<ore:circuitUltimate> * 2)
    .inputs(Wiring * 14)
    .fluidInputs(<liquid:soldering_alloy> * 1152)
    .fluidInputs(<liquid:titanium> * 1008)
    .outputs(PALeggins)
    .buildAndRegister();

// --- Power Armor Boots 
assembly_line.recipeBuilder()
    .duration(1600).EUt(130000)
    .inputs(<enderio:item_end_steel_boots>)
    .inputs(ReinfIridiumAlloy * 4)
    .inputs(<ore:circuitUltimate> * 2)
    .inputs(Wiring * 8)
    .fluidInputs(<liquid:soldering_alloy> * 720)
    .fluidInputs(<liquid:titanium> * 576)
    .outputs(PABoots)
    .buildAndRegister();

// --- Power Armor Fist 
assembly_line.recipeBuilder()
    .duration(1600).EUt(130000)
    .inputs(<ore:blockAluminoSilicateWool>)
    .inputs(ReinfIridiumAlloy * 2)
    .inputs(<ore:circuitUltimate> * 2)
    .inputs(Wiring * 4)
    .fluidInputs(<liquid:soldering_alloy> * 576)
    .fluidInputs(<liquid:titanium> * 288)
    .outputs(PAFist)
    .buildAndRegister();

// --- Solenoid 
assembly_line.recipeBuilder()
    .duration(600).EUt(30720)
    .inputs(<ore:stickLongNeodymiumMagnetic> * 4)
    .inputs(<ore:wireFineLumium> * 64)
    .inputs(<ore:wireFineLumium> * 64)
    .inputs(<ore:wireFineLumium> * 64)
    .inputs(<ore:wireFineLumium> * 64)
    .inputs(Wiring * 2)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(Solenoid)
    .buildAndRegister();

// --- Servo
assembly_line.recipeBuilder()
    .duration(600).EUt(30720)
    .inputs(LuVPiston * 2)
    .inputs(Solenoid)
    .inputs(Wiring * 4)
    .inputs(<ore:itemEndSteelMachineChassi>)
    .fluidInputs(<liquid:soldering_alloy> * 144)
    .outputs(ServoMotor)
    .buildAndRegister();

// --- Glider Wing
assembly_line.recipeBuilder()
    .duration(600).EUt(30720)
    .inputs(<ore:sheetTitaniumIridium> * 16)
    .inputs(<ore:sheetTitaniumIridium> * 16)
    .inputs(<ore:screwDuranium> * 64)
    .inputs(<ore:stickDuranium> * 48)
    .fluidInputs(<liquid:soldering_alloy> * 2880)
    .fluidInputs(<liquid:polytetrafluoroethylene> * 1440)
    .outputs(GliderWing)
    .buildAndRegister();

// --- Force Field Emitter
assembly_line.recipeBuilder()
    .duration(600).EUt(30720)
    .inputs(<ore:plateHssg> * 4)
    .inputs(LuVFieldGen)
    .inputs(<ore:circuitUltimate> * 2)
    .inputs(<ore:wireFineLumium> * 64)
    .inputs(<ore:wireFineLumium> * 64)
    .fluidInputs(<liquid:soldering_alloy> * 576)
    .outputs(FieldEmitter)
    .buildAndRegister();

// --- Ion Thruster
assembly_line.recipeBuilder()
    .duration(600).EUt(30720)
    .inputs(FieldEmitter * 4)
    .inputs(<ore:frameGtHssg>)
    .inputs(ControlCircuit * 2)
    .inputs(<ore:plateHssg> * 8)
    .inputs(<ore:wireFineLumium> * 64)
    .inputs(<ore:wireFineLumium> * 64)
    .inputs(<ore:wireFineLumium> * 64)
    .inputs(<ore:wireFineLumium> * 64)
    .fluidInputs(<liquid:soldering_alloy> * 1440)
    .fluidInputs(<liquid:signalum> * 576)
    .outputs(IonThruster)
    .buildAndRegister();


// --- Circuit Assembler Recipes ---
var circuit_assembler = RecipeMap.getByName("circuit_assembler");

// --- Control Circuit
circuit_assembler.recipeBuilder()
    .duration(600).EUt(30720)
    .inputs(MCircuitBoard)
    .inputs(<ore:circuitMaster> * 2)
    .inputs(RAM * 16)
    .inputs(SMDDiode * 8)
    .inputs(NORGate * 4)
    .inputs(<ore:wireFineLumium> * 64)
    .fluidInputs(<liquid:soldering_alloy> * 288)
    .outputs(ControlCircuit)
    .buildAndRegister();

// --- Computer Chip
circuit_assembler.recipeBuilder()
    .duration(600).EUt(30720)
    .inputs(MCircuitBoard)
    .inputs(EConduit2 * 4)
    .inputs(Solenoid * 2)
    .inputs(Capacitor2 * 2)
    .inputs(ConduitProbe)
    .inputs(<ore:wireFineLumium> * 64)
    .fluidInputs(<liquid:soldering_alloy> * 288)
    .outputs(ComputerChip)
    .buildAndRegister();


// --- Forming Press Recipes ---
var forming_press = RecipeMap.getByName("forming_press");

// --- Iron Plating
forming_press.recipeBuilder()
    .duration(800).EUt(480)
    .inputs(<ore:plateTitaniumAluminide> * 4)
    .inputs(<ore:platePulsatingIron> * 4)
    .inputs(AdvAlloyPlate * 4)
    .outputs(IronPlating)
    .buildAndRegister();

// --- Diamond Plating
forming_press.recipeBuilder()
    .duration(800).EUt(480)
    .inputs(<ore:plateTitaniumIridium> * 4)
    .inputs(<ore:platePulsatingIron> * 4)
    .inputs(AdvAlloyPlate * 4)
    .outputs(DiamondPlating)
    .buildAndRegister();



// --- Crafting Recipes ---

// --- Parachute
recipes.addShaped(Parachute, [
[<ore:blockWoolWhite>, <ore:blockWoolWhite>, <ore:blockWoolWhite>], 
[<ore:string>, null, <ore:string>], 
[<ore:stickElectricalSteel>, null, <ore:stickElectricalSteel>]]);

// --- Magnet
recipes.addShaped(Magnet, [
[<ore:plateElectricalSteel>, <ore:plateSteelMagnetic>, <ore:plateElectricalSteel>], 
[<ore:platePulsatingIron>, <ore:cableGtDoubleEnergeticAlloy>, <ore:platePulsatingIron>], 
[<ore:platePulsatingIron>, <ore:cableGtDoubleEnergeticAlloy>, <ore:platePulsatingIron>]]);


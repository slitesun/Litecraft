// --- Created by Miha_77 ---




// --- Imports ---




// --- Variables ---
var Leather     = <ore:leather>;
var String      = <ore:string>;
var Elytra      = <minecraft:elytra>;

var SteelRod    = <ore:stickSteel>;
var SteelScrew  = <ore:screwSteel>;

var Screwdriver = <ore:craftingToolScrewdriver>;
var Hammer      = <ore:craftingToolHardHammer>;
 
var LGliderWing = <openglider:hang_glider_part>;
var RGliderWing = <openglider:hang_glider_part:1>;
var Scaffolding = <openglider:hang_glider_part:2>;

var Glider      = <openglider:hang_glider_basic>;
var AdvGlider   = <openglider:hang_glider_advanced>;




// --- Remove Recipe ---

// --- Glider Wing (Left)
recipes.remove(LGliderWing);

// --- Glider Wing (Right)
recipes.remove(RGliderWing);

// --- Scaffolding
recipes.remove(Scaffolding);

// --- Hand Glider
recipes.remove(Glider);

// --- Advanced Hand Glider
recipes.remove(AdvGlider);




// --- Adding Recipe ---

// --- Glider Wing (Left)
recipes.addShaped(LGliderWing, [
[String, SteelRod, Leather], 
[SteelRod, Leather, Leather], 
[Leather, Leather, Leather]]);

// --- Glider Wing (Right)
recipes.addShaped(RGliderWing, [
[Leather, SteelRod, String], 
[Leather, Leather, SteelRod], 
[Leather, Leather, Leather]]);

// --- Scaffolding
recipes.addShaped(Scaffolding, [
[null, SteelRod, null], 
[SteelRod, Hammer, SteelRod], 
[SteelRod, SteelRod, SteelRod]]);

// --- Hand Glider
recipes.addShaped(Glider, [
[SteelScrew, null, SteelScrew], 
[LGliderWing, Scaffolding, RGliderWing], 
[SteelScrew, Screwdriver, SteelScrew]]);

// --- Advanced Hand Glider
recipes.addShaped(AdvGlider, [
[SteelScrew, Elytra, SteelScrew], 
[LGliderWing, Glider, RGliderWing], 
[SteelScrew, Screwdriver, SteelScrew]]);

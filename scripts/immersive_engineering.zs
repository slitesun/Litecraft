// Created by Miha_77 and Moroka



// Imports

import crafttweaker.item.IItemStack;

import mods.thermalexpansion.InductionSmelter;



// Variables

var grout = <tconstruct:soil>;
var slag = <thermalfoundation:material:864>;
var hammer = <immersiveengineering:tool>;
var bottle_iron_berry_juice = <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ironberryjuice", Amount: 1000}});

var plate_copper    = <immersiveengineering:metal:30>;
var plate_aluminium = <immersiveengineering:metal:31>;
var plate_lead      = <immersiveengineering:metal:32>;
var plate_silver    = <immersiveengineering:metal:33>;
var plate_nickel    = <immersiveengineering:metal:34>;
var plate_uranium   = <immersiveengineering:metal:35>;
var plate_constatan = <immersiveengineering:metal:36>;
var plate_electrum  = <immersiveengineering:metal:37>;
var plate_steel     = <immersiveengineering:metal:38>;
var plate_iron      = <immersiveengineering:metal:39>;
var plate_gold      = <immersiveengineering:metal:40>;

val array_plate = [
  plate_copper, plate_aluminium, plate_lead, plate_silver, plate_nickel, plate_uranium, plate_constatan, plate_electrum, plate_steel, plate_gold, plate_iron
] as IItemStack[];



// Remove recipe

// HOP Graphite
furnace.remove(<immersiveengineering:material:19>);

for e in array_plate {
  recipes.remove(e);
}

recipes.addShaped(plate_copper, [[<ore:ingotCopper>], [<ore:ingotCopper>], [hammer]]);
recipes.addShaped(plate_aluminium, [[<ore:ingotAluminium>], [<ore:ingotAluminium>], [hammer]]);
recipes.addShaped(plate_lead, [[<ore:ingotLead>], [<ore:ingotLead>], [hammer]]);
recipes.addShaped(plate_silver, [[<ore:ingotSilver>], [<ore:ingotSilver>], [hammer]]);
recipes.addShaped(plate_nickel, [[<ore:ingotNickel>], [<ore:ingotNickel>], [hammer]]);
recipes.addShaped(plate_uranium, [[<ore:ingotUranium>], [<ore:ingotUranium>], [hammer]]);
recipes.addShaped(plate_constatan, [[<ore:ingotConstantan>], [<ore:ingotConstantan>], [hammer]]);
recipes.addShaped(plate_electrum, [[<ore:ingotElectrum>], [<ore:ingotElectrum>], [hammer]]);
recipes.addShaped(plate_steel, [[<ore:ingotSteel>], [<ore:ingotSteel>], [hammer]]);
recipes.addShaped(plate_gold, [[<ore:ingotGold>], [<ore:ingotGold>], [hammer]]);
recipes.addShaped(plate_iron, [[<ore:ingotIron>], [<ore:ingotIron>], [hammer]]);

// Coke-oven remake
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShapeless(<immersiveengineering:stone_decoration> * 3, [grout, <minecraft:brick>, grout, <minecraft:brick>, bottle_iron_berry_juice.transformReplace(<minecraft:glass_bottle>), <minecraft:brick>, grout, <minecraft:brick>, grout]);

// Blast-bricks remake
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShapeless(<immersiveengineering:stone_decoration:1> * 3, [<ore:ingotBrick>, <ore:ingotBrickSeared>, <ore:ingotBrick>, grout, bottle_iron_berry_juice.transformReplace(<minecraft:glass_bottle>), grout, <ore:ingotBrick>, <ore:ingotBrickSeared>, <ore:ingotBrick>]);

// Graphite processing
InductionSmelter.addRecipe(<immersiveengineering:material:19>, <minecraft:sand>, <immersiveengineering:material:18>, 4000, slag, 25);

// Hammer
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped(<immersiveengineering:tool>, [[<ore:string>, <tconstruct:hammer_head>.withTag({Material: "iron"})], [<tconstruct:tough_tool_rod>.withTag({Material: "wood"}), <ore:string>]]);

// Wire cutter
recipes.remove(<immersiveengineering:tool:1>);
recipes.addShaped(<immersiveengineering:tool:1>, [[null, <tconstruct:knife_blade>.withTag({Material: "iron"}), null], [<tconstruct:knife_blade>.withTag({Material: "iron"}), <ore:plateIron>, <minecraft:stick>], [null, <minecraft:stick>, null]]);

//Grout remake
recipes.remove(<tconstruct:soil>);
recipes.addShaped(<tconstruct:soil> * 8, [[<ore:gravel>, <minecraft:clay>, <ore:gravel>], [<ore:sand>, <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ironberryjuice", Amount: 1000}}), <ore:sand>], [<ore:gravel>, <minecraft:clay>, <ore:gravel>]]);

//Rebalance ore processing
mods.tconstruct.Melting.removeRecipe(<liquid:aluminum>, <modernmetals:aluminum_ore>);
//mods.tconstruct.Melting.addRecipe(<liquid:aluminum> * 144, <modernmetals:aluminum_ore>, temp);

mods.tconstruct.Melting.removeRecipe(<liquid:chromium>, <modernmetals:chromium_ore>);
//mods.tconstruct.Melting.addRecipe(<liquid:chromium> * 144, <modernmetals:chromium_ore>, temp);

mods.tconstruct.Melting.removeRecipe(<liquid:iridium>, <modernmetals:iridium_ore>);
//mods.tconstruct.Melting.addRecipe(<liquid:iridium> * 144, <modernmetals:iridium_ore>, temp);

mods.tconstruct.Melting.removeRecipe(<liquid:titanium>, <modernmetals:titanium_ore>);
//mods.tconstruct.Melting.addRecipe(<liquid:titanium> * 144, <modernmetals:titanium_ore>, temp);

mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:iron_ore>);
mods.tconstruct.Melting.addRecipe(<liquid:iron> * 144, <minecraft:iron_ore>);

mods.tconstruct.Melting.removeRecipe(<liquid:gold>, <minecraft:gold_ore>);
mods.tconstruct.Melting.addRecipe(<liquid:gold> * 144, <minecraft:gold_ore>);

mods.tconstruct.Melting.removeRecipe(<liquid:copper>, <basemetals:copper_ore>);
mods.tconstruct.Melting.addRecipe(<liquid:copper> * 144, <basemetals:copper_ore>);

mods.tconstruct.Melting.removeRecipe(<liquid:lead>, <basemetals:lead_ore>);
mods.tconstruct.Melting.addRecipe(<liquid:lead> * 144, <basemetals:lead_ore>);

mods.tconstruct.Melting.removeRecipe(<liquid:nickel>, <basemetals:nickel_ore>);
mods.tconstruct.Melting.addRecipe(<liquid:nickel> * 144, <basemetals:nickel_ore>);

mods.tconstruct.Melting.removeRecipe(<liquid:platinum>, <basemetals:platinum_ore>);
mods.tconstruct.Melting.addRecipe(<liquid:platinum> * 144, <basemetals:platinum_ore>);

mods.tconstruct.Melting.removeRecipe(<liquid:silver>, <basemetals:silver_ore>);
mods.tconstruct.Melting.addRecipe(<liquid:silver> * 144, <basemetals:silver_ore>);

mods.tconstruct.Melting.removeRecipe(<liquid:tin>, <basemetals:tin_ore>);
mods.tconstruct.Melting.addRecipe(<liquid:tin> * 144, <basemetals:tin_ore>);

mods.tconstruct.Melting.removeRecipe(<liquid:manganese>, <modernmetals:manganese_ore>);
mods.tconstruct.Melting.addRecipe(<liquid:manganese> * 144, <modernmetals:manganese_ore>);

mods.tconstruct.Melting.removeRecipe(<liquid:plutonium>, <modernmetals:plutonium_ore>);
mods.tconstruct.Melting.addRecipe(<liquid:plutonium> * 144, <modernmetals:plutonium_ore>);

mods.tconstruct.Melting.removeRecipe(<liquid:uranium>, <modernmetals:uranium_ore>);
mods.tconstruct.Melting.addRecipe(<liquid:uranium> * 144, <modernmetals:uranium_ore>);

//Ardite ore
mods.tconstruct.Melting.removeRecipe(<liquid:ardite>, <tconstruct:ore:1>);
mods.tconstruct.Melting.addRecipe(<liquid:ardite> * 144, <tconstruct:ore:1>);

//Cobalt ore
mods.tconstruct.Melting.removeRecipe(<liquid:cobalt>, <tconstruct:ore>);
mods.tconstruct.Melting.addRecipe(<liquid:cobalt> * 144, <tconstruct:ore>);


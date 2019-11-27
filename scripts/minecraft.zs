// --- Created by Miha_77 ---




// --- Imports ---
import crafttweaker.item.IItemStack;

import mods.tconstruct.Melting;
import mods.tconstruct.Casting;
import mods.gregtech.recipe.RecipeMap;
import mods.jei.JEI;




// --- Variables ---
val File = <ore:craftingToolFile>;
val Hammer = <ore:craftingToolHardHammer>;

val mold_block  = <gregtech:meta_item_1:32308>;

val tools = [
  <minecraft:wooden_pickaxe>, <minecraft:stone_pickaxe>, <minecraft:iron_pickaxe>, <minecraft:golden_pickaxe>, <minecraft:diamond_pickaxe>, 
  <minecraft:wooden_sword>  , <minecraft:stone_sword>  , <minecraft:iron_sword>  , <minecraft:golden_sword>  , <minecraft:diamond_sword>  , 
  <minecraft:wooden_axe>    , <minecraft:stone_axe>    , <minecraft:iron_axe>    , <minecraft:golden_axe>    , <minecraft:diamond_axe>    , 
  <minecraft:wooden_shovel> , <minecraft:stone_shovel> , <minecraft:iron_shovel> , <minecraft:golden_shovel> , <minecraft:diamond_shovel> , 
  <minecraft:wooden_hoe>    , <minecraft:stone_hoe>    , <minecraft:iron_hoe>    , <minecraft:golden_hoe>    , <minecraft:diamond_hoe>    ,
  <minecraft:bow>   ,

  <minecraft:iron_helmet>    , <minecraft:golden_helmet>    , <minecraft:diamond_helmet>    ,
  <minecraft:iron_chestplate>, <minecraft:golden_chestplate>, <minecraft:diamond_chestplate>,
  <minecraft:iron_leggings>  , <minecraft:golden_leggings>  , <minecraft:diamond_leggings>  ,
  <minecraft:iron_boots>     , <minecraft:golden_boots>     , <minecraft:diamond_boots>
] as IItemStack[];


// --- Remove Recipe ---

for e in tools {
  JEI.removeAndHide(e);
}

// --- Bread
furnace.remove(<minecraft:bread>);
// -
recipes.remove(<minecraft:bread>);

// --- Shears
recipes.remove(<minecraft:shears>);

// --- Glass
furnace.remove(<minecraft:glass>);



// --- Adding Recipe ---

// --- Shears
recipes.addShaped(<minecraft:shears>, [
[Hammer, <ore:plateIron>],
[<ore:plateIron>, File]]);

// --- Glass
furnace.addRecipe(<minecraft:glass>, <tconstruct:clear_glass>);

// --- Bread
furnace.addRecipe(<minecraft:bread>, <ore:foodDough>);



// --- Alloy Smelter Recipes ---
val alloy_smelter = RecipeMap.getByName("alloy_smelter");

// --- Glass
alloy_smelter.recipeBuilder()
    .duration(200).EUt(16)
    .inputs(<ore:dustGlass>)
    .notConsumable(mold_block)
    .outputs(<minecraft:glass>)
    .buildAndRegister();


// --- Arc Furnace Recipes --- 
val arc_furnace = RecipeMap.getByName("arc_furnace");

// --- Glass
arc_furnace.recipeBuilder()
    .duration(200).EUt(8)
    .inputs(<ore:sand>)
    .outputs(<minecraft:glass>)
    .buildAndRegister();


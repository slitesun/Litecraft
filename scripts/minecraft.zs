// --- Created by Miha_77 ---




// --- Imports ---
import crafttweaker.item.IItemStack;




// --- Variables ---

val tools = [
  <minecraft:wooden_pickaxe>, <minecraft:stone_pickaxe>, <minecraft:iron_pickaxe>, <minecraft:golden_pickaxe>, <minecraft:diamond_pickaxe>, 
  <minecraft:wooden_sword>  , <minecraft:stone_sword>  , <minecraft:iron_sword>  , <minecraft:golden_sword>  , <minecraft:diamond_sword>, 
  <minecraft:wooden_axe>    , <minecraft:stone_axe>    , <minecraft:iron_axe>    , <minecraft:golden_axe>    , <minecraft:diamond_axe>, 
  <minecraft:wooden_shovel> , <minecraft:stone_shovel> , <minecraft:iron_shovel> , <minecraft:golden_shovel> , <minecraft:diamond_shovel>, 
  <minecraft:bow>
] as IItemStack[];


// --- Remove Recipe ---

for e in tools {
 recipes.remove(e); 
}

// --- Bread
furnace.remove(<minecraft:bread>);
// -
recipes.remove(<minecraft:bread>);



// --- Adding Recipe ---

// --- Bread
furnace.addRecipe(<minecraft:bread>, <ore:foodDough>);

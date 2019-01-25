import crafttweaker.item.IItemStack;

val tools = [
  <minecraft:wooden_pickaxe>, <minecraft:stone_pickaxe>, <minecraft:iron_pickaxe>, <minecraft:golden_pickaxe>, <minecraft:diamond_pickaxe>, 
  <minecraft:wooden_sword>, <minecraft:stone_sword>, <minecraft:iron_sword>, <minecraft:golden_sword>, <minecraft:diamond_sword>, 
  <minecraft:wooden_axe>, <minecraft:stone_axe>, <minecraft:iron_axe>, <minecraft:golden_axe>, <minecraft:diamond_axe>, 
  <minecraft:wooden_shovel>, <minecraft:stone_shovel>, <minecraft:iron_shovel>, <minecraft:golden_shovel>, <minecraft:diamond_shovel>, 
  <minecraft:bow>, 
  <enderio:item_dark_steel_pickaxe>, <enderio:item_dark_steel_axe>, <enderio:item_dark_steel_bow>, <enderio:item_dark_steel_sword>
] as IItemStack[];

for e in tools {
 recipes.remove(e); 
}

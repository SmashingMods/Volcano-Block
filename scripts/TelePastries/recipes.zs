import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.functions.toString;
import scripts.functions.getOreDict;
import scripts.functions.getItem;
import scripts.functions.getItemAny;
import scripts.functions.getItemMeta;
import scripts.functions.getItemString;
import scripts.functions.getArrayString;
import scripts.functions.getItemsFromMod;
import scripts.functions.getFluid;
import scripts.functions.getBucket;
import scripts.functions.getBucketDefault;
import scripts.functions.findFirstItemFromMod;

import scripts.functions.disable;

disable(<telepastries:nether_cake>);

<telepastries:overworld_cake>.displayName = "Volcano Cake";

var mapRecipe as IIngredient[][][][IItemStack] = {
    <telepastries:end_cake> : [
        [
            [<alchemistry:ingot:118>,<alchemistry:ingot:118>,<alchemistry:ingot:118>],
            [<alchemistry:ingot:118>,<vanillafoodpantry:bakery_carton:1>,<alchemistry:ingot:118>],
            [<alchemistry:ingot:118>,<alchemistry:ingot:118>,<alchemistry:ingot:118>]
        ]
    ]
};

for output, listRecipe in mapRecipe {
    var index as int = 0;
    recipes.remove(output);
    for recipe in listRecipe {
        var name as string = toString(output)+"_"+index;
        recipes.addShaped(name, output, recipe);
        index += 1;
    }
}
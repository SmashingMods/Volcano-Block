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

var mapRecipe as IIngredient[][][][IItemStack] = {
    <bdsandm:wood_crate> : [
        [
            [<ore:logWood>,<ore:plankWood>,<ore:logWood>],
            [<ore:plankWood>,<minecraft:chest>,<ore:plankWood>],
            [<ore:logWood>,<ore:plankWood>,<ore:logWood>]
        ]
    ],
    <bdsandm:upgrade:6> : [
        [
            [<ore:cobblestone>],
            [<minecraft:item_frame>],
            [<minecraft:lava_bucket>]
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

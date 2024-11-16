data:extend({
    -- Recipe ::DimensionalPlate
    {
        type = "recipe",
        name = "DimensionalPlate",
        energy_required = 1,
        category = "DimensionalSmelting",
        enabled = false,
        ingredients =
        {
            {type = "item", name = "DimensionalOre", amount = 2}
        },
        results =
        {
            {type = "item", name = "DimensionalPlate", amount = 1}
        },
    },

    -- Item :: DimensionalPlate
    {
        type = "item",
        name = "DimensionalPlate",
        icon = "__MF_Base__/graphics/items/DimensionalPlate.png",
        icon_size = 64,
        subgroup = "MFIntermediate",
        order = "b",
        stack_size = 1000,
    },
})
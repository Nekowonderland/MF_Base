data:extend({
    -- Recipe ::DimensionalSample
    {
        type = "recipe",
        name = "DimensionalSample",
        energy_required = 1,
        ingredients =
        {
            {type = "item", name = "DimensionalOre", amount = 1}
        },
        results =
        {
            {type = "item", name = "DimensionalSample", amount = 3}
        },
    },

    -- Item :: DimensionalSample
    {
        type = "tool",
        name = "DimensionalSample",
        durability = 1,
        infinite = false,
        icon = "__MF_Base__/graphics/items/DimensionalSampleI.png",
        icon_size = 64,
        subgroup = "MFIntermediate",
        order = "a",
        stack_size = 1000,
    },
})
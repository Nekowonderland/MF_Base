data:extend({
    -- Recipe :: MachineFrame
    {
        type = "recipe",
        name = "MachineFrame",
        energy_required = 1,
        ingredients =
        {
            {type = "item", name = "DimensionalOre", amount = 7}
        },
        results =
        {
            {type = "item", name = "MachineFrame", amount = 1}
        },
    },

    -- Recipe :: MachineFrame2
    {
        type = "recipe",
        name = "MachineFrame2",
        energy_required = 1.5,
        enabled = false,
        ingredients =
        {
            {type = "item", name = "MachineFrame", amount = 2},
            {type = "item", name = "DimensionalPlate", amount = 6}
        },
        results =
        {
            {type = "item", name = "MachineFrame2", amount = 1}
        },
    },

    -- Recipe :: MachineFrame3
    {
        type = "recipe",
        name = "MachineFrame3",
        energy_required = 3,
        enabled = false,
        category = "DimensionalCrystallizaton",
        ingredients =
        {
            {type = "item", name = "MachineFrame2", amount = 1},
            {type = "item", name = "DimensionalCrystal", amount = 1}
        },
        results =
        {
            {type = "item", name = "MachineFrame3", amount = 1}
        },
    },

    -- Item :: MachineFrame
    {
        type = "item",
        name = "MachineFrame",
        icon = "__MF_Base__/graphics/items/MachineFrame.png",
        icon_size = 64,
        subgroup = "MFFrame",
        order = "a",
        stack_size = 150,
    },

    -- Item :: MachineFrame2
    {
        type = "item",
        name = "MachineFrame2",
        icon = "__MF_Base__/graphics/items/MachineFrame2.png",
        icon_size = 64,
        subgroup = "MFFrame",
        order = "b",
        stack_size = 150,
    },

    -- Item :: MachineFrame3
    {
        type = "item",
        name = "MachineFrame3",
        icon = "__MF_Base__/graphics/items/MachineFrame3.png",
        icon_size = 64,
        subgroup = "MFFrame",
        order = "c",
        stack_size = 150,
    },
})
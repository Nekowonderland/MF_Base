data:extend({
    -- Technology :: DimensionalElectronic
    {
        type = "technology",
        name = "DimensionalElectronic",
        icon = "__MF_Base__/graphics/technologies/DimensionalElectronic.png",
        icon_size = 128,
        unit =
        {
        	count = 350,
        	time = 2,
        	ingredients = {{"DimensionalSample", 1}}
        },
        prerequisites = {"DimensionalOreSmelting"},
        effects =
        {
        	{type="unlock-recipe", recipe="DimensionalWire"},
        	{type="unlock-recipe", recipe="DimensionalCircuit"}
        },
    },

    -- Recipe :: DimensionalWire
    {
        type = "recipe",
        name = "DimensionalWire",
        energy_required = 1,
        enabled = false,
        ingredients =
        {
        	{type = "item", name = "DimensionalPlate", amount = 1}
        },
        results =
        {
            {type = "item", name = "DimensionalWire", amount = 1}
        },
    },

    -- Recipe :: DimensionalCircuit
    {
        type = "recipe",
        name = "DimensionalCircuit",
        energy_required = 2,
        enabled = false,
        ingredients =
        {
        	{type = "item", name = "DimensionalPlate", amount = 1},
        	{type = "item", name = "DimensionalWire", amount = 3}
        },
        results =
        {
            {type = "item", name = "DimensionalCircuit", amount = 1}
        },
    },

    -- Recipe :: CrystalizedCircuit
    {
        type = "recipe",
        name = "CrystalizedCircuit",
        energy_required = 3,
        enabled = false,
        ingredients =
        {
        	{type = "item", name = "DimensionalCircuit", amount = 4},
        	{type = "item", name = "DimensionalCrystal", amount = 1}
        },
        results =
        {
            {type = "item", name = "CrystalizedCircuit", amount = 5}
        }
    },

    -- Item :: DimensionalWire
    {
        type = "item",
        name = "DimensionalWire",
        icon = "__MF_Base__/graphics/items/DimensionalWire.png",
        icon_size = 64,
        subgroup = "MFElectronic",
        order = "a",
        stack_size = 500,
    },

    -- Item :: DimensionalCircuit
    {
        type = "item",
        name = "DimensionalCircuit",
        icon = "__MF_Base__/graphics/items/DimensionalCircuit.png",
        icon_size = 64,
        subgroup = "MFElectronic",
        order = "b",
        stack_size = 200,
    },

    -- Item :: CrystalizedCircuit
    {
        type = "item",
        name = "CrystalizedCircuit",
        icon = "__MF_Base__/graphics/items/CrystalizedCircuit.png",
        icon_size = 64,
        subgroup = "MFElectronic",
        order = "c",
        stack_size = 200,
    }
})
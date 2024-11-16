data:extend({
	-- Technology :: DimensionalCrystal
	{
		name = "DimensionalCrystal",
		type = "technology",
		icon = "__MF_Base__/graphics/items/DimensionalCrystal.png",
		icon_size = 256,
		unit =
		{
			count=1300,
			time=2,
			ingredients={{"DimensionalSample", 1}}
		},
		prerequisites = {"DimensionalOreSmelting"},
		effects =
		{
			{type="unlock-recipe", recipe="Crystallizer"},
			{type="unlock-recipe", recipe="DimensionalCrystal"},
			{type="unlock-recipe", recipe="MachineFrame3"},
			{type="unlock-recipe", recipe="CrystalizedCircuit"}
		},
	},

    -- Recipe :: DimensionalCrystal
	{
		type = "recipe",
		name = "DimensionalCrystal",
		energy_required = 60,
		enabled = false,
		category = "DimensionalCrystallizaton",
		ingredients =
		{
			{type="fluid", name="DimensionalFluid", amount=300}
		},
		results =
		{
		    {type = "item", name = "DimensionalCrystal", amount = 1}
		}
	},

	-- Item :: DimensionalCrystal
	{
		type = "tool",
		name = "DimensionalCrystal",
		icon = "__MF_Base__/graphics/items/DimensionalCrystal.png",
		icon_size = 256,
		subgroup = "MFIntermediate",
		durability = 1,
		infinite = false,
		order = "c",
		stack_size = 100,
	},
})
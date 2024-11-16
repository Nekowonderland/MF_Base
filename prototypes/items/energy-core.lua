data:extend({
	-- Technology :: EnergyCore
	{
		name = "EnergyCore",
		type = "technology",
		icon = "__MF_Base__/graphics/items/EnergyCore.png",
		icon_size = 256,
		unit =
		{
			count=10,
			time=30,
			ingredients={
				{"DimensionalSample", 100},
				{"DimensionalCrystal", 2}
			},
		},
		prerequisites = {"DimensionalCrystal"},
		effects = {{type="unlock-recipe", recipe="EnergyCore"}},
	},

	-- Recipe :: EnergyCore
	{
		type = "recipe",
		name = "EnergyCore",
		energy_required = 120,
		enabled = false,
		category = "DimensionalCrystallizaton",
		ingredients =
		{
			{type="item", name="CrystalizedCircuit", amount=10},
			{type="item", name="DimensionalCrystal", amount=1}
		},
		results = {{type="item", name="EnergyCore", amount=1}},
	},

	-- Item :: EnergyCore
	{
		type = "item",
		name = "EnergyCore",
		icon = "__MF_Base__/graphics/items/EnergyCore.png",
		icon_size = 256,
		fuel_category = "chemical",
		fuel_value = "250MJ",
		subgroup = "MFElectronic",
		order = "d",
		stack_size = 10,
	},
})

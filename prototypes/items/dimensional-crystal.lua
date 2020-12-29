-- Dimensional Crystal --

-- Item --
local dcI = {}
dcI.type = "tool"
dcI.name = "DimensionalCrystal"
dcI.icon = "__MF_Base__/graphics/items/DimensionalCrystal.png"
dcI.icon_size = 256
dcI.subgroup = "MFIntermediate"
dcI.durability = 1
dcI.infinite = false
dcI.order = "c"
dcI.stack_size = 100
data:extend{dcI}

-- Recipe --
local dcR = {}
dcR.type = "recipe"
dcR.name = "DimensionalCrystal"
dcR.energy_required = 60
dcR.enabled = false
dcR.category = "DimensionalCrystallizaton"
dcR.ingredients =
    {
		{type="fluid", name="DimensionalFluid", amount=300}
    }
dcR.result = "DimensionalCrystal"
data:extend{dcR}

-- Technologie --
local dcT = {}
dcT.name = "DimensionalCrystal"
dcT.type = "technology"
dcT.icon = "__MF_Base__/graphics/items/DimensionalCrystal.png"
dcT.icon_size = 256
dcT.unit = {
	count=1300,
	time=2,
	ingredients={
		{"DimensionalSample", 1}
	}
}
dcT.prerequisites = {"DimensionalOreSmelting"}
dcT.effects =
{
	{type="unlock-recipe", recipe="Crystallizer"},
	{type="unlock-recipe", recipe="DimensionalCrystal"},
	{type="unlock-recipe", recipe="MachineFrame3"},
	{type="unlock-recipe", recipe="CrystalizedCircuit"}
}
data:extend{dcT}
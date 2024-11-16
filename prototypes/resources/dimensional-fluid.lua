-- Imports

local resource_autoplace = require("resource-autoplace")

-- Initialize the core patch sets in a predictable order
resource_autoplace.initialize_patch_set("DimensionalFluid", true)

-- Add to Nauvis planet definition
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["DimensionalFluid"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["DimensionalFluid"] = {}

-- Resource --
data:extend({
    -- Item :: DimensionalFluid
    {
        name = "DimensionalFluid",
        type = "fluid",
        icon = "__MF_Base__/graphics/resources/DimensionalFluidI.png",
        icon_size = 64,
        default_temperature = 20,
        max_temperature = 100,
        base_color={151,0,147},
        flow_color={151,0,147},
        subgroup = "MFResources",
        order = "b",
    },

    -- Resource :: DimensionalFluid
    {
        name = "DimensionalFluid",
        type = "resource",
        icon = "__MF_Base__/graphics/resources/DimensionalFluidI.png",
        icon_size = 64,
        stages = table.deepcopy(data.raw.resource["crude-oil"].stages),
        -- stages["sheet"]["filename"] = "__MF_Base__/graphics/resources/DimensionalFluid.png",
        stage_counts = data.raw.resource["crude-oil"].stage_counts,
        map_color = {102/255, 0, 102/255},
        category = "basic-fluid",
        infinite = true,
        minimum = 60000,
        normal = 300000,
        infinite_depletion_amount = 10,
        resource_patch_search_radius = 9,
        collision_box = data.raw.resource["crude-oil"].collision_box,
        selection_box = data.raw.resource["crude-oil"].selection_box,
        minable =
        {
            mining_time = 1,
            results =
            {
                {
                    amount_max = 10,
                    amount_min = 10,
                    name = "DimensionalFluid",
                    probability = 1,
                    type = "fluid"
                }
            }
        },
        autoplace = resource_autoplace.resource_autoplace_settings
        {
              name = "DimensionalFluid",
              order = "b",
              base_density = 8.2,
              base_spots_per_km2 = 1.8,
              random_probability = 1/48,
              random_spot_size_minimum = 1,
              random_spot_size_maximum = 1,
              additional_richness = 220000,
              has_starting_area_placement = true,
              regular_rq_factor_multiplier = 1
        },
    },

    -- Autoplace :: DimensionalOre
    {
        type = "autoplace-control",
        category = "resource",
        name = "DimensionalFluid",
        localised_name = {"", "[entity=DimensionalFluid] ", {"entity-name.DimensionalFluid"}},
        richness = true,
    },

    -- Recipe :: DimensionalFluid to water
    {
        type = "recipe",
        name = "mfWater",
        energy_required = 0.3,
        enabled = false,
        category = "crafting-with-fluid",
        ingredients =
        {
            {type="fluid", name="DimensionalFluid", amount=1}
        },
        results = {{type="fluid", name="water", amount=10}},
    },
})

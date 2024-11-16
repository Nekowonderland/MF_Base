-- Imports

local resource_autoplace = require("resource-autoplace")
local sounds = require("__base__.prototypes.entity.sounds")

local stone_driving_sound =
{
  sound =
  {
    filename = "__base__/sound/driving/vehicle-surface-stone.ogg", volume = 0.8,
    advanced_volume_control = {fades = {fade_in = {curve_type = "cosine", from = {control = 0.5, volume_percentage = 0.0}, to = {1.5, 100.0 }}}}
  },
  fade_ticks = 6
}

-- Initialize the core patch sets in a predictable order
resource_autoplace.initialize_patch_set("DimensionalOre", true)

-- Add to Nauvis planet definition
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["DimensionalOre"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["DimensionalOre"] = {}

-- Resource --
data:extend({
    -- Item :: DimensionalOre
    {
        type = "item",
        name = "DimensionalOre",
        icon = "__MF_Base__/graphics/items/DimensionalOre.png",
        icon_size = 64,
        subgroup = "MFResources",
        order = "a",
        stack_size = 1000
    },

    -- Resource :: DimensionalOre
    {
        type = "resource",
        name = "DimensionalOre",
        flags = {"placeable-neutral"},
        order="b", -- Should be b "a" are trees "c" is oil
        tree_removal_probability = 1,
        tree_removal_max_distance = 32 * 32,
        walking_sound = sounds.ore,
        minable =
        {
              hardness = 0.9,
              mining_particle = "iron-ore-particle",
              mining_time = 2,
              result = "DimensionalOre"
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        icon = "__MF_Base__/graphics/resources/DimensionalOreI.png",
        icon_size = 256,
        stage_counts = {1500, 1200, 700, 600, 300},
        stages =
        {
            sheet =
            {
                filename = "__MF_Base__/graphics/resources/DimensionalOre.png",
                priority = "extra-high",
                size = 128,
                frame_count = 3,
                variation_count = 5,
                scale = 0.25
            }
        },
        map_color = {102/255, 0, 102/255},
        autoplace = resource_autoplace.resource_autoplace_settings
        {
          name = "DimensionalOre",
          order = "b",
          base_density = 10,
          has_starting_area_placement = true,
          regular_rq_factor_multiplier = 1.10,
          starting_rq_factor_multiplier = 1.5,
          candidate_spot_count = 22, -- To match 0.17.50 placement
        },
    },

    -- Autoplace :: DimensionalOre
    {
        type = "autoplace-control",
        category = "resource",
        name = "DimensionalOre",
        localised_name = {"", "[entity=DimensionalOre] ", {"entity-name.DimensionalOre"}},
        richness = true
    },

    -- Recipe :: DimensionalOre
    {
        type = "recipe",
        name = "DimensionalOre",
        energy_required = 1,
        ingredients =
        {
            {type="item", name="DimensionalSample", amount=3}
        },
        results =
        {
            {type="item", name="DimensionalOre", amount=1}
        }
    },

    -- Recipe :: Dimensional Ore to Stone Recipe
    {
        type = "recipe",
        name = "mfStone",
        enabled = false,
        energy_required = 0.3,
        ingredients =
        {
            {type="item", name="DimensionalOre", amount=1}
        },
        results =
        {
            {type="item", name="stone", amount=3}
        }
    },

    -- Technology :: DimensionalOre
    {
        name = "DimensionalOre",
        type = "technology",
        icon = "__MF_Base__/graphics/technologies/DimensionalOre.png",
        icon_size = 256,
        unit =
        {
            count=100,
            time=1,
            ingredients={{"DimensionalSample", 1}}
        },
        effects =
        {
            {type="unlock-recipe", recipe="mfStone"},
            {type="unlock-recipe", recipe="mfWater"}
        }
    },
})

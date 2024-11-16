data:extend({
    -- Technology :: DimensionalFurnace
    {
        name = "DimensionalOreSmelting",
        type = "technology",
        icon = "__MF_Base__/graphics/items/DimensionalFurnace.png",
        icon_size = 32,
        unit =
        {
            count=150,
            time=2,
            ingredients={{"DimensionalSample", 1}}
        },
        prerequisites = {"DimensionalOre"},
        effects =
        {
            {
                type="unlock-recipe",
                recipe="DimensionalFurnace"
            },
            {
                type="unlock-recipe",
                recipe="DimensionalPlate"
            },
            {
                type="unlock-recipe",
                recipe="MachineFrame2"
            }
        },
    },

    -- Recipe :: DimensionalFurnace
    {
        type = "recipe",
        name = "DimensionalFurnace",
        energy_required = 3,
        enabled = false,
        ingredients =
        {
            {type = "item", name = "MachineFrame", amount = 8}
        },
        results =
        {
            {type = "item", name = "DimensionalFurnace", amount = 1}
        },
    },

    -- Item ::DimensionalFurnace
    {
        type = "item",
        name = "DimensionalFurnace",
        icon = "__MF_Base__/graphics/items/DimensionalFurnace.png",
        icon_size = 32,
        place_result = "DimensionalFurnace",
        subgroup = "MFStructure",
        order = "b",
        stack_size = 20,
    },

    -- Furnace :: DimensionalFurnace
    {
        type = "furnace",
        name = "DimensionalFurnace",
        icon = "__MF_Base__/graphics/items/DimensionalFurnace.png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.5, result = "DimensionalFurnace"},
        max_health = 350,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        resistances = {{type="fire",percent=80}},
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        module_specification = {module_slots=2,module_info_icon_shift={0, 0.8}},
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
        crafting_categories = {"DimensionalSmelting", "smelting"},
        result_inventory_size = 1,
        crafting_speed = 2,
        energy_usage = "180kW",
        source_inventory_size = 1,
        energy_source = {type="electric",usage_priority="secondary-input",emissions_per_minute={pollution = 1}},
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        fast_replaceable_group = nil,
        working_sound =
        {
            sound =
            {
                filename = "__base__/sound/electric-furnace.ogg",
                volume = 0.7
            },
            apparent_volume = 1.5
        },
        animation =
        {
            layers =
            {
                {
                     filename = "__MF_Base__/graphics/entities/DimensionalFurnace.png",
                     priority = "high",
                     width = 239,
                     height = 219,
                     frame_count = 1,
                     shift = util.by_pixel(0.75, 5.75),
                     scale = 0.5
                },
                {
                     filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-shadow.png",
                     priority = "high",
                     width = 227,
                     height = 171,
                     frame_count = 1,
                     draw_as_shadow = true,
                     shift = util.by_pixel(11.25, 7.75),
                     scale = 0.5
                }
            }
        },
        working_visualisations =
        {
            {
                animation =
                {
                     filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-heater.png",
                     priority = "high",
                     width = 60,
                     height = 56,
                     frame_count = 12,
                     animation_speed = 0.5,
                     shift = util.by_pixel(1.75, 32.75),
                     scale = 0.5
                },
                light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}, color = {r = 1.0, g = 1.0, b = 1.0}}
            },
            {
                animation =
                {
                     filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-1.png",
                     priority = "high",
                     width = 37,
                     height = 25,
                     frame_count = 4,
                     animation_speed = 0.5,
                     shift = util.by_pixel(-20.5, -18.5),
                     scale = 0.5
                }
            },
            {
                animation =
                {
                     filename = "__base__/graphics/entity/electric-furnace/hr-electric-furnace-propeller-2.png",
                     priority = "high",
                     width = 23,
                     height = 15,
                     frame_count = 4,
                     animation_speed = 0.5,
                     shift = util.by_pixel(3.5, -38),
                     scale = 0.5
                }
            },
        },
    },
})

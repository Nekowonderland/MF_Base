data:extend({
    -- Recipe :: Crystallizer
    {
        type = "recipe",
        name = "Crystallizer",
        energy_required = 5,
        enabled = false,
        ingredients =
        {
            {type = "item", name = "MachineFrame2", amount = 8},
            {type = "item", name = "DimensionalCircuit", amount = 35},
        },
        results =
        {
            {type = "item", name = "Crystallizer", amount = 1}
        },
    },

    -- Item ::Crystallizer
    {
        type = "item",
        name = "Crystallizer",
        icon = "__MF_Base__/graphics/items/Crystallizer.png",
        icon_size = 32,
        place_result = "Crystallizer",
        subgroup = "MFStructure",
        order = "c",
        stack_size = 5,
    },

    -- Assembling-Machine :: Crystallizer
    {
        type = "assembling-machine",
        name = "Crystallizer",
        icon = "__MF_Base__/graphics/items/Crystallizer.png",
        icon_size = 32,
        flags = {"placeable-neutral", "placeable-player", "player-creation"},
        minable = {mining_time = 0.2, result = "Crystallizer"},
        max_health = 350,
        dying_explosion = "medium-explosion",
        corpse = "medium-remnants",
        alert_icon_shift = util.by_pixel(-3, -12),
        resistances =
        {
            {
                type = "fire",
                percent = 70
            }
        },
        fluid_boxes_off_when_no_fluid_recipe = true,
        fluid_boxes =
        {
            {
                production_type = "input",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 1000,
                base_area = 10,
                base_level = -1,
                pipe_connections = {{ flow_direction="input", direction = defines.direction.north, position = {0, -1.199} }},
                secondary_draw_orders = { north = -1 }
            },
            {
                production_type = "output",
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                volume = 1000,
                base_area = 10,
                base_level = 1,
                pipe_connections = {{ flow_direction="output", direction = defines.direction.north, position = {0, 1.199} }},
                secondary_draw_orders = { north = -1 }
            }
        },
        collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        animation =
        {
            layers =
            {
                {
                    filename = "__MF_Base__/graphics/entities/Crystallizer.png",
                    priority = "high",
                    width = 214,
                    height = 218,
                    frame_count = 32,
                    line_length = 8,
                    shift = util.by_pixel(0, 4),
                    scale = 0.5
                },
                {
                    filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-shadow.png",
                    priority = "high",
                    width = 196,
                    height = 163,
                    frame_count = 32,
                    line_length = 8,
                    draw_as_shadow = true,
                    shift = util.by_pixel(12, 4.75),
                    scale = 0.5
                }
            }
        },
        open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
        close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
            sound =
            {
                {
                    filename = "__base__/sound/assembling-machine-t2-1.ogg",
                    volume = 0.8
                },
                {
                    filename = "__base__/sound/assembling-machine-t2-2.ogg",
                    volume = 0.8
                }
            },
            idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
            apparent_volume = 1.5
        },
        crafting_categories = {"DimensionalCrystallizaton"},
        crafting_speed = 1,
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = {pollution = 3},
        },
        energy_usage = "800kW",
        module_specification =
        {
             module_slots = 2
        },
        allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    }
})
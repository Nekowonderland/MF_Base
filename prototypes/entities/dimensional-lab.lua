-- Dimensional Laboratory --

-- Prototype --
local dlP = table.deepcopy(data.raw.lab.lab)
dlP.name = "DimensionalLab"
dlP.minable = {mining_time = 0.2, result = "DimensionalLab"}
dlP.order = "c"
dlP.on_animation =
    {
      layers =
      {
        {
            filename = "__MF_Base__/graphics/entities/DimensionalLab.png",
            width = 194,
            height = 174,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
        },
        {
            filename = "__base__/graphics/entity/lab/lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5
        },
        {
            filename = "__base__/graphics/entity/lab/lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(13, 11),
            scale = 0.5,
            draw_as_shadow = true
        }
      }
    }
dlP.off_animation =
    {
      layers =
      {
          {
              filename = "__MF_Base__/graphics/entities/DimensionalLab.png",
              width = 194,
              height = 174,
              frame_count = 1,
              shift = util.by_pixel(0, 1.5),
              scale = 0.5
          },
          {
              filename = "__base__/graphics/entity/lab/lab-integration.png",
              width = 242,
              height = 162,
              frame_count = 1,
              shift = util.by_pixel(0, 15.5),
              scale = 0.5
          },
          {
              filename = "__base__/graphics/entity/lab/lab-shadow.png",
              width = 242,
              height = 136,
              frame_count = 1,
              shift = util.by_pixel(13, 11),
              draw_as_shadow = true,
              scale = 0.5
          }
      }
  }
  dlP.inputs = {"DimensionalSample", "DimensionalCrystal"}

  data:extend({
      -- Lab :: DimensionalLab
      dlP,

      -- Recipe :: DimensionalLab
      {
          type = "recipe",
          name = "DimensionalLab",
          energy_required = 5,
          ingredients =
          {
              {type = "item", name = "MachineFrame", amount =5 }
          },
          results =
          {
              {type = "item", name = "DimensionalLab", amount = 1}
          },
      },

      -- Item :: DimensionalLab
      {
          type = "item",
          name = "DimensionalLab",
          icon = "__MF_Base__/graphics/items/DimensionalLab.png",
          icon_size = 32,
          subgroup = "MFStructure",
          order = "a",
          place_result = "DimensionalLab",
          stack_size = 10,
      },
  })
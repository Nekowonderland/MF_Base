-- Add MF_Base resources to planet map generation settings

local mf_resources = {"DimensionalOre", "DimensionalFluid"}

-- Add to Nauvis (the base starting planet)
local nauvis = data.raw["planet"] and data.raw["planet"]["nauvis"]
if nauvis and nauvis.map_gen_settings then
  local map_gen = nauvis.map_gen_settings

  -- Register in autoplace_controls so the sliders appear in the map editor
  if map_gen.autoplace_controls then
    for _, name in pairs(mf_resources) do
      if not map_gen.autoplace_controls[name] then
        map_gen.autoplace_controls[name] = {}
      end
    end
  end

  -- Register in autoplace_settings.entity.settings so the resource spawns on the planet
  if map_gen.autoplace_settings and map_gen.autoplace_settings["entity"] then
    local entity_settings = map_gen.autoplace_settings["entity"].settings
    if entity_settings then
      for _, name in pairs(mf_resources) do
        if not entity_settings[name] then
          entity_settings[name] = {}
        end
      end
    end
  end
end

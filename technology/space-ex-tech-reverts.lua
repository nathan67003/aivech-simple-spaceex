function replace_tech_prerequisites(tech, prereq_names) 
  if tech then 
    tech.prerequisites = {}
    for _,name in pairs(prereq_names) do
      if data.raw.technology[name] then
        table.insert(tech.prerequisites, name)
      end
    end
  end
end

function replace_tech_cost(tech, normal_unit, expensive_unit) 
  if tech then
    if not tech.normal then
      tech.unit = normal_unit
    else
      tech.normal.unit = normal_unit
      tech.expensive.unit = expensive_unit
    end
  end
end

function create_tech_unit(count, time, ingredients)
  local unit = {}
  unit.count = count
  unit.time = time
  unit.ingredients = {}
  for _, item in pairs(ingredients) do
    table.insert(unit.ingredients, {item,1})
  end
  return unit
end

local chemical_science_ingredients = {"automation-science-pack","logistic-science-pack","chemical-science-pack"}
local utility_science_ingredients = {"automation-science-pack","logistic-science-pack","chemical-science-pack","utility-science-pack"}

if not settings.startup["aivech-ssx-equipment-research"].value then
  local roboport2 = data.raw.technology["personal-roboport-mk2-equipment"]
  replace_tech_prerequisites(roboport2, {
                                         "personal-roboport-equipment",
                                         "utility-science-pack"
                                        })  
  replace_tech_cost(roboport2, create_tech_unit(250,30, utility_science_ingredients), nil)
  
  local battery2 = data.raw.technology["battery-mk2-equipment"]
  replace_tech_prerequisites(battery2, {"battery-equipment", "low-density-structure", "power-armor"})
  replace_tech_cost(battery2, create_tech_unit(100,30, chemical_science_ingredients),nil)
  
  data:extend({roboport2,battery2})
end

  

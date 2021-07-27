function remove_tech_prerequisites(tech_name)
  local tech = data.raw.technology[tech_name]
  if tech then
    tech.prerequisites = {}
  end
  return tech
end

function replace_tech_prerequisites(tech_name, prereq_names) 
  local tech = data.raw.technology[tech_name]
  if tech then 
    tech.prerequisites = {}
    for _,name in pairs(prereq_names) do
      if data.raw.technology[name] then
        table.insert(tech.prerequisites, name)
      end
    end
  end
  return tech
end

if not settings.startup["aivech-ssx-gate-electricity"].value then
  local auto1 = remove_tech_prerequisites("automation")
  local mil1 = remove_tech_prerequisites("military")
  local turrets = remove_tech_prerequisites("gun-turret")
  local sci_green = remove_tech_prerequisites("logistic-science-pack")
  local steel = remove_tech_prerequisites("steel")
  local logi1 = remove_tech_prerequisites("logistics")
  local light = remove_tech_prerequisites("optics")
  
  data.raw.technology["electric-lab"].hidden = true
  data.raw.technology["electric-mining"].hidden = true
  data.raw.technology["steam-power"].hidden = true
  data.raw.technology["basic-logistics"].hidden = true
  
  data:extend({
    auto1,mil1,turrets,sci_green,steel,logi1,light
  })
end

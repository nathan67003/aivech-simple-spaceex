-- landfill
local landfill = data.raw.recipe["landfill"]
landfill.normal = nil
landfill.expensive = nil
landfill.

-- modules
local modules = {}
local ranks = {"","-2","-3"}
for _, type in ipairs({"productivity", "speed", "effectivity"}) do
  for rank, suffix in ipairs(ranks) do 
    log(type.."-module"..suffix)
    local mod = data.raw.recipe[type.."-module"..suffix]
    mod.normal = nil
    mod.expensive = nil
    mod.result = type.."-module"..suffix
    mod.enabled = false
    if rank == 1 then
      mod.ingredients = {{"advanced-circuit", 5},{"electronic-circuit", 5}}
      mod.energy_required = 15
    elseif rank == 2 then
      mod.ingredients = 
      {
        {type.."-module", 4},
        {"advanced-circuit", 5},
        {"processing-unit", 5}
      }
      mod.energy_required = 30
    else
      mod.ingredients = 
      {
        {type.."-module-2", 5},
        {"advanced-circuit", 5},
        {"processing-unit", 5}
      }
      mod.energy_required = 60
    end
    modules[type..rank] = mod
  end
end

data:extend({
  modules[speed1], modules[speed2], modules[speed3],
  modules[productivity1], modules[productivity2], modules[productivity3],
  modules[effectivity1], modules[effectivity2], modules[effectivity3] 
})

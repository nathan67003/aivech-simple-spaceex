local function init() 
  if settings.global["aivech-ssx-safe-rockets"].value then
    for _,force in pairs(game.forces) do 
      record_safety_tech(force)
      give_safety_tech(force)
    end
  --[[else
    if global.safety then
      for _,force in pairs(game.forces) do
        restore_safety_tech(force)
      end
    end]]--
  end
end

local function config_update(data)
  if not global.safety then global.safety = {} end
  if settings.global["aivech-ssx-safe-rockets"].value then
    for _, force in pairs(game.forces) do
      record_safety_tech(force)
      give_safety_tech(force)
    end
  else
    for _,force in pairs(game.forces) do
      restore_safety_tech(force)
    end
  end
end

function record_safety_tech(force)
  local safe1 = force.technologies["se-rocket-cargo-safety-1"]
  local safe2 = force.technologies["se-rocket-cargo-safety-2"]
  local safe3 = force.technologies["se-rocket-cargo-safety-3"]
  if safe3 and safe3.level > 3 then
    global.safety[force.index] = safe3.level-1
  elseif safe2 and safe2.researched then
    global.safety[force.index] = 2
  elseif safe1 and safe1.researched then
    global.safety[force.index] = 1
  end
end

function restore_safety_tech(force)
  local safe1 = force.technologies["se-rocket-cargo-safety-1"]
  local safe2 = force.technologies["se-rocket-cargo-safety-2"]
  local safe3 = force.technologies["se-rocket-cargo-safety-3"]
  local level = global.safety[force.index]
  if level then
    if level >= 3 then 
      safe3.level = level+1
    elseif level == 2 then
      safe3.level = 3
    elseif level == 1 then
      safe3.level = 3
      safe2.researched = false
    else
      safe3.level = 3
      safe2.researched = false
      safe1.researched = false
    end
  else
      safe3.level = 3
      safe2.researched = false
      safe1.researched = false
  end
end

function give_safety_tech(force)
  local safe1 = force.technologies["se-rocket-cargo-safety-1"]
  local safe2 = force.technologies["se-rocket-cargo-safety-2"]
  local safe3 = force.technologies["se-rocket-cargo-safety-3"]
  if safe3 and safe3.level >= 7067 then return end
  if not safe1.researched then safe1.researched = true end
  if not safe2.researched then safe2.researched = true end
  safe3.level = 7067
end

script.on_init(init)
script.on_event(defines.events.on_runtime_mod_setting_changed, config_update)

-- circuits
local circuit = data.raw.recipe["electronic-circuit"]
circuit.normal.ingredients = {{"iron-plate", 1},{"copper-cable", 3}}
circuit.normal.enabled = true
circuit.expensive.ingredients = {{"iron-plate", 2}, {"copper-cable", 8}}
circuit.expensive.enabled = true

data.raw.recipe["electronic-circuit-stone"] = nil

-- repair pack
local repair_pack = data.raw.recipe["repair-pack"]
repair_pack.normal = nil
repair_pack.expensive = nil
repair_pack.ingredients = 
{
  {"electronic-circuit", 2},
  {"iron-gear-wheel", 2}
}
repair_pack.result = "repair-pack"

-- green science
local green_sci = data.raw.recipe["logistic-science-pack"]
green_sci.normal = nil
green_sci.expensive = nil
green_sci.ingredients = 
{
  {"inserter", 1},
  {"transport-belt", 1}
}
green_sci.energy_required = 6
green_sci.result_count = nil
green_sci.enabled = false

-- yellow science
local yel_sci = data.raw.recipe["utility-science-pack"]
yel_sci.energy_required = 21
yel_sci.result_count = 3
yel_sci.normal = nil
yel_sci.expensive = nil
yel_sci.ingredients = 
{
  {"low-density-structure", 3},
  {"processing-unit", 2},
  {"flying-robot-frame", 1}
}
yel_sci.enabled = false

-- engine unit
local engine = data.raw.recipe["engine-unit"]
engine.normal = nil
engine.expensive = nil
engine.category = "advanced-crafting"
engine.ingredients = 
{
  {"steel-plate", 1},
  {"iron-gear-wheel", 1},
  {"pipe", 2}
}
engine.result = "engine-unit"
engine.energy_required = 5
engine.enabled = false

-- electric engine unit
local elc_eng = data.raw.recipe["electric-engine-unit"]
elc_eng.normal = nil
elc_eng.expensive = nil
elc_eng.ingredients =
{
  {"engine-unit", 1},
  {type="fluid", name= "lubricant", amount = 15},
  {"electronic-circuit", 2}
}
elc_eng.result = "electric-engine-unit"
elc_eng.energy_required = 10
elc_eng.enabled = false

-- concrete
local concrete = data.raw.recipe["concrete"]
concrete.normal = nil
concrete.expensive = nil
concrete.ingredients = 
{
  {"stone-brick", 5},
  {"iron-ore", 1},
  {type="fluid", name="water", amount=100}
}
concrete.result = "concrete"
concrete.result_count = 10
concrete.energy_required = 10
concrete.enabled = false

-- furnaces
local furnace1 = data.raw.recipe["stone-furnace"]
local furnace2 = data.raw.recipe["steel-furnace"]
local furnace3 = data.raw.recipe["electric-furnace"]

furnace1.normal=nil
furnace1.expensive=nil
furnace2.normal=nil
furnace2.expensive=nil
furnace2.enabled=false
furnace3.normal=nil
furnace3.expensive=nil
furnace3.enabled=false

furnace1.ingredients = {{"stone", 5}}
furnace1.result = "stone-furnace"
furnace2.ingredients = {{"steel-plate", 6}, {"stone-brick", 10}}
furnace2.result = "steel-furnace"
furnace2.energy_required = 3
furnace3.ingredients = {{"steel-plate", 10}, {"advanced-circuit", 5}, {"stone-brick", 10}}
furnace3.result = "electric-furnace"
furnace3.energy_required = 5

-- inserters
local burninserter = data.raw.recipe["burner-inserter"]
local inserter = data.raw.recipe["inserter"]
local longinserter = data.raw.recipe["long-handed-inserter"]

burninserter.normal = nil
burninserter.expensive = nil
burninserter.result = "burner-inserter"
burninserter.enabled = true
inserter.normal = nil
inserter.expensive = nil
inserter.result = "inserter"
inserter.enabled = true
longinserter.normal = nil
longinserter.expensive = nil
longinserter.result = "long-handed-inserter"
longinserter.enabled = false

burninserter.ingredients = {{"iron-plate", 1},{"iron-gear-wheel", 1}}
inserter.ingredients = {{"electronic-circuit", 1},{"iron-gear-wheel", 1},{"iron-plate", 1}}
longinserter.ingredients = {{"iron-gear-wheel", 1},{"iron-plate", 1},{"inserter", 1}}

-- belt and splitter
local belt = data.raw.recipe["transport-belt"]
local splitter = data.raw.recipe["splitter"]

belt.normal=nil
belt.expensive = nil
belt.result = "transport-belt"
belt.result_count = 2
belt.enabled = true
splitter.normal = nil
splitter.expensive = nil
splitter.result = "splitter"
splitter.energy_required = 1
splitter.enabled = false

belt.ingredients ={{"iron-plate", 1},{"iron-gear-wheel", 1}}
splitter.ingredients = {{"electronic-circuit", 5},{"iron-plate", 5},{"transport-belt", 4}}

-- basic steam power
local boiler = data.raw.recipe["boiler"]
local steam_engine = data.raw.recipe["steam-engine"]

boiler.normal = nil
boiler.expensive = nil
boiler.result = "boiler"
boiler.enabled = true

boiler.ingredients = {{"stone-furnace", 1}, {"pipe", 4}}
steam_engine.normal = 
{
  ingredients ={{"iron-gear-wheel", 8},{"pipe", 5},{"iron-plate", 10}},
  result = "steam-engine",
  enabled = true
}
steam_engine.expensive = 
{
  ingredients = {{"iron-gear-wheel", 10},{"pipe", 5},{"iron-plate", 50}},
  result = "steam-engine",
  enabled = true
}

-- steam turbine
local turbine = data.raw.recipe["steam-turbine"]
turbine.normal = nil
turbine.expensive = nil
turbine.energy_required = 3
turbine.ingredients = {{"iron-gear-wheel", 50}, {"copper-plate", 50}, {"pipe", 20}}
turbine.result = "steam-turbine"
turbine.enabled = false

-- mining drills
local coalminer = data.raw.recipe["burner-mining-drill"]
local miner = data.raw.recipe["electric-mining-drill"]

coalminer.normal.ingredients = {{"iron-gear-wheel", 3},{"stone-furnace", 1},{"iron-plate", 3}}
coalminer.expensive.ingredients = {{"iron-gear-wheel", 6},{"stone-furnace", 2},{"iron-plate", 6}}

miner.normal.ingredients = {{"electronic-circuit", 3},{"iron-gear-wheel", 5},{"iron-plate", 10}}
miner.normal.enabled = true
miner.expensive.ingredients = {{"electronic-circuit", 5},{"iron-gear-wheel", 10},{"iron-plate", 20}}
miner.expensive.enabled = true

-- assemblers
local crafter1 = data.raw.recipe["assembling-machine-1"]
local crafter2 = data.raw.recipe["assembling-machine-2"]
local crafter3 = data.raw.recipe["assembling-machine-3"]

crafter1.normal = nil
crafter1.expensive = nil
crafter1.enabled = false
crafter1.result = "assembling-machine-1"
crafter1.ingredients = {{"electronic-circuit", 3},{"iron-gear-wheel", 5},{"iron-plate", 9}}

crafter2.normal.ingredients = {{"steel-plate", 2},{"electronic-circuit", 3},{"iron-gear-wheel", 5},{"assembling-machine-1", 1}}
crafter2.expensive.ingredients = {{"steel-plate", 5},{"electronic-circuit", 5},{"iron-gear-wheel", 10},{"assembling-machine-1", 1}}

crafter3.normal = nil
crafter3.expensive = nil
crafter3.enabled = false
crafter3.result = "assembling-machine-3"
crafter3.ingredients = {{"speed-module", 4},{"assembling-machine-2", 2}}

-- oil proc
local chemplant = data.raw.recipe["chemical-plant"]
local refinery = data.raw.recipe["oil-refinery"]

chemplant.normal = nil
chemplant.expensive = nil
chemplant.energy_required = 5
chemplant.ingredients = {{"steel-plate", 5},{"iron-gear-wheel", 5},{"electronic-circuit", 5},{"pipe", 5}}
chemplant.result = "chemical-plant"
chemplant.enabled = false

refinery.normal = nil
refinery.expensive = nil
refinery.energy_required = 8
refinery.ingredients = {{"steel-plate", 15},{"iron-gear-wheel", 10},{"stone-brick", 10},{"electronic-circuit", 10},{"pipe", 10}}
refinery.result = "oil-refinery"
refinery.enabled = false

-- lab
local lab = data.raw.recipe["lab"]
lab.normal = nil
lab.expensive = nil
lab.energy_required = 2
lab.ingredients = {{"electronic-circuit", 10},{"iron-gear-wheel", 10},{"transport-belt", 4}}
lab.result = "lab"
lab.enabled = true

-- beacon
local beacon = data.raw.recipe["beacon"]
beacon.normal = nil
beacon.expensive = nil
beacon.energy_required = 15
beacon.result = "beacon"
beacon.enabled = false
beacon.ingredients = 
{
  {"electronic-circuit", 20},
  {"advanced-circuit", 20},
  {"steel-plate", 10},
  {"copper-cable", 10}
}

-- offshore pump
local waterpump = data.raw.recipe["offshore-pump"]
waterpump.normal = nil
waterpump.expensive = nil
waterpump.ingredients = {{"electronic-circuit", 2},{"pipe", 1},{"iron-gear-wheel", 1}}
waterpump.result = "offshore-pump"
waterpump.enabled = true

-- pump
local pump = data.raw.recipe["pump"]
pump.normal = nil
pump.expensive = nil
pump.energy_required = 2
pump.ingredients = {{"engine-unit", 1},{"steel-plate", 1},{"pipe", 1}}
pump.result = "pump"
pump.enabled = false

-- pumpjack
local pumpjack = data.raw.recipe["pumpjack"]
pumpjack.normal = nil
pumpjack.expensive = nil
pumpjack.energy_required = 5
pumpjack.result = "pumpjack"
pumpjack.enabled = false
pumpjack.ingredients = 
{
  {"steel-plate", 5},
  {"iron-gear-wheel", 10},
  {"electronic-circuit", 5},
  {"pipe", 10}
}

-- electric poles
local pole1 = data.raw.recipe["small-electric-pole"]
local pole2 = data.raw.recipe["medium-electric-pole"]
local pole3 = data.raw.recipe["big-electric-pole"]
local pole4 = data.raw.recipe["substation"]

pole1.normal = nil
pole1.expensive = nil
pole1.ingredients = {{"wood", 1},{"copper-cable", 2}}
pole1.result = "small-electric-pole"
pole1.enabled = true
pole1.result_count = 2

pole2.normal = nil
pole2.expensive = nil
pole2.ingredients = {{"iron-stick", 4},{"steel-plate", 2},{"copper-plate", 2}}
pole2.result = "medium-electric-pole"
pole2.enabled = false

pole3.normal = nil
pole3.expensive = nil
pole3.ingredients = {{"iron-stick", 8},{"steel-plate", 5},{"copper-plate", 5}}
pole3.result = "big-electric-pole"
pole3.enabled = false

pole4.normal = nil
pole4.expensive = nil
pole4.ingredients = {{"steel-plate", 10},{"advanced-circuit", 5},{"copper-plate", 5}}
pole4.result = "substation"
pole4.enabled = false

-- roboport
local roboport = data.raw.recipe["roboport"]
roboport.normal = nil
roboport.expensive = nil
roboport.energy_required = 5
roboport.ingredients = {{"steel-plate", 45},{"iron-gear-wheel", 45},{"advanced-circuit", 45}}
roboport.result = "roboport"
roboport.enabled = false

--oil proc
local basicoil = data.raw.recipe["basic-oil-processing"]
local advoil = data.raw.recipe["advanced-oil-processing"]

basicoil.normal = nil
basicoil.expensive = nil
basicoil.energy_required = 5
basicoil.enabled = false
basicoil.ingredients = {{type="fluid", name="crude-oil", amount=100, fluidbox_index = 2}}
basicoil.results = {{type="fluid", name="petroleum-gas", amount=45, fluidbox_index = 3}}

advoil.normal = nil
advoil.expensive = nil
advoil.energy_required = 5
advoil.enabled = false
advoil.ingredients = {{type="fluid", name="water", amount=50},{type="fluid", name="crude-oil", amount=100}}
advoil.results = {{type="fluid", name="heavy-oil", amount=25},{type="fluid", name="light-oil", amount=45},{type="fluid", name="petroleum-gas", amount=55}}
data.raw.recipe["advanced-oil-processing"].icon = "__base__/graphics/icons/fluid/advanced-oil-processing.png"
data.raw.recipe["advanced-oil-processing"].icon_size = 64

-- transportation
local car = data.raw.recipe["car"]
local train = data.raw.recipe["locomotive"]

car.normal = nil
car.expensive = nil
car.energy_required = 2
car.ingredients = {{"engine-unit", 8},{"iron-plate", 20},{"steel-plate", 5}}
car.result = "car"
car.enabled = false

train.normal = nil
train.expensive = nil
train.energy_required = 4
train.ingredients = {{"engine-unit", 20},{"electronic-circuit", 10},{"steel-plate", 30}}
train.result = "locomotive"
train.enabled = false

-- robot frame
local robotbase = data.raw.recipe["flying-robot-frame"]
robotbase.normal = nil
robotbase.expensive = nil
robotbase.energy_required = 20
robotbase.result = "flying-robot-frame"
robotbase.enabled = false
robotbase.ingredients = {{"electric-engine-unit", 1},{"battery", 2},{"steel-plate", 1},{"electronic-circuit", 3}}

-- turrets
local gun = data.raw.recipe["gun-turret"]
local laser = data.raw.recipe["laser-turret"]

gun.normal = nil
gun.expensive = nil
gun.energy_required = 8
gun.result = "gun-turret"
gun.enabled = false
gun.ingredients = {{"iron-gear-wheel", 10},{"copper-plate", 10},{"iron-plate", 20}}

laser.normal = nil
laser.expensive = nil
laser.energy_required = 20
laser.result = "laser-turret"
laser.enabled = false
laser.ingredients = {{"steel-plate", 20},{"electronic-circuit", 20},{"battery", 12}}

-- gate
local gate = data.raw.recipe["gate"]
gate.normal = nil
gate.expensive = nil
gate.result = "gate"
gate.enabled = false
gate.ingredients = {{"stone-wall", 1}, {"steel-plate", 2}, {"electronic-circuit", 2}}

-- lamp
local lamp = data.raw.recipe["small-lamp"]
lamp.normal = nil
lamp.expensive = nil
lamp.result = "small-lamp"
lamp.enabled = false
lamp.ingredients = {{"electronic-circuit", 1},{"copper-cable", 3},{"iron-plate", 1}}

-- radar
local radar = data.raw.recipe["radar"]
radar.normal = nil
radar.expensive = nil
radar.result = "radar"
radar.enabled = false
radar.ingredients = {{"electronic-circuit", 5},{"iron-gear-wheel", 5},{"iron-plate", 10}}

-- solar panel
local solar = data.raw.recipe["solar-panel"]
solar.normal = nil
solar.expensive = nil
solar.energy_required = 10
solar.result = "solar-panel"
solar.enabled = false
solar.ingredients = {{"steel-plate", 5},{"electronic-circuit", 15},{"copper-plate", 5}}

-- personal laser defense
local armorlaser = data.raw.recipe["personal-laser-defense-equipment"]
armorlaser.normal = nil
armorlaser.expensive = nil
armorlaser.energy_required = 10
armorlaser.result = "personal-laser-defense-equipment"
armorlaser.enabled = false
armorlaser.ingredients = {{"processing-unit", 20},{"low-density-structure", 5},{"laser-turret", 5}}

-- centrifuge
local centrifuge = data.raw.recipe["centrifuge"]
centrifuge.normal = nil
centrifuge.expensive = nil
centrifuge.energy_required = 4
centrifuge.result = "centrifuge"
centrifuge.enabled = false
centrifuge.ingredients =
{
  {"concrete", 100},
  {"steel-plate", 50},
  {"advanced-circuit", 100},
  {"iron-gear-wheel", 100}
}

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
  circuit, stone_circuit, 
  repair_pack, 
  green_sci, yel_sci, 
  engine, elc_eng, 
  concrete, 
  furnace1, furnace2, furnace3,
  burninserter,inserter,longinserter,
  belt,splitter,
  boiler,steam_engine,
  turbine,
  coalminer,miner,
  crafter1,crafter2,crafter3,
  chemplant, refinery,
  lab,
  beacon,
  waterpump,
  pump,
  pumpjack,
  pole1,pole2,pole3,pole4,
  roboport,
  basicoil,advoil,
  car,train,
  robotbase,
  gun,laser,
  gate,
  lamp,
  radar,
  solar,
  armorlaser,
  centrifuge,
  modules[speed1], modules[speed2], modules[speed3],
  modules[productivity1], modules[productivity2], modules[productivity3],
  modules[effectivity1], modules[effectivity2], modules[effectivity3]
})
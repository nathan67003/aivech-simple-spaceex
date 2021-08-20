data:extend({
---- AAI burner control
-- Gate electrical power behind AAI?
  {
    type = "bool-setting",
   name = "aivech-ssx-gate-electricity",
   setting_type = "startup",
   default_value = false,
   order = "a-aai"
  },
  -- Use AAI intermediates
  {
   type = "bool-setting",
   name = "aivech-ssx-aai-recipes",
   setting_type = "startup",
   default_value = false,
   order = "a-aai"
  },
  -- Offshore pump requires electricity
--[[  {
   type = "bool-setting",
   name = "aivech-ssx-offshore-pump",
   setting_type = "startup",
   default_value = false,
   order = "a-aai"
  },]]--
---- Space Exploration settings
  -- Low density structure options
  --[[{
   type = "string-setting",
   name = "aivech-ssx-low-density-structure",
   setting_type = "startup",
   default_value = "replace",
   allowed_values = {"ignore","replace","revert"},
   order = "b-space-ex"
  },]]--
  -- Use vanilla landfill recipe
  {
   type = "bool-setting",
   name = "aivech-ssx-cheaper-landfill",
   setting_type = "startup",
   default_value = false,
   order = "b-space-ex"
   },
  -- Use vanilla modules recipes
  {
   type = "bool-setting",
   name = "aivech-ssx-modules",
   setting_type = "startup",
   default_value = false,
   order = "b-space-ex"
   },
  {
   type = "bool-setting",
   name = "aivech-ssx-expensive-nuke",
   setting_type = "startup",
   default_value = false,
   order = "b-space-ex"
   },
  {
   type = "bool-setting",
   name = "aivech-ssx-equipment-research",
   setting_type="startup",
   default_value=false,
   order = "b-space-ex"
   },
  {
   type = "bool-setting",
   name = "aivech-ssx-safe-rockets",
   setting_type = "runtime-global",
   default_value = false,
   order = "b-space-ex"
   }
})

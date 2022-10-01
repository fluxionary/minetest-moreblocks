local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)
local S = minetest.get_translator(modname)

stairs = {
	author = "flux",
	license = "AGPL_v3",
	version = {year = 2022, month = 10, day = 1},
	fork = "flux",

	modname = modname,
	modpath = modpath,
	S = S,

	has = {
		default = minetest.get_modpath("default"),
	},

	log = function(level, messagefmt, ...)
		return minetest.log(level, ("[%s] %s"):format(modname, messagefmt:format(...)))
	end,

	dofile = function(...)
		return dofile(table.concat({modpath, ...}, DIR_DELIM) .. ".lua")
	end,
}

stairsplus.api.register_shape_group("legacy_stairs", { "slab_8", "stair", "stair_inner", "stair_outer" })

stairs.dofile("api")
stairs.dofile("legacy")

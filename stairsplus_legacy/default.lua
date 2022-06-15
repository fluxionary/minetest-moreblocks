if stairsplus_legacy.has.stairs then
	stairsplus_legacy.override_stairs("wood", "default:wood")
	stairsplus_legacy.override_stairs("junglewood", "default:junglewood")
	stairsplus_legacy.override_stairs("pine_wood", "default:pine_wood")
	stairsplus_legacy.override_stairs("acacia_wood", "default:acacia_wood")
	stairsplus_legacy.override_stairs("aspen_wood", "default:aspen_wood")
	stairsplus_legacy.override_stairs("cobble", "default:cobble")
	stairsplus_legacy.override_stairs("stone", "default:stone")
	stairsplus_legacy.override_stairs("mossycobble", "default:mossycobble")
	stairsplus_legacy.override_stairs("stonebrick", "default:stonebrick")
	stairsplus_legacy.override_stairs("stone_block", "default:stone_block")
	stairsplus_legacy.override_stairs("desert_stone", "default:desert_stone")
	stairsplus_legacy.override_stairs("desert_cobble", "default:desert_cobble")
	stairsplus_legacy.override_stairs("desert_stonebrick", "default:desert_stonebrick")
	stairsplus_legacy.override_stairs("desert_stone_block", "default:desert_stone_block")
	stairsplus_legacy.override_stairs("sandstone", "default:sandstone")
	stairsplus_legacy.override_stairs("sandstonebrick", "default:sandstonebrick")
	stairsplus_legacy.override_stairs("sandstone_block", "default:sandstone_block")
	stairsplus_legacy.override_stairs("desert_sandstone", "default:desert_sandstone")
	stairsplus_legacy.override_stairs("desert_sandstone_brick", "default:desert_sandstone_brick")
	stairsplus_legacy.override_stairs("desert_sandstone_block", "default:desert_sandstone_block")
	stairsplus_legacy.override_stairs("silver_sandstone", "default:silver_sandstone")
	stairsplus_legacy.override_stairs("silver_sandstone_brick", "default:silver_sandstone_brick")
	stairsplus_legacy.override_stairs("silver_sandstone_block", "default:silver_sandstone_block")
	stairsplus_legacy.override_stairs("obsidian", "default:obsidian")
	stairsplus_legacy.override_stairs("obsidianbrick", "default:obsidianbrick")
	stairsplus_legacy.override_stairs("obsidian_block", "default:obsidian_block")
	stairsplus_legacy.override_stairs("brick", "default:brick")
	stairsplus_legacy.override_stairs("steelblock", "default:steelblock")
	stairsplus_legacy.override_stairs("tinblock", "default:tinblock")
	stairsplus_legacy.override_stairs("copperblock", "default:copperblock")
	stairsplus_legacy.override_stairs("bronzeblock", "default:bronzeblock")
	stairsplus_legacy.override_stairs("goldblock", "default:goldblock")
	stairsplus_legacy.override_stairs("ice", "default:ice")
	stairsplus_legacy.override_stairs("snowblock", "default:snowblock")
	stairsplus_legacy.override_stairs("glass", "default:glass",
		{tiles = {"stairs_glass_split.png"}}, {ignore_paramtype2 = true})
	stairsplus_legacy.override_stairs("obsidian_glass", "default:obsidian_glass",
		{tiles = {"stairs_obsidian_glass_split.png"}}, {ignore_paramtype2 = true})
end

local default_nodes = { -- Default stairs/slabs/panels/microblocks:
	"stone",
	"stone_block",
	"cobble",
	"mossycobble",
	"brick",
	"sandstone",
	"steelblock",
	"goldblock",
	"copperblock",
	"bronzeblock",
	"diamondblock",
	"tinblock",
	"desert_stone",
	"desert_stone_block",
	"desert_cobble",
	"meselamp",
	"tree",
	"wood",
	"jungletree",
	"junglewood",
	"pine_tree",
	"pine_wood",
	"acacia_tree",
	"acacia_wood",
	"aspen_tree",
	"aspen_wood",
	"obsidian",
	"obsidian_block",
	"obsidianbrick",
	"stonebrick",
	"desert_stonebrick",
	"sandstonebrick",
	"silver_sandstone",
	"silver_sandstone_brick",
	"silver_sandstone_block",
	"desert_sandstone",
	"desert_sandstone_brick",
	"desert_sandstone_block",
	"sandstone_block",
	"coral_skeleton",
	"ice",
}

for _, name in ipairs(default_nodes) do
	local node = ("default:%s"):format(name)
	stairsplus_legacy.register_legacy(node)
	stairsplus.api.register_alias_all(("moreblocks:%s"):format(name), node)
end

-- glass problems
local glass = {
	"glass",
	"obsidian_glass",
}

for _, name in ipairs(glass) do
	local node = ("default:%s"):format(name)
	stairsplus_legacy.register_legacy(node, nil, {ignore_paramtype2 = true})
	stairsplus.api.register_alias_all(("moreblocks:%s"):format(name), node)
end

local api = stairsplus.api

local is_legacy_drawtype = stairsplus.compat.is_legacy_drawtype
local is_legacy_paramtype2 = stairsplus.compat.is_legacy_paramtype2

local default_align_style = stairsplus.settings.default_align_style

function stairs.register_stair(subname, node, groups, tiles, description, sounds, worldaligntex)
	local meta = {
		align_style = worldaligntex and "world" or default_align_style
	}
	if is_legacy_drawtype(node) then
		meta.ignore_drawtype = true
	end
	if is_legacy_paramtype2(node) then
		meta.ignore_paramtype2 = true
	end

	api.register_single(node, "stair", nil, meta)

	minetest.register_alias(("stairs:stair_%s"):format(subname), api.format_name(node, "stair"))
end

function stairs.register_slab(subname, node, groups, images, description, sounds, worldaligntex)
	local meta = {
		align_style = worldaligntex and "world" or default_align_style
	}
	if is_legacy_drawtype(node) then
		meta.ignore_drawtype = true
	end
	if is_legacy_paramtype2(node) then
		meta.ignore_paramtype2 = true
	end

	api.register_single(node, "slab_8", nil, meta)

	minetest.register_alias(("stairs:slab_%s"):format(subname), api.format_name(node, "slab_8"))
end

function stairs.register_stair_inner(subname, node, groups, tiles, description, sounds, worldaligntex, full_description)
	local meta = {
		align_style = worldaligntex and "world" or default_align_style
	}
	if is_legacy_drawtype(node) then
		meta.ignore_drawtype = true
	end
	if is_legacy_paramtype2(node) then
		meta.ignore_paramtype2 = true
	end

	api.register_single(node, "stair_inner", nil, meta)

	minetest.register_alias(("stairs:stair_inner_%s"):format(subname), api.format_name(node, "stair_inner"))
end

function stairs.register_stair_outer(subname, node, groups, tiles, description, sounds, worldaligntex, full_description)
	local meta = {
		align_style = worldaligntex and "world" or default_align_style
	}
	if is_legacy_drawtype(node) then
		meta.ignore_drawtype = true
	end
	if is_legacy_paramtype2(node) then
		meta.ignore_paramtype2 = true
	end

	api.register_single(node, "stair_outer", nil, meta)

	minetest.register_alias(("stairs:stair_outer_%s"):format(subname), api.format_name(node, "stair_outer"))
end

function stairs.register_stair_and_slab(subname, recipeitem, groups, images, desc_stair, desc_slab, sounds,
										worldaligntex, desc_stair_inner, desc_stair_outer)
        stairs.register_stair(subname, recipeitem, groups, images, desc_stair, sounds, worldaligntex)
        stairs.register_stair_inner(subname, recipeitem, groups, images, desc_stair, sounds, worldaligntex,
			                        desc_stair_inner)
        stairs.register_stair_outer(subname, recipeitem, groups, images, desc_stair, sounds, worldaligntex,
			                        desc_stair_outer)
        stairs.register_slab(subname, recipeitem, groups, images, desc_slab, sounds, worldaligntex)
end

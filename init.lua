for name,def in pairs(minetest.registered_nodes) do
	if def.groups and def.groups.leaves then
		minetest.log("action","[soft_leaves] Modifying " .. name)
		local groups = table.copy(def.groups)
		groups.bouncy = 30
		groups.fall_damage_add_percent = -30
		minetest.override_item(name,{groups=groups})
	end
end

crate_items={
  {items = {'default:coal_lump'},   rarity = 2,},
  {items = {'default:iron_lump'},   rarity = 2,},
  {items = {'default:cobble'},   rarity = 2,},
}

chess_items={
{},
}

barrel_items={
{},
}

pot_items={
  {items = {'default:apple'},   rarity = 2},
  {items = {'default:leaves'},   rarity = 2},
}

minetest.register_node("gifts:crate", {
  tile_images = {"gifts_crate_center.png", "gifts_crate.png", },
  description = "Crate",
  drawtype = "nodebox",
  node_box = {
    type = "fixed",
    fixed = { -7/16, -8/16, -7/16, 7/16, 6/16, 7/16 },
  },
  selection_box = {
    type = "fixed",
    fixed = { -7/16, -8/16, -7/16, 7/16, 6/16, 7/16 },
  },
  sunlight_propagates = true,
  paramtype = "light",
  walkable = true,
  groups = {dig_immediate=3, flammable=3,wood=1, falling_node=1},
  sounds = default.node_sound_wood_defaults(),
  drop = {
    max_items = 2,
    items = crate_items
  },
  on_punch = function(pos, node, puncher)
    drop_attached_node(pos)
  end
})

minetest.register_node("gifts:pot", {
  tile_images = {"gifts_crate_center.png", "gifts_crate.png", },
  description = "Crate",
  drawtype = "nodebox",
  node_box = {
    type = "fixed",
    fixed = { -7/16, -8/16, -7/16, 7/16, 6/16, 7/16 },
  },
  selection_box = {
    type = "fixed",
    fixed = { -7/16, -8/16, -7/16, 7/16, 6/16, 7/16 },
  },
  sunlight_propagates = true,
  paramtype = "light",
  walkable = true,
  groups = {dig_immediate=3, floored=1, flammable=3},
  sounds = default.node_sound_glass_defaults(),
  drop = {
    max_items = 2,
    items = pot_items
  },
  on_punch = function(pos, node, puncher)
    drop_attached_node(pos)
  end
})

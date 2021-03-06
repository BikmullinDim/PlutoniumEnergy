--[[
Copyright (C) 2018  John The Cooling Fan

This file is part of Plutonium Energy

Plutonium Energy is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Plutonium Energy is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
--]]

data:extend({
	{
		type = "technology",
		name = "plutonium-nuclear-power",
		icon = "__PlutoniumEnergy__/graphics/technology/plutonium-nuclear-power.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "MOX-fuel"
			},
			{
				type = "unlock-recipe",
				recipe = "MOX-reactor"
			},
			{
				type = "unlock-recipe",
				recipe = "advanced-nuclear-fuel-reprocessing"
			},
			{
				type = "unlock-recipe",
				recipe = "plutonium-238-nuclesynthesis"
			},
			{
				type = "unlock-recipe",
				recipe = "industrial-reactor"
			},
			{
				type = "unlock-recipe",
				recipe = "uranium-238-excess-neutron-capture"
			}
		},
		prerequisites = {"nuclear-power"},
		unit =
		{
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 25,
			count = 1200
		},
		order = "c-a"
	},
	{
		type = "technology",
		name = "MOX-fuel-reprocessing",
		icon = "__PlutoniumEnergy__/graphics/technology/plutonium-fuel-reprocessing.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "MOX-fuel-reprocessing"
			},
			{
				type = "unlock-recipe",
				recipe = "plutonium-239-alpha-decay"
			}
		},
		prerequisites = {"plutonium-nuclear-power"},
		unit =
		{
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 25,
			count = 1500
		},
		order = "c-a"
	},
	
	{
		type = "technology",
		name = "plutonium-ammo",
		icon_size = 128,
		icon = "__PlutoniumEnergy__/graphics/technology/plutonium-ammo.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "plutonium-rounds-magazine"
			},
			{
				type = "unlock-recipe",
				recipe = "plutonium-atomic-bomb"
			},
			{
				type = "unlock-recipe",
				recipe = "plutonium-cannon-shell"
			},
			{
				type = "unlock-recipe",
				recipe = "explosive-plutonium-cannon-shell"
			}
		},
		prerequisites = {"plutonium-nuclear-power", "uranium-ammo"},
		unit = {
			count = 5000,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"military-science-pack", 1},
				{"production-science-pack", 1},
				{"high-tech-science-pack", 1}
			},
			time = 50
		},
		order = "e-a-c"
	}
})
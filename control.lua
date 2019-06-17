--control.lua

script.on_init(function()
	for index, force in pairs(game.forces) do
		force.technologies['basic-mining'].researched=true
		force.reset_technology_effects()
	end
end)
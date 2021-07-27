-- Made by DRANIX#1337 (SOMEONE)

function Command_Fov(cmd)
	
	if(cmd == "fov") then

		echo("Usage: /fov 50")
		
		return 1
	end

	if(cmd:sub(0,3) == "fov") then

		set_fov(cmd:sub(5))

		return 1
	end
end

add_hook("command", "sdk", Command_Fov)
-- Made by DRANIX#1337 (SOMEONE)

local function Command_GotoFrame(cmd)

	if(cmd == "frame") then

		echo("Usage: /frame \"framenumber\"")
		
		return 1
	end

	if(cmd:sub(0, 5) == "frame") then

		local GameRules = get_game_rules()
		local CurrentFrames = GameRules.matchframes
        rewind_replay()

        local Frames = 0
        Frames = CurrentFrames - cmd:sub(7)-1

        run_frames(Frames)

		return 1
	end
end

add_hook("command", "sdk", Command_GotoFrame)
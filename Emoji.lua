local EgoId = {
	[0] = true,
}

local fedId = {
	[0] = true,
}

local ThugId = {
	[0] = true,
}

local StarId = {
	[0] = true,
}

local SkidId = {
    [0] = true,
}

local OwnerId = {
	[4613474292] = true,
}

local EnemyId = {
	[0] = true,
} 

function premium()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if StarId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					local humanoid = v.Character:FindFirstChildWhichIsA('Humanoid')
					if humanoid then
						if not humanoid.DisplayName:find("[⭐]") then
							humanoid.DisplayName = ('[⭐]'..v.DisplayName)
						end
					end
				end
			end
		elseif SkidId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					local humanoid = v.Character:FindFirstChildWhichIsA('Humanoid')
					if humanoid then
						if not humanoid.DisplayName:find("[💀SKID💀]") then
							humanoid.DisplayName = ('[💀SKID💀]'..v.DisplayName)
						end
					end
				end
			end
        elseif ThugId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					local humanoid = v.Character:FindFirstChildWhichIsA('Humanoid')
					if humanoid then
						if not humanoid.DisplayName:find("[😎THUGHUNTER😎]") then
							humanoid.DisplayName = ('[😎THUGHUNTER😎]'..v.DisplayName)
						end
					end
				end
			end
	elseif EgoId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					local humanoid = v.Character:FindFirstChildWhichIsA('Humanoid')
					if humanoid then
						if not humanoid.DisplayName:find("[🔥child molester🔥]") then
							humanoid.DisplayName = ('[🔥child molester🔥]'..v.DisplayName)
						end
					end
				end
			end
        elseif fedId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					local humanoid = v.Character:FindFirstChildWhichIsA('Humanoid')
					if humanoid then
						if not humanoid.DisplayName:find("[⚧fed⚧]") then
							humanoid.DisplayName = ('[⚧fed⚧]'..v.DisplayName)
						end
					end
				end
			end
		elseif OwnerId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					local humanoid = v.Character:FindFirstChildWhichIsA('Humanoid')
					if humanoid then
						if not humanoid.DisplayName:find("[👑]") then
							humanoid.DisplayName = ('[👑]'..v.DisplayName)
						end
					end
				end
			end
		elseif EnemyId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					local humanoid = v.Character:FindFirstChildWhichIsA('Humanoid')
					if humanoid then
						if not humanoid.DisplayName:find("🤡 RAYX Premium User 🤡") then
							humanoid.DisplayName = ('🤡 RAYX Premium User 🤡')
						end
					end
				end
			end
		elseif v.Character then
			if v.Character.Parent.Name == 'Players' then
				local humanoid = v.Character:FindFirstChildWhichIsA('Humanoid')
				if humanoid then
					if not humanoid.DisplayName:find("[😎]") then
						humanoid.DisplayName = ('[😎]'..v.DisplayName)
					end
				end
			end
		end
	end
end

local success,err = pcall(premium)

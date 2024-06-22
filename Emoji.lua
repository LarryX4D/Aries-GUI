
local EgoId = {
	[0] = true,
}

local fedId = {
	[0] = true,
}

local ThugId = {
	[1327940915] = true,
	[4982894469] = true,
}

local StarId = {
	[0] = true,
}

local SkidId = {
    [0] = true,
}

local OwnerId = {
	[4613474292] = true,
	[2978945510] = true,
	[4048492295] = true,
	[3725534070] = true,
}

local EnemyId = {
	[0] = true,
} 

function premium()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if StarId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
				end
			end
		elseif SkidId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('null'..v.DisplayName)
				end
			end
        elseif ThugId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🛡️]'..v.DisplayName)
				end
			end
	elseif EgoId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('null'..v.DisplayName)
				end
			end
        elseif fedId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('null'..v.DisplayName)
				end
			end
		elseif OwnerId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]'..v.DisplayName)
				end
			end
		elseif EnemyId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('null')
				end
			end
		elseif v.Character then
			if v.Character.Parent.Name == 'Players' then
				if not v.Character.UpperTorso:FindFirstChild('BodyBackAttachment') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎]'..v.DisplayName)
				end
			end
		end
	end
end
local success,err = pcall(premium)
return StarId

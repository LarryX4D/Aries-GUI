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

local displayNamePrefixes = {
    [StarId] = "[⭐]",
    [SkidId] = "[💀SKID💀]",
    [ThugId] = "[😎THUGHUNTER😎]",
    [EgoId] = "[🔥child molester🔥]",
    [fedId] = "[⚧fed⚧]",
    [OwnerId] = "[👑]",
    [EnemyId] = "🤡 RAYX Premium User 🤡",
}

function updateDisplayName(player)
    local userId = player.UserId
    local displayNamePrefix = displayNamePrefixes[userId]

    if displayNamePrefix then
        local character = player.Character
        if character and character.Parent.Name == 'Players' then
            local humanoid = character:FindFirstChildWhichIsA('Humanoid')
            if humanoid then
                humanoid.DisplayName = displayNamePrefix .. player.DisplayName
            end
        end
    end
end

game.Players.PlayerAdded:Connect(function(player)
    updateDisplayName(player)
end)

game.Players.PlayerRemoving:Connect(function(player)
    -- Очистить дисплей ника перед удалением игрока
    local character = player.Character
    if character and character.Parent.Name == 'Players' then
        local humanoid = character:FindFirstChildWhichIsA('Humanoid')
        if humanoid then
            humanoid.DisplayName = player.DisplayName
        end
    end
end)

-- Вернуть таблицу StarId
return StarId

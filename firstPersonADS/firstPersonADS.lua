Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(0, 25) then
            local viewMode = GetFollowPedCamViewMode()
            
            if viewMode ~= 4 then
                SetFollowPedCamViewMode(4)
            end
        end

        if IsControlJustReleased(0, 25) then
            SetFollowPedCamViewMode(1)
        end
    end
end)

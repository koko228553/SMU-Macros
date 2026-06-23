-- @name: High Jump
-- @desc: Simple macro to do high jump
-- @author: Plasti
-- @version: 1.0
-- @keybind: E

function onSettings()
    ui.sliderInt("delay_ms", "Delay before Jump (ms)", 0, 0, 30, 300)
end

function onExecute()
    local delay = settings.delay_ms or 0

    pressKey("C")

    if delay > 0 then
        sleep(delay)
    end

    -- Press Jump (Space)
    pressKey("Space")
end

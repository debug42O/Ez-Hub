return {
    newAimbotTab = function(mainGUIInstance)
        local aimbotModule = loadstring(_G["EzHubModules"]["aimbotmodule"])()
        local tab = mainGUIInstance.newTab("Aimbot");
        tab.newTitle("Aimbot");
        tab.newDiv();

        tab.newCheckbox("Enabled", aimbotModule.enabled, function(state)
            aimbotModule.enabled = state;
        end)

        tab.newCheckbox("Free For All", aimbotModule.freeforall, function(state)
            aimbotModule.freeforall = state;
        end)
    
        tab.newCheckbox("Headshot Only", aimbotModule.headshot, function(state)
            aimbotModule.headshot = state;
        end)
    
        tab.newCheckbox("WallCheck", aimbotModule.wallcheck, function(state)
            aimbotModule.wallcheck = state;
        end)
    
        tab.NewSlider("Radius", aimbotModule.radius, 10, 400, function(val)
            aimbotModule.radius = val
        end)
    
        tab.newCheckbox("Show FOV", aimbotModule.showfov, function(state)
            aimbotModule.showfov = state
        end)
    
        tab.newDiv()
    
        tab.newCheckbox("Right-mouse", aimbotModule.rightmouse, function(state)
            aimbotModule.rightmouse = state;
        end)
    
        tab.newKeybind("Keybind", aimbotModule.keybind, function(i)
            aimbotModule.keybind = i.KeyCode;
        end)
    end
}

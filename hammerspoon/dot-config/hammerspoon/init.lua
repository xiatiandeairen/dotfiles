hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "P", function()
    hs.alert.show(hs.pasteboard.getContents())
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
    hs.reload()
end)

hs.alert.show("Config loaded")


local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({Name = "Chelovek Hub",
LoadingTitle = "Chelovek Interface Loaded!",
LoadingSubtitle = "by chelovek#2374",
ConfigurationSaving = {
	Enabled = true,
	FileName = "Big Hub",
},
KeySystem = true, 
KeySettings = {
	Title = "Chelovek Hub",
	Subtitle = "Key System",
	Note = "Join the discord (https://discord.gg/EmMFaTKnXs)",
	Key = "L5?{bQ2@TW8J0xS4.tlvHm:rqNX9P#"
}
})
--Values
_G.autofarm = true
_G.AutoExtremeMode = true

--Functions

function autofarm()
    while _G.autofarm == true do
local A_1 = "SpeedChange"
local A_2 = true
local Event = game:GetService("ReplicatedStorage").Remotes.Input
Event:FireServer(A_1, A_2)
wait(5)
local A_1 = "Summon"
local A_2 = 
{
    ["Rotation"] = 0, 
    ["cframe"] = CFrame.new(-400.301971, 592.591492, 11.9728756, 1, 0, 0, 0, 1, 0, 0, 0, 1), 
    ["Unit"] = "Gol D. Roger"
}
local Event = game:GetService("ReplicatedStorage").Remotes.Input
Event:FireServer(A_1, A_2)
wait(5)
	end
end

function AutoExtremeMode()
	while _G.AutoExtremeMode == true do
local A_1 = "VoteGameMode"
local A_2 = "Extreme"
local Event = game:GetService("ReplicatedStorage").Remotes.Input
Event:FireServer(A_1, A_2)
return ExtremeMode
	end
end
--Notify
Rayfield:Notify("Пошёл нахуй со своими автосохранением настроек","Пошёл нахуй",10010348543)
--Tabs
local Main = Window:CreateTab("Main")
local Modes = Window:CreateTab("Modes")
local Tools = Window:CreateTab("Others Tools")
--Toggles
local Toggle = Main:CreateToggle({
	Name = "Auto Farm",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(Value)
		_G.autofarm = Value
		autofarm()
	end,
})
local Toggle = Modes:CreateToggle({
	Name = "Auto extreme mode",
	CurrentValue = false,
	Flag = "Toggle1", 
	Callback = function(Value)
		_G.AutoExtremeMode = Value
		AutoExtremeMode()
	end,
})

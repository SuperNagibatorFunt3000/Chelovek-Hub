local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({Name = "Chelovek Hub",
LoadingTitle = "Chelovek Interface Loaded!",
LoadingSubtitle = "by chelovek#2374",
ConfigurationSaving = {
	Enabled = true,
	FileName = "Chelovek Hub",
	Rayfield:LoadConfiguration()
},
KeySystem = true, 
KeySettings = {
	Title = "Chelovek Hub",
	Subtitle = "Key System",
	Note = "Join the discord (https://discord.gg/EmMFaTKnXs)",
	Key = "L5?{bQ2@TW8J0xS4.tlvHm:rqNX9P#"
}
})
Rayfield:LoadConfiguration()
if getgenv().SecureMode == true then
	print('secure mode enabled')
end
if getgenv().SecureMode == false then
	print('secure mode disabled')
end
--Values
_G.autofarm = true
_G.AutoExtremeMode = true
_G.EnableSecureMode = false
_G.DisableSecureMode = true

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
return AutoExtremeMode()
	end
end

function EnableSecureMode()
	while _G.EnableSecureMode == false do
		_G.DisableSecureMode = false
		_G.EnableSecureMode = true
		getgenv().SecureMode = true
	end
end
function DisableSecureMode()
	while _G.DisableSecureMode == false do
		_G.DisableSecureMode = true
		_G.EnableSecureMode = false
		getgenv().SecureMode = false
	end
end
--Notify
local id = game:GetService("Players").LocalPlayer.UserId
print('user id is -',id)
local jid = game.JobId
print('JobId -',jid)
Rayfield:Notify("Вы успешно зашли в наше GUI","") 
--Tabs
local Main = Window:CreateTab("Main")
local Modes = Window:CreateTab("Modes")
local Tools = Window:CreateTab("Others Tools")
local Settings = Window:CreateTab("Settings")
--Toggles
local Toggle = Main:CreateToggle({
	Name = "Auto Farm",
	CurrentValue = false,
	Flag = "Auto Farm Toggle", 
	Callback = function(Value)
		_G.autofarm = Value
		autofarm()
	end,
})
local Toggle = Modes:CreateToggle({
	Name = "Auto extreme mode (PATCHED)",
	CurrentValue = false,
	Flag = "Auto extreme mode toggle", 
	Callback = function(Value)
		_G.AutoExtremeMode = Value
		AutoExtremeMode()
	end,
})
local Toggle = Settings:CreateToggle({
	Name = "Secure Mode",
	CurrentValue = false,
	Flag = "Secure mode toggle", 
	Callback = function(Value)
		_G.EnableSecureMode = Value
		_G.DisableSecureMode = Value
		if CurrentValue == true then
			EnableSecureMode()
		end
		if CurrentValue == false then
			DisableSecureMode()
		end
	end,
})
--Buttons
local Button = Tools:CreateButton({
	Name = "Yield",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end,
})
local Button = Tools:CreateButton({
	Name = "Chelovek AutoClicker",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/jMcVd5cv"))()
	end,
})
local Button = Settings:CreateButton({
	Name = "Destroy GUI",
	Callback = function()
		Rayfield:Destroy()
	end,
})
local Button = Settings:CreateButton({
	Name = "Enable secure mode",
	Callback = function()
		getgenv().SecureMode = true
		print('secure mode: Enabled')
	end,
})
local Button = Settings:CreateButton({
	Name = "Disable secure mode",
	Callback = function()
		getgenv().SecureMode = false
		print('secure mode: Disabled')
	end,
})
--Paragraphs
local Paragraph = Tools:CreateParagraph({Title = "Как использовать автокликер от человека", Content = "Чтобы включить автокликер нажмите на F5 чтобы выключить на F6"})

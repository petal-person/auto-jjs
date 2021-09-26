--[[Auto JJs by petal-person]]--
--https://github.com/petal-person/auto-jjs
--snapshot release of 1.0.0

local p = game:GetService("Players").LocalPlayer
local rs = game:GetService("ReplicatedStorage")

repeat wait() until p.Character

local ch = p.Character

local guimain = Instance.new("ScreenGui")
guimain.Name = "gui-main"
guimain.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local mainui = Instance.new("Frame")
mainui.Name = "main-ui"
mainui.Size = UDim2.new(0, 227, 0, 28)
mainui.Position = UDim2.new(0.4151084, 0, 0.4785933, 0)
mainui.BorderSizePixel = 0
mainui.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mainui.Parent = guimain
mainui.Draggable = true
mainui.Active = true
mainui.Selectable = true

local main = Instance.new("Frame")
main.Name = "main"
main.Size = UDim2.new(0, 227, 0, 141)
main.Position = UDim2.new(-0.0033938, 0, 0.9700742, 0)
main.BorderSizePixel = 0
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.Parent = mainui

local numinput = Instance.new("TextBox")
numinput.Name = "num-input"
numinput.Size = UDim2.new(0, 200, 0, 23)
numinput.Position = UDim2.new(0.0572687, 0, 0.1111111, 0)
numinput.BorderSizePixel = 0
numinput.BackgroundColor3 = Color3.fromRGB(236, 236, 236)
numinput.FontSize = Enum.FontSize.Size14
numinput.TextSize = 14
numinput.TextColor3 = Color3.fromRGB(0, 0, 0)
numinput.Text = "Enter JJ amount"
numinput.Font = Enum.Font.SourceSansLight
numinput.Parent = main

local jjselect = Instance.new("TextButton")
jjselect.Name = "JJs"
jjselect.Size = UDim2.new(0, 98, 0, 25)
jjselect.Position = UDim2.new(0.0440529, 0, 0.4068733, 0)
jjselect.BorderSizePixel = 0
jjselect.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
jjselect.FontSize = Enum.FontSize.Size14
jjselect.TextSize = 14
jjselect.TextColor3 = Color3.fromRGB(168, 168, 168)
jjselect.Text = "JJs (*)"
jjselect.Font = Enum.Font.SourceSansBold
jjselect.Parent = main

local hjselect = Instance.new("TextButton")
hjselect.Name = "HJs"
hjselect.Size = UDim2.new(0, 97, 0, 25)
hjselect.Position = UDim2.new(0.5110132, 0, 0.4068733, 0)
hjselect.BorderSizePixel = 0
hjselect.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
hjselect.FontSize = Enum.FontSize.Size14
hjselect.TextSize = 14
hjselect.TextColor3 = Color3.fromRGB(168, 168, 168)
hjselect.Text = "HJs"
hjselect.Font = Enum.Font.SourceSansBold
hjselect.Parent = main

local stop = Instance.new("TextButton")
stop.Name = "stop"
stop.Size = UDim2.new(0, 85, 0, 25)
stop.Position = UDim2.new(0.1189427, 0, 0.7036983, 0)
stop.BorderSizePixel = 0
stop.BackgroundColor3 = Color3.fromRGB(216, 111, 111)
stop.FontSize = Enum.FontSize.Size14
stop.TextSize = 14
stop.TextColor3 = Color3.fromRGB(168, 168, 168)
stop.Text = "STOP"
stop.Font = Enum.Font.SourceSansBold
stop.Parent = main

local stp = Instance.new("TextButton")
stp.Name = "st-p"
stp.Size = UDim2.new(0, 86, 0, 25)
stp.Position = UDim2.new(0.4933921, 0, 0.7036983, 0)
stp.BorderSizePixel = 0
stp.BackgroundColor3 = Color3.fromRGB(146, 236, 154)
stp.FontSize = Enum.FontSize.Size14
stp.TextSize = 14
stp.TextColor3 = Color3.fromRGB(168, 168, 168)
stp.Text = "START"
stp.Font = Enum.Font.SourceSansBold
stp.Parent = main

local title = Instance.new("TextLabel")
title.Name = "title"
title.Size = UDim2.new(0, 188, 0, 27)
title.BackgroundTransparency = 1
title.Position = UDim2.new(0.0440529, 0, 0, 0)
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.FontSize = Enum.FontSize.Size14
title.TextSize = 14
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Text = "Auto JJs by petal-person"
title.Font = Enum.Font.SourceSansSemibold
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = mainui

local toggle = Instance.new("TextButton")
toggle.Name = "toggle"
toggle.Size = UDim2.new(0, 18, 0, 19)
toggle.Position = UDim2.new(0.89, 0, 0.1428573, 0)
toggle.BorderSizePixel = 0
toggle.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
toggle.FontSize = Enum.FontSize.Size14
toggle.TextSize = 14
toggle.TextColor3 = Color3.fromRGB(154, 154, 154)
toggle.Text = "-"
toggle.TextWrap = true
toggle.Font = Enum.Font.SourceSans
toggle.TextWrapped = true
toggle.TextScaled = true
toggle.Parent = mainui

--main

local num_target = 0
local completed_jjs = 0
local places = {0, 0, 0, 0}
local mode = 1
local state = 0

--[[
state 0 = not running
state 1 = paused
state 2 = running
]]--

local jj_dict = {
	{
		"ONE",
		"TWO",
		"THREE",
		"FOUR",
		"FIVE",
		"SIX",
		"SEVEN",
		"EIGHT",
		"NINE",
		"TEN",
		"ELEVEN",
		"TWELVE",
		"THIRTEEN",
		"FOURTEEN",
		"FIFTEEN",
		"SIXTEEN",
		"SEVENTEEN",
		"EIGHTEEN",
		"NINETEEN"
	},
	
	{
		"TEN",
		"TWENTY",
		"THIRTY",
		"FOURTY",
		"FIFTY",
		"SIXTY",
		"SEVENTY",
		"EIGHTY",
		"NINETY"
	},
	
	{
		"ONE HUNDRED",
		"TWO HUNDRED",
		"THREE HUNDRED",
		"FOUR HUNDRED",
		"FIVE HUNDRED",
		"SIX HUNDRED",
		"SEVEN HUNDRED",
		"EIGHT HUNDRED",
		"NINE HUNDRED"
	},
	
	{
		"ONE THOUSAND",
		"TWO THOUSAND",
		"THREE THOUSAND",
		"FOUR THOUSAND",
		"FIVE THOUSAND",
		"SIX THOUSAND",
		"SEVEN THOUSAND",
		"EIGHT THOUSAND",
		"NINE THOUSAND"
	}
}

function gen_from_place(place_tab)
	local p1 = place_tab[1]
	local p2 = place_tab[2]
	local p3 = place_tab[3]
	local p4 = place_tab[4]
	
	local out_str = ""
	
	if (p4 >= 1) then out_str = jj_dict[4][p4] end
	if (p3 >= 1) then out_str = out_str.. " ".. jj_dict[3][p3] end
	if (p2 > 1 or (p2 == 1 and p1 == 0)) then out_str = out_str.. " ".. jj_dict[2][p2] end
	if (p1 >= 1 and p2 ~= 1) then out_str = out_str.. " ".. jj_dict[1][p1] end
	if (p2 == 1 and p1 >= 1) then
		out_str = out_str.. " ".. jj_dict[1][tonumber("1"..p1)]
	end
	
	return out_str:match "^%s*(.-)%s*$"
end


function bump_places(place_tab)
	local p1 = place_tab[1]
	local p2 = place_tab[2]
	local p3 = place_tab[3]
	local p4 = place_tab[4]
	
	if (p1 == 9) then
		if (p2 == 9) then
			if (p3 == 9) then
				if (p4 ~= 9) then
					p1 = 0
					p2 = 0
					p3 = 0
					p4 = p4 + 1
				else
					return {9,9,9,9}
				end
			else
				p1 = 0
				p2 = 0
				p3 = p3 + 1
			end
		else
			p1 = 0
			p2 = p2 + 1
		end
	else
		p1 = p1 + 1
	end
	
	return {p1, p2, p3, p4}
end

function change_state(newstate)
	if (newstate == 2) then
		stp.Text = "PAUSE"
		stp.BackgroundColor3 = Color3.fromRGB(255, 255, 127)
		
	elseif (newstate == 1) then
		stp.Text = "RESUME"
		stp.BackgroundColor3 = Color3.fromRGB(146, 236, 154)
		
	elseif (newstate == 0) then
		stp.Text = "START"
		stp.BackgroundColor3 = Color3.fromRGB(146, 236, 154)
	end
	
	state = newstate
end

function action()
	change_state(2)
	
	while (state == 2) do
		if (completed_jjs >= num_target) then
			print('done the JJs!')
			change_state(0)
			break;
		end
		
		places = bump_places(places)
		local jj_word = gen_from_place(places)
		
		rs.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(jj_word, "All")
		ch.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		
		completed_jjs = completed_jjs + 1
		wait(1)
	end
end


jjselect.MouseButton1Click:Connect(function()
	if (mode == 1) then
		return;
	end
	
	mode = 1
	jjselect.Text = jjselect.text.." (*)"
	hjselect.Text = hjselect.Name
end)

hjselect.MouseButton1Click:Connect(function()
	if (mode == 2) then
		return;
	end

	mode = 2
	hjselect.Text = hjselect.text.." (*)"
	jjselect.Text = jjselect.Name
end)


toggle.MouseButton1Click:Connect(function()
	if (mainui.main.Visible) then
		mainui.main.Visible = false
		toggle.Text = "+"
	else
		mainui.main.Visible = true
		toggle.Text = "-"
	end
end)


stp.MouseButton1Click:Connect(function()
	if (state == 0) then
		num_target = tonumber(numinput.Text)
		
		if (num_target) then
			if not (num_target <= 9999) then
				numinput.Text = "Must be below 9999"
				return;
			end
			
			completed_jjs = 0
			places = {0, 0, 0, 0}
			action()
		else
			numinput.Text = "Invalid input"
		end
	elseif (state == 1) then
		change_state(2)
		action()
		
	elseif (state == 2) then
		change_state(1)
	end
end)


stop.MouseButton1Click:Connect(function()
	if (state ~= 0) then
		change_state(0)
		completed_jjs = 0
		num_target = 0
		places = {0,0,0,0}
	end
end)


guimain.Parent = p.PlayerGui

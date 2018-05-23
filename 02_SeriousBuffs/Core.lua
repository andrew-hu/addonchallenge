SLASH_RELOADUI1 = "/rl" -- For quicker reloading
SlashCmdList.RELOADUI = RELOADUI

SLASH_FRAMESTK1 = "/fs" -- For quicker access to frame stack
SlashCmdList.FRAMESTK = function()
	LoadAddon('Blizzard_DebugTools')
	FrameStackTooltip_Toggle()
end

-- to be able to use left and right arrows in the edit box
-- without rotating character
for i = 1, NUM_CHAT_WINDOWS do
	_G["ChatFrame"..i.."EditBox"]:SetAltArrowKeyMode(false)
end
-----------------------------------------------------------


--standard container frame widget
local UIConfig = CreateFrame("Frame","SeriousBuffs_Frame", UIParent, "BasicFrameTemplateWithInset");

--[[
CreateFrame Arguments:
1. The type of frame - "Frame"
2. The global frame name - "SeriousBuffs_Frame"
3. The Parent frame (not a string!)
4. A comma separated LIST (string list) of XML templates to inherit from
	-- does not need to be a comma separated list, can just be one
]]

UIConfig:SetSize(300,460); --width, height
UIConfig:SetPoint("CENTER", UIParent,"CENTER"); -- point, relativeFrame, relativePoint, xOffset, yOffset

--point and relativePoint("CENTER") could have been any of:

--[[
	"TOPLEFT"
	"TOP"
	"TOPRIGHT"
	"LEFT"
	"CENTER"
	"RIGHT"
	"BOTTOMLEFT"
	"BOTTOM"
	"BOTTOMRIGHT"

]]

-- Child frame and regions:
UIConfig.title = UIConfig:CreateFontString(nil, "OVERLAY");
UIConfig.title:SetFontObject("GameFontHighlight");

UIConfig.title:SetPoint("LEFT", UIConfig.TitleBg, "LEFT", 5, 0);
UIConfig.title:SetText("SeriousBuffs Options");

-- BUTTONS

-- UI SAVE BUTTON:
UIConfig.saveButton = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.saveButton:SetPoint("CENTER", UIConfig, "TOP", 0, -70);
UIConfig.saveButton:SetSize(140, 40);
UIConfig.saveButton:SetText("Save");
UIConfig.saveButton:SetNormalFontObject("GameFontNormalLarge");
UIConfig.saveButton:SetHighlightFontObject("GameFontHighlightLarge");

-- UI Reset Button
UIConfig.resetBtn = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.resetBtn:SetPoint("TOP", UIConfig.saveButton, "BOTTOM", 0, -10);
UIConfig.resetBtn:SetSize(140, 40);
UIConfig.resetBtn:SetText("Reset");
UIConfig.resetBtn:SetNormalFontObject("GameFontNormalLarge");
UIConfig.resetBtn:SetHighlightFontObject("GameFontHighlightLarge");

-- UI Load Button
UIConfig.loadBtn = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.loadBtn:SetPoint("TOP", UIConfig.resetBtn, "BOTTOM", 0, -10);
UIConfig.loadBtn:SetSize(140, 40);
UIConfig.loadBtn:SetText("Load");
UIConfig.loadBtn:SetNormalFontObject("GameFontNormalLarge");
UIConfig.loadBtn:SetHighlightFontObject("GameFontHighlightLarge");

-- Slider1:
UIConfig.slider1 = CreateFrame("Slider", nil, UIConfig, "OptionsSliderTemplate");
UIConfig.slider1:SetPoint("TOP", UIConfig.loadBtn, "BOTTOM", 0 , -20);
UIConfig.slider1:SetMinMaxValues(1, 100)
UIConfig.slider1:SetValue(50); -- Default

UIConfig.slider1:SetValueStep(30); -- need two lines for functionality
UIConfig.slider1:SetObeyStepOnDrag(true);

-- Slider2:
UIConfig.slider2 = CreateFrame("Slider", nil, UIConfig, "OptionsSliderTemplate");
UIConfig.slider2:SetPoint("TOP", UIConfig.slider1, "BOTTOM", 0 , -20);
UIConfig.slider2:SetValueStep(10);
UIConfig.slider2:SetObeyStepOnDrag(true);
UIConfig.slider2:SetMinMaxValues(1,100);
UIConfig.slider2:SetValue(40); -- Default

-- CHECK BUTTONS

-- Check button 1:
UIConfig.checkbtn1 = CreateFrame("CheckButton", nil, UIConfig, "UICheckButtonTemplate");
UIConfig.checkbtn1:SetPoint("TOPLEFT", UIConfig.slider2, "BOTTOMLEFT", -10, -40);
UIConfig.checkbtn1.text:SetText("My Check Button");

-- Check button 1:
UIConfig.checkbtn2 = CreateFrame("CheckButton", nil, UIConfig, "UICheckButtonTemplate");
UIConfig.checkbtn2:SetPoint("TOPLEFT", UIConfig.checkbtn1, "BOTTOMLEFT", 0, -10);
UIConfig.checkbtn2.text:SetText("Another check button");
UIConfig.checkbtn2:SetChecked(true);


--[[
	--Full list of Font Objects:

	GameFontNormal
	GameFontNormalSmall
	GameFontNormalLarge
	GameFontHighlight
	GameFontHighlightSmall
	GameFontHighlightLarge
	GameFontDisable
	GameFontDisableSmall
	GameFontDisableLarge
	GameFontGreen
	GameFontGreenSmall
	GameFontGreenLarge
	GameFontRed
	GameFontRedSmall
	GameFontRedLarge
	GameFontWhite
	GameFontDarkGreySmall
	NumberFontNormalYellow
	NumberFontNormalSmallGrey
	QuestFontNormalSmall
	DialogButtonHighlightText
	ErrorFont
	TextStatusBarText
	CombatLogFont

]]

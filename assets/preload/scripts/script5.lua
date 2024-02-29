-- Thank you so much XooleDev
-- Pls follow him

local CanSelect

SelectAmount = 1
SelectAmountBack = -1

local MaxProductLimit = 3
local MinProductLimit = 1

local ProductSelected
local ProductPrice

function onCreate()
	initSaveData('DataFolder', 'Folder')
	flushSaveData('DataFolder')
	MoneyAmount = getDataFromSave('DataFolder', 'Money') -- Do NOT Remove Money, unless you're changing all the variables   -- Listen to him 

	if songName == 'Freeplay5' then
		function onStartCountdown() 
			if not allowCountdown then
				return Function_Stop
			end
		
			if allowCountdown then
				return Function_Continue
			end
		end
		playMusic('freakyMenu', 0.8, true)

		makeLuaSprite('image', 'freeplay/pictures/pibby-tom', 877, 293)
		addLuaSprite('image', true)
		setScrollFactor('image', 1, 1);
            setProperty('image.visible', false)

		makeLuaSprite('image1', 'freeplay/pictures/pibby-tom', 877, 293)
		addLuaSprite('image1', true)
		setScrollFactor('image1', 1, 1);
            setProperty('image1.visible', false)

		makeLuaSprite('image2', 'freeplay/pictures/pibby-tom', 877, 293)
		addLuaSprite('image2', true)
		setScrollFactor('image2', 1, 1);
            setProperty('image2.visible', false)

		makeLuaSprite('song', 'freeplay/songs/funny-cartoon', 150, 340)
		addLuaSprite('song', true)
		setScrollFactor('song', 1, 1);
            setProperty('song.visible', false)

		makeLuaSprite('song1', 'freeplay/songs/cat-chase', 150, 340)
		addLuaSprite('song1', true)
		setScrollFactor('song1', 1, 1);
            setProperty('song1.visible', false)

          makeLuaSprite('song2', 'freeplay/songs/unstoppable-block', 150, 340)
		addLuaSprite('song2', true)
		setScrollFactor('song2', 1, 1);
            setProperty('song2.visible', false)

		ProductSelected = 0
		
		addVirtualPad()

		return Function_Continue;
	end
end
function addVirtualPad()
makeAnimatedLuaSprite('a', 'android/andrPad', 1150, 590)
        addLuaSprite('a', true)
        addAnimationByPrefix('a', 'ap', 'a0000', 24, false)
        addAnimationByPrefix('a', 'an', 'a0001', 24, false)
        scaleObject('a', 1, 1)
        setScrollFactor('a', 1, 1)
        setObjectCamera('a', 'camOther')
        makeAnimatedLuaSprite('b', 'android/andrPad', 1020, 590)
        addLuaSprite('b', true)
        addAnimationByPrefix('b', 'b', 'b0000', 24, false)
        addAnimationByPrefix('b', 'bn', 'b0001', 24, false)
        scaleObject('b', 1, 1)
        setScrollFactor('b', 1, 1)
        setObjectCamera('b', 'camOther')
makeAnimatedLuaSprite('up', 'android/andrPad', 0, 460)
        addLuaSprite('up', true)
        addAnimationByPrefix('up', 'up', 'up0000', 24, false)
        addAnimationByPrefix('up', 'upp', 'up0001', 24, false)
        scaleObject('up', 1, 1)         
        setScrollFactor('up', 1, 1)
        setObjectCamera('up', 'camOther')

        makeAnimatedLuaSprite('down', 'android/andrPad', 0, 580)
        addLuaSprite('down', true)
        addAnimationByPrefix('down', 'down', 'down0000', 24, false)
        addAnimationByPrefix('down', 'downp', 'down0001', 24, false)
        scaleObject('down', 1, 1)
        setScrollFactor('down', 1, 1)
        setObjectCamera('down', 'camOther')
        setProperty('up.color', getColorFromHex('00FF00'))
        setProperty('a.color', getColorFromHex('FF0000'))
        setProperty('b.color', getColorFromHex('FAFA33'))
        setProperty('down.color', getColorFromHex('00FFFF'))
        setProperty('up.alpha', 0.5)
        setProperty('a.alpha', 0.5)
        setProperty('down.alpha', 0.5)
        setProperty('b.alpha', 0.5)
        end
        function androidPadJustPress(name)
if name == 'a' then
return (getMouseX('hud') > getProperty('a.x') and getMouseY('hud') > getProperty('a.y') and getMouseX('hud') < getProperty('a.x') + getProperty('a.width') and getMouseY('hud') < getProperty('a.y') + getProperty('a.height') and mouseClicked('left')) end
if name == 'b' then
return (getMouseX('hud') > getProperty('b.x') and getMouseY('hud') > getProperty('b.y') and getMouseX('hud') < getProperty('b.x') + getProperty('b.width') and getMouseY('hud') < getProperty('b.y') + getProperty('b.height') and mouseClicked('left')) 
end
if name == 'up' then
return (getMouseX('hud') > getProperty('up.x') and getMouseY('hud') > getProperty('up.y') and getMouseX('hud') < getProperty('up.x') + getProperty('up.width') and getMouseY('hud') < getProperty('up.y') + getProperty('up.height') and mouseClicked('left')) 
end
if name == 'down' then
return (getMouseX('hud') > getProperty('down.x') and getMouseY('hud') > getProperty('down.y') and getMouseX('hud') < getProperty('down.x') + getProperty('down.width') and getMouseY('hud') < getProperty('down.y') + getProperty('down.height') and mouseClicked('left'))
end
end
function MainGamepadUpdate()
if getMouseX('hud') > getProperty('a.x') and getMouseY('hud') > getProperty('a.y') and getMouseX('hud') < getProperty('a.x') + getProperty('a.width') and getMouseY('hud') < getProperty('a.y') + getProperty('a.height') and mousePressed('left') then
objectPlayAnimation('a', 'an', false);
	else
objectPlayAnimation('a', 'ap', false);
end
if (getMouseX('hud') > getProperty('b.x') and getMouseY('hud') > getProperty('b.y') and getMouseX('hud') < getProperty('b.x') + getProperty('b.width') and getMouseY('hud') < getProperty('b.y') + getProperty('b.height') and mousePressed('left')) then
objectPlayAnimation('b', 'bn', false);
else
objectPlayAnimation('b', 'b', false);
end
if (getMouseX('hud') > getProperty('up.x') and getMouseY('hud') > getProperty('up.y') and getMouseX('hud') < getProperty('up.x') + getProperty('up.width') and getMouseY('hud') < getProperty('up.y') + getProperty('up.height') and mousePressed('left')) then
objectPlayAnimation('up', 'upp', false);
else
objectPlayAnimation('up', 'up', false);
end
if (getMouseX('hud') > getProperty('down.x') and getMouseY('hud') > getProperty('down.y') and getMouseX('hud') < getProperty('down.x') + getProperty('down.width') and getMouseY('hud') < getProperty('down.y') + getProperty('down.height') and mousePressed('left')) then
objectPlayAnimation('down', 'downp', false);
else
objectPlayAnimation('down', 'down', false);
end
makeLuaSprite('chert', 'crosshair', 0, 0)
addLuaSprite('chert', true)
scaleObject('chert', 1, 1)
setObjectCamera('chert', 'other')
setProperty('chert.x', getMouseX('camOther')-75)
setProperty('chert.y', getMouseY('camOther')-75)
end
function onUpdate()
	if songName == 'Freeplay5' then
	MainGamepadUpdate()
              if androidPadJustPress('b') then
			exitMenu()
              end

		if androidPadJustPress('a') then
				playSound('play');
		end

		if androidPadJustPress('up') or androidPadJustPress('down') then

			if ProductSelected >= MaxProductLimit and androidPadJustPress('down') then
				ProductSelected = 1
			elseif ProductSelected <= MinProductLimit and androidPadJustPress('up') then
				ProductSelected = 3
			else
				if androidPadJustPress('down') then
					ProductSelected = ProductSelected + 1
				end
				if androidPadJustPress('up') then
					ProductSelected = ProductSelected - 1
				end
			end
			if ProductSelected == 1 then
                        setProperty('song.visible', true)
                        setProperty('song1.visible', false)
                        setProperty('song2.visible', false)
                        setProperty('image.visible', true)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', false)
                  elseif ProductSelected == 2 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', true)
                        setProperty('song2.visible', false)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', true)
                        setProperty('image2.visible', false)
                 elseif ProductSelected == 3 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', false)
                        setProperty('song2.visible', true)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', true)
                 			end
			removeLuaSprite('selectIcon')
			playSound('select');
		end
		if ProductSelected == 1 and androidPadJustPress('a') then
                    loadSong('funny-cartoon');
            elseif ProductSelected == 2 and androidPadJustPress('a') then
                    loadSong('cat-chase');
            elseif ProductSelected == 3 and androidPadJustPress('a') then
                    loadSong('unstoppable-block');
		  end
          end
        end

function onTimerCompleted(tag, loops, loopsLeft)
	if androidPadJustPress('b') and songName == 'Freeplay5' then
		exitMenu();
	end
end

function exitMenu()
	setDataFromSave('DataFolder', 'Money', MoneyAmount)
	exitSong(true);
end
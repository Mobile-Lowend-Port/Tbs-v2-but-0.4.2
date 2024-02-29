-- Thank you so much XooleDev
-- Pls follow him

local CanSelect

SelectAmount = 1
SelectAmountBack = -1

local MaxProductLimit = 11
local MinProductLimit = 1

local ProductSelected
local ProductPrice

function onCreate()
	initSaveData('DataFolder', 'Folder')
	flushSaveData('DataFolder')
	MoneyAmount = getDataFromSave('DataFolder', 'Money') -- Do NOT Remove Money, unless you're changing all the variables   -- Listen to him 

	if songName == 'Freeplay1' then
		function onStartCountdown() 
			if not allowCountdown then
				return Function_Stop
			end
		
			if allowCountdown then
				return Function_Continue
			end
		end
		playMusic('freakyMenu', 0.8, true)

		makeLuaSprite('image', 'freeplay/pictures/come-for-revenge', 877, 293)
		addLuaSprite('image', true)
		setScrollFactor('image', 1, 1);
            setProperty('image.visible', false)

		makeLuaSprite('image1', 'freeplay/pictures/come-for-revenge', 877, 293)
		addLuaSprite('image1', true)
		setScrollFactor('image1', 1, 1);
            setProperty('image1.visible', false)

		makeLuaSprite('image2', 'freeplay/pictures/DOJ', 877, 293)
		addLuaSprite('image2', true)
		setScrollFactor('image2', 1, 1);
            setProperty('image2.visible', false)

          makeLuaSprite('image3', 'freeplay/pictures/invade', 877, 293)
		addLuaSprite('image3', true)
		setScrollFactor('image3', 1, 1);
            setProperty('image3.visible', false)

          makeLuaSprite('image4', 'freeplay/pictures/jam', 877, 293)
		addLuaSprite('image4', true)
		setScrollFactor('image4', 1, 1);
            setProperty('image4.visible', false)

          makeLuaSprite('image5', 'freeplay/pictures/lightning', 877, 293)
		addLuaSprite('image5', true)
		setScrollFactor('image5', 1, 1);
            setProperty('image5.visible', false)

          makeLuaSprite('image6', 'freeplay/pictures/meme-mania', 877, 293)
		addLuaSprite('image6', true)
		setScrollFactor('image6', 1, 1);
            setProperty('image6.visible', false)

          makeLuaSprite('image7', 'freeplay/pictures/mucho mouse', 877, 293)
		addLuaSprite('image7', true)
		setScrollFactor('image7', 1, 1);
            setProperty('image7.visible', false)

          makeLuaSprite('image8', 'freeplay/pictures/spike', 877, 293)
		addLuaSprite('image8', true)
		setScrollFactor('image8', 1, 1);
            setProperty('image8.visible', false)

          makeLuaSprite('image9', 'freeplay/pictures/starved-butch', 877, 293)
		addLuaSprite('image9', true)
		setScrollFactor('image9', 1, 1);
            setProperty('image9.visible', false)

          makeLuaSprite('image10', 'freeplay/pictures/wheel tom', 877, 293)
		addLuaSprite('image10', true)
		setScrollFactor('image10', 1, 1);
            setProperty('image10.visible', false)

		makeLuaSprite('song', 'freeplay/songs/come-for-revenge', 150, 340)
		addLuaSprite('song', true)
		setScrollFactor('song', 1, 1);
            setProperty('song.visible', false)

		makeLuaSprite('song1', 'freeplay/songs/reburning', 150, 340)
		addLuaSprite('song1', true)
		setScrollFactor('song1', 1, 1);
            setProperty('song1.visible', false)

          makeLuaSprite('song2', 'freeplay/songs/none-of-all', 150, 340)
		addLuaSprite('song2', true)
		setScrollFactor('song2', 1, 1);
            setProperty('song2.visible', false)

          makeLuaSprite('song3', 'freeplay/songs/invade', 150, 340)
		addLuaSprite('song3', true)
		setScrollFactor('song3', 1, 1);
            setProperty('song3.visible', false)

          makeLuaSprite('song4', 'freeplay/songs/jammy', 150, 340)
		addLuaSprite('song4', true)
		setScrollFactor('song4', 1, 1);
            setProperty('song4.visible', false)

          makeLuaSprite('song5', 'freeplay/songs/soul-chance', 150, 340)
		addLuaSprite('song5', true)
		setScrollFactor('song5', 1, 1);
            setProperty('song5.visible', false)

          makeLuaSprite('song6', 'freeplay/songs/meme-mania', 150, 340)
		addLuaSprite('song6', true)
		setScrollFactor('song6', 1, 1);
            setProperty('song6.visible', false)

          makeLuaSprite('song7', 'freeplay/songs/mucho-mouse', 150, 340)
		addLuaSprite('song7', true)
		setScrollFactor('song7', 1, 1);
            setProperty('song7.visible', false)

          makeLuaSprite('song8', 'freeplay/songs/hydrophobia', 150, 340)
		addLuaSprite('song8', true)
		setScrollFactor('song8', 1, 1);
            setProperty('song8.visible', false)

          makeLuaSprite('song9', 'freeplay/songs/desire-or-despair', 150, 340)
		addLuaSprite('song9', true)
		setScrollFactor('song9', 1, 1);
            setProperty('song9.visible', false)

		makeLuaSprite('song10', 'freeplay/songs/steep-slopes', 150, 340)
		addLuaSprite('song10', true)
		setScrollFactor('song10', 1, 1);
            setProperty('song10.visible', false)

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
	if songName == 'Freeplay1' then
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
				ProductSelected = 11
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
                        setProperty('song3.visible', false)
                        setProperty('song4.visible', false)
                        setProperty('song5.visible', false)
                        setProperty('song6.visible', false)
                        setProperty('song7.visible', false)
                        setProperty('song8.visible', false)
                        setProperty('song9.visible', false)
                        setProperty('song10.visible', false)
                        setProperty('image.visible', true)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', false)
                        setProperty('image3.visible', false)
                        setProperty('image4.visible', false)
                        setProperty('image5.visible', false)
                        setProperty('image6.visible', false)
                        setProperty('image7.visible', false)
                        setProperty('image8.visible', false)
                        setProperty('image9.visible', false)
                        setProperty('image10.visible', false)
                  elseif ProductSelected == 2 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', true)
                        setProperty('song2.visible', false)
                        setProperty('song3.visible', false)
                        setProperty('song4.visible', false)
                        setProperty('song5.visible', false)
                        setProperty('song6.visible', false)
                        setProperty('song7.visible', false)
                        setProperty('song8.visible', false)
                        setProperty('song9.visible', false)
                        setProperty('song10.visible', false)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', true)
                        setProperty('image2.visible', false)
                        setProperty('image3.visible', false)
                        setProperty('image4.visible', false)
                        setProperty('image5.visible', false)
                        setProperty('image6.visible', false)
                        setProperty('image7.visible', false)
                        setProperty('image8.visible', false)
                        setProperty('image9.visible', false)
                        setProperty('image10.visible', false)
                 elseif ProductSelected == 3 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', false)
                        setProperty('song2.visible', true)
                        setProperty('song3.visible', false)
                        setProperty('song4.visible', false)
                        setProperty('song5.visible', false)
                        setProperty('song6.visible', false)
                        setProperty('song7.visible', false)
                        setProperty('song8.visible', false)
                        setProperty('song9.visible', false)
                        setProperty('song10.visible', false)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', true)
                        setProperty('image3.visible', false)
                        setProperty('image4.visible', false)
                        setProperty('image5.visible', false)
                        setProperty('image6.visible', false)
                        setProperty('image7.visible', false)
                        setProperty('image8.visible', false)
                        setProperty('image9.visible', false)
                        setProperty('image10.visible', false)
                 elseif ProductSelected == 4 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', false)
                        setProperty('song2.visible', false)
                        setProperty('song3.visible', true)
                        setProperty('song4.visible', false)
                        setProperty('song5.visible', false)
                        setProperty('song6.visible', false)
                        setProperty('song7.visible', false)
                        setProperty('song8.visible', false)
                        setProperty('song9.visible', false)
                        setProperty('song10.visible', false)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', false)
                        setProperty('image3.visible', true)
                        setProperty('image4.visible', false)
                        setProperty('image5.visible', false)
                        setProperty('image6.visible', false)
                        setProperty('image7.visible', false)
                        setProperty('image8.visible', false)
                        setProperty('image9.visible', false)
                        setProperty('image10.visible', false)
                 elseif ProductSelected == 5 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', false)
                        setProperty('song2.visible', false)
                        setProperty('song3.visible', false)
                        setProperty('song4.visible', true)
                        setProperty('song5.visible', false)
                        setProperty('song6.visible', false)
                        setProperty('song7.visible', false)
                        setProperty('song8.visible', false)
                        setProperty('song9.visible', false)
                        setProperty('song10.visible', false)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', false)
                        setProperty('image3.visible', false)
                        setProperty('image4.visible', true)
                        setProperty('image5.visible', false)
                        setProperty('image6.visible', false)
                        setProperty('image7.visible', false)
                        setProperty('image8.visible', false)
                        setProperty('image9.visible', false)
                        setProperty('image10.visible', false)
                 elseif ProductSelected == 6 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', false)
                        setProperty('song2.visible', false)
                        setProperty('song3.visible', false)
                        setProperty('song4.visible', false)
                        setProperty('song5.visible', true)
                        setProperty('song6.visible', false)
                        setProperty('song7.visible', false)
                        setProperty('song8.visible', false)
                        setProperty('song9.visible', false)
                        setProperty('song10.visible', false)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', false)
                        setProperty('image3.visible', false)
                        setProperty('image4.visible', false)
                        setProperty('image5.visible', true)
                        setProperty('image6.visible', false)
                        setProperty('image7.visible', false)
                        setProperty('image8.visible', false)
                        setProperty('image9.visible', false)
                        setProperty('image10.visible', false)
                 elseif ProductSelected == 7 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', false)
                        setProperty('song2.visible', false)
                        setProperty('song3.visible', false)
                        setProperty('song4.visible', false)
                        setProperty('song5.visible', false)
                        setProperty('song6.visible', true)
                        setProperty('song7.visible', false)
                        setProperty('song8.visible', false)
                        setProperty('song9.visible', false)
                        setProperty('song10.visible', false)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', false)
                        setProperty('image3.visible', false)
                        setProperty('image4.visible', false)
                        setProperty('image5.visible', false)
                        setProperty('image6.visible', true)
                        setProperty('image7.visible', false)
                        setProperty('image8.visible', false)
                        setProperty('image9.visible', false)
                        setProperty('image10.visible', false)
                 elseif ProductSelected == 8 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', false)
                        setProperty('song2.visible', false)
                        setProperty('song3.visible', false)
                        setProperty('song4.visible', false)
                        setProperty('song5.visible', false)
                        setProperty('song6.visible', false)
                        setProperty('song7.visible', true)
                        setProperty('song8.visible', false)
                        setProperty('song9.visible', false)
                        setProperty('song10.visible', false)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', false)
                        setProperty('image3.visible', false)
                        setProperty('image4.visible', false)
                        setProperty('image5.visible', false)
                        setProperty('image6.visible', false)
                        setProperty('image7.visible', true)
                        setProperty('image8.visible', false)
                        setProperty('image9.visible', false)
                        setProperty('image10.visible', false)
                 elseif ProductSelected == 9 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', false)
                        setProperty('song2.visible', false)
                        setProperty('song3.visible', false)
                        setProperty('song4.visible', false)
                        setProperty('song5.visible', false)
                        setProperty('song6.visible', false)
                        setProperty('song7.visible', false)
                        setProperty('song8.visible', true)
                        setProperty('song9.visible', false)
                        setProperty('song10.visible', false)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', false)
                        setProperty('image3.visible', false)
                        setProperty('image4.visible', false)
                        setProperty('image5.visible', false)
                        setProperty('image6.visible', false)
                        setProperty('image7.visible', false)
                        setProperty('image8.visible', true)
                        setProperty('image9.visible', false)
                        setProperty('image10.visible', false)
                 elseif ProductSelected == 10 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', false)
                        setProperty('song2.visible', false)
                        setProperty('song3.visible', false)
                        setProperty('song4.visible', false)
                        setProperty('song5.visible', false)
                        setProperty('song6.visible', false)
                        setProperty('song7.visible', false)
                        setProperty('song8.visible', false)
                        setProperty('song9.visible', true)
                        setProperty('song10.visible', false)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', false)
                        setProperty('image3.visible', false)
                        setProperty('image4.visible', false)
                        setProperty('image5.visible', false)
                        setProperty('image6.visible', false)
                        setProperty('image7.visible', false)
                        setProperty('image8.visible', false)
                        setProperty('image9.visible', true)
                        setProperty('image10.visible', false)
                 elseif ProductSelected == 11 then
                        setProperty('song.visible', false)
                        setProperty('song1.visible', false)
                        setProperty('song2.visible', false)
                        setProperty('song3.visible', false)
                        setProperty('song4.visible', false)
                        setProperty('song5.visible', false)
                        setProperty('song6.visible', false)
                        setProperty('song7.visible', false)
                        setProperty('song8.visible', false)
                        setProperty('song9.visible', false)
                        setProperty('song10.visible', true)
                        setProperty('image.visible', false)
                        setProperty('image1.visible', false)
                        setProperty('image2.visible', false)
                        setProperty('image3.visible', false)
                        setProperty('image4.visible', false)
                        setProperty('image5.visible', false)
                        setProperty('image6.visible', false)
                        setProperty('image7.visible', false)
                        setProperty('image8.visible', false)
                        setProperty('image9.visible', false)
                        setProperty('image10.visible', true)
			end
			removeLuaSprite('selectIcon')
			playSound('select');
		end
		if ProductSelected == 1 and androidPadJustPress('a') then
                    loadSong('come-for-revenge');
            elseif ProductSelected == 2 and androidPadJustPress('a') then
                    loadSong('reburning');
            elseif ProductSelected == 3 and androidPadJustPress('a') then
                    loadSong('none-of-all');
            elseif ProductSelected == 4 and androidPadJustPress('a') then
                    loadSong('Invade');
            elseif ProductSelected == 5 and androidPadJustPress('a') then
                    loadSong('jam');
            elseif ProductSelected == 6 and androidPadJustPress('a') then
                    loadSong('soul-chance');
            elseif ProductSelected == 7 and androidPadJustPress('a') then
                    loadSong('meme-mania');
            elseif ProductSelected == 8 and androidPadJustPress('a') then
                    loadSong('mucho-mouse');
            elseif ProductSelected == 9 and androidPadJustPress('a') then
                    loadSong('hydrophobia');
            elseif ProductSelected == 10 and androidPadJustPress('a') then
                    loadSong('desire-or-despair');
            elseif ProductSelected == 11 and androidPadJustPress('a') then
                    loadSong('steep-slopes');
		  end
          end
        end

function onTimerCompleted(tag, loops, loopsLeft)
	if androidPadJustPress('b') and songName == 'Freeplay1' then
		exitMenu();
	end
end

function exitMenu()
	setDataFromSave('DataFolder', 'Money', MoneyAmount)
	exitSong(true);
end
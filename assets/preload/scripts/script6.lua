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

		return Function_Continue;
	end
end

function onUpdate()
	if songName == 'Freeplay5' then
              if keyJustPressed('left') then
			exitMenu()
              end

		if keyJustPressed('right') then
				playSound('play');
		end

		if keyJustPressed('up') or keyJustPressed('down') then

			if ProductSelected >= MaxProductLimit and keyJustPressed('down') then
				ProductSelected = 1
			elseif ProductSelected <= MinProductLimit and keyJustPressed('up') then
				ProductSelected = 3
			else
				if keyJustPressed('down') then
					ProductSelected = ProductSelected + 1
				end
				if keyJustPressed('up') then
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
		if ProductSelected == 1 and keyJustPressed('right') then
                    loadSong('funny-cartoon');
            elseif ProductSelected == 2 and keyJustPressed('right') then
                    loadSong('cat-chase');
            elseif ProductSelected == 3 and keyJustPressed('right') then
                    loadSong('unstoppable-block');
		  end
          end
        end

function onTimerCompleted(tag, loops, loopsLeft)
	if keyJustPressed('left') and songName == 'Freeplay5' then
		exitMenu();
	end
end

function exitMenu()
	setDataFromSave('DataFolder', 'Money', MoneyAmount)
	exitSong(true);
end
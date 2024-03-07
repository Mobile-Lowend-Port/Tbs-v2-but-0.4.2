function onStepHit()
{
switch (curStep)
	{
	case 768:
	PlayState.triggerEventNote('Image Flash', 'JS 3', '2');
	case 832:
	PlayState.triggerEventNote('Image Flash', 'JS 3', '2');
	case 896:
	PlayState.triggerEventNote('Image Flash', 'JS 2', '0.3');
	case 960:
	PlayState.triggerEventNote('Image Flash', 'JS 3', '2');
	case 990:
	PlayState.triggerEventNote('Image Flash', 'JS 2', '0.3');
	case 1021:
	PlayState.triggerEventNote('Image Flash', 'JS 1', '0.3');
	case 1792:
	PlayState.triggerEventNote('Image Flash', 'JS 3', '2');
	case 1854:
	PlayState.triggerEventNote('Image Flash', 'JS 1', '0.3');
	case 1856:
	PlayState.triggerEventNote('Image Flash', 'JS 3', '2');
	cass 1916:
	PlayState.triggerEventNote('Image Flash', 'JS 2', '0.3');
	case 1919:
	PlayState.triggerEventNote('Image Flash', 'JS 3', '2');
	case 1949:
	PlayState.triggerEventNote('Image Flash', 'JS 1', '0.3');
	case 1979:
	PlayState.triggerEventNote('Image Flash', 'JS 2', '0.3');
	case 1984:
	PlayState.triggerEventNote('Image Flash', 'JS 3', '2');
	case 2012:
	PlayState.triggerEventNote('Image Flash', 'JS 2', '0.3');
	case 2044:
	JSchang(2, 0.3);
	}
}

function JSchang(game, time)
{
PlayState.triggerEventNote('Image Flash', 'JS' + game, time);
}
function onStepHit()
{
switch (curStep)
	{
	case 768:
	PlayState.triggerEventNote('Image Flash', 'JS 3', '2');
	case 832:
	PlayState.triggerEventNote('Image Flash', 'JS 3', '2');
	case 896:
	PlayState.triggerEventNote('Image Flash', 'JS 2', '0.2');
	case 960:
	PlayState.triggerEventNote('Image Flash', 'JS 3', '2');
	case 990:
	PlayState.triggerEventNote('Image Flash', 'JS 2', '0.3');
	case 1021:
	PlayState.triggerEventNote('Image Flash', 'JS 1', '0.3');
	}
}
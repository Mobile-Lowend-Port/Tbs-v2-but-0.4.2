function onCreate()
{
  var basement:FlxSprite = new FlxSprite(-900, -450).loadGraphic(Paths.image('basement'));
				basement.scale.set(1.1, 1.1);
        basement.scrollFactor.set(1.1, 1.1);
				basement.updateHitbox();
				add(basement);
  var CUpheqdshidACUpheqdshidA:FlxSprite = new FlxSprite(-400, -200);
	      CUpheqdshidA.frames = Paths.getSparrowAtlas('CUpheqdshidA');
        CUpheqdshidA.animation.addByPrefix('idle', 'CUpheqdshidCUpheqdshid', 24, true);
				CUpheqdshidACUpheqdshidA.scale.set(2.5, 2.5);
				CUpheqdshidACUpheqdshidA.updateHitbox();
				add(CUpheqdshidACUpheqdshidA);
}



class VHConfig extends CInGameConfigWrapper
{
	default HIGH_RES_BACKGROUND			= true;
	default	MENU_BACKDROP_IMAGES        = true;
	default	LIVE_BESTIARY               = false;
	default MEDITATION_CAMPFIRE        	= true;
	default ALTERNATIVE_MAPS        	= true;
	
	public var HIGH_RES_BACKGROUND		: bool;
	public var MENU_BACKDROP_IMAGES     : bool;
	public var LIVE_BESTIARY            : bool;
	public var MEDITATION_CAMPFIRE		: bool;
	public var ALTERNATIVE_MAPS			: bool;
	
	public function InitMod(  )
	{
	
	}
}
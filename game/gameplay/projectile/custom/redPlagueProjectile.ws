/***********************************************************************/
/** 	© 2015 CD PROJEKT S.A. All rights reserved.
/** 	THE WITCHER® is a trademark of CD PROJEKT S. A.
/** 	The Witcher game is based on the prose of Andrzej Sapkowski.
/***********************************************************************/
class W3RedPlagueProjectile extends W3LeshyRootProjectile
	
	
	var surface : CGameplayFXSurfacePost;
	
	private var damageAction 			: W3DamageAction;
	
	event OnSpawned(spawnData : SEntitySpawnData)
	{
		surface = theGame.GetSurfacePostFX();
	
		super.OnSpawned(spawnData);
		AddTimer('SurfacePostFXTimer', 0.01f, true);
	}	

	timer function SurfacePostFXTimer( deltaTime : float, id : int )
	{
		var z : float;
		var position : Vector;
		
		position = this.GetWorldPosition();
		theGame.GetWorld().NavigationComputeZ( position, -5.0, 5.0, z );
		position.Z = z + 0.3;
		this.Teleport(position);
	
		surface.AddSurfacePostFXGroup(this.GetWorldPosition(),  0.3,  5,  2 ,  1,  1 );	
		this.PlayEffect('line_fx');
	}

		var victim 			: CGameplayEntity;
		
				theGame.GetWorld().StaticTrace( projPos + Vector(0,0,3), projPos - Vector(0,0,3), projPos, normal );
				GCameraShake(1.0, true, fxEntity.GetWorldPosition(), 30.0f);

				surface.AddSurfacePostFXGroup(fxEntity.GetWorldPosition(),  0.3,  5,  2 ,  2,  1 );
		RemoveTimer('SurfacePostFXTimer');
		
		var attributeName 	: name;
		var victims 		: array<CGameplayEntity>;
		var rootDmg 		: float;
		var i 				: int;
		attributeName = GetBasicAttackDamageAttributeName(theGame.params.ATTACK_NAME_HEAVY, theGame.params.DAMAGE_NAME_PHYSICAL);
		
		
		
		FindGameplayEntitiesInRange( victims, fxEntity, 2, 99, , FLAG_OnlyAliveActors );
		if ( victims.Size() > 0 )
		{
			for ( i = 0 ; i < victims.Size() ; i += 1 )
			{
				if ( !((CActor)victims[i]).IsCurrentlyDodging() )
				{
					damageAction.Initialize( (CGameplayEntity)caster, victims[i], this, caster.GetName()+"_"+"root_projectile", EHRT_Light, CPS_AttackPower, false, true, false, false);
					damageAction.AddDamage(theGame.params.DAMAGE_NAME_ELEMENTAL, rootDmg );
					theGame.damageMgr.ProcessAction( damageAction );
					victims[i].OnRootHit();
				}
			}
		}
		delete damageAction;
		var normal : Vector;
		
			theGame.GetWorld().StaticTrace( projPos + Vector(0,0,3), projPos - Vector(0,0,3), projPos, normal );
			DelayDamage( 0.3 );

			surface.AddSurfacePostFXGroup(fxEntity.GetWorldPosition(),  0.3,  5,  2 ,  2,  1 );	
		RemoveTimer('SurfacePostFXTimer');

class W3RedPlagueGroundEffect extends CEntity
{
	event OnSpawned( spawnData : SEntitySpawnData )
	{
		super.OnSpawned( spawnData );
		
		
	}
}
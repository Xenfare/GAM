if (invulnerable = false)
{
    alarm[1] = 120;
    invulnerable = true;
    //hp -= 1;
    yspd = -8;
    knockback = directionFacing * -8;
    
    if hp <= 0 
    {
        scr_record_death("unknown")
        instance_destroy();
    }
}

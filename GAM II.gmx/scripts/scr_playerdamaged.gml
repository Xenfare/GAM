if (invulnerable = false)
{
    alarm[1] = 120;
    invulnerable = true;
    hp -= 1;
    yspd = -8;
    knockback = directionFacing * -8;
    
    if hp <= 0 
    {
        instance_destroy();
    }
}

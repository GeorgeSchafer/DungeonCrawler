// NOTE: this actor already exists in GZDoom and doesn't need to be redefined
// I'm using it purely as an example.

class BigTree : Actor
{
    Default
    {
        Radius {type: 'integer'}; //actor's width (collision with monster/player)
        Height {type: 'integer'}; //actor's height (collision with monster/player)
        ProjectilePassHeight {type: 'integer'}; //reduces vertical hitbox for projectiles by 16 units
        +SOLID //solid: other actors/projectiles can't pass through it, hitscan attacks can
    }
    States
    {
    Spawn:
        TRE2 A -1; //setting duration to -1 makes it not animate
        Stop;
    }
}
If you want to define a custom version of BigTree that is similar to the existing one, you can do it by using inheritance:

class SmallerTree : BigTree
{
    Default 
    {
        Scale {type: 'double'}; //this makes the actor's sprite visually smaller
        Radius {type: 'integer'}; //radius and height need to be redefined manually
        Height {type: 'integer'};
    }
}
// In this example states aren't redefined because
// we're reusing the existing animation from BigTree

# Crypt Marauder
Crypt Marauder is a top-down adventure game where the player explores the depths of a hidden tomb in search of treasure

Created using GameMaker Studio 2

## Rules
To play:
1. Clone repository
2. Open in GameMaker Studio 2
3. Run project

To win Crypt Marauder, the player must clear various rooms of enemies, solve riddles, and defeat the final boss at the end of the game.

In Crypt Marauder there are three types of enemies:
1. Skeleton
2. Mummy
3. Summoner Mummy

The **skeleton** is the most basic enemy. The skeleton will chase the player and attempt to melee attack them if they are in range.\
The **mummy** is a ranged enemy that will shoot at the player. If the player is too close to the enemy, the mummy will back away attempting to avoid the player.\
The **summoner mummy** has the same functionality of the normal mummy, but will summon skeletons every seven seconds as long as it's alive.

To advance, the player must clear all the rooms and after doing so they will be rewarded with a gem that may be placed in the pedestal at the main room.
Once all gems have been collected and placed in the pedestal, the player must then solve three riddles with various objects collected in the other three rooms.
After solving the riddle, the player advances to the final room where the player must face Anubis.

Anubis has the most intelligent behaviour of the enemies. Anubis will stick to a basic path within his room and shoot attack projectiles at the player. 
However, when the player approaches Anubis, he will break from his path and slowly back away from the player. 
If the player ends up getting too close to Anubis, then he will stop backing away and instead rush the player and hit them with a melee attack.
Once the player has distanced themsevles away from his avoidance and melee range he will return to his basic path. After Anubis has fallen below a certain
health threshold. He will then start summoning projectile shields around him to defend himself when the player gets close.
Having all three lives remaining going into the fight is strongly advised.

## Menu Screen
![image](https://user-images.githubusercontent.com/37620953/145264399-ac14f0eb-11f0-4ef8-8040-f33548c8ccbd.png)

## Game State
![image](https://user-images.githubusercontent.com/37620953/145264620-9c2a555f-b02c-4e63-88ed-091bfec7eb4e.png)

## Anubis
![image](https://user-images.githubusercontent.com/37620953/145264906-d6b400b6-c564-4ce6-a804-85182ef5c31f.png)

## Controls
Move Up
```
W or Up Arrow
```

Move Down
```
S or Down Arrow
```

Move Left
```
A or Left Arrow
```

Move Right
```
D or Right Arrow
```

Attack
```
Space
```

Interact
```
E
```


## Cheat Codes
Extra Life
```
Alt + Q
```

Heal
```
Alt + F
```

Return to Spawn
```
Alt + R
```

Restart
```
Esc
```

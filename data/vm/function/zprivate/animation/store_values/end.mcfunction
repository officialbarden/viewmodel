# scoreboard players operation @s vm.ANIM.STOP = FIRST_FRAME vm.ENV
scoreboard players set @s vm.ANIM.STOP 0
$execute store result score #END vm.ANIM.STOP run data get storage vm:storage vm.REGISTRY[{id: "$(id)"}].animations[{name:"$(animation_name)"}].end
scoreboard players operation @s vm.ANIM.STOP += #END vm.ANIM.STOP
$execute store result score @s vm.ANIM.DUR run data get storage vm:storage vm.REGISTRY[{id: "$(id)"}].animations[{name:"$(animation_name)"}].duration

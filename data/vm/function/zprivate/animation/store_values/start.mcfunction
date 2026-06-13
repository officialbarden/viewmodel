scoreboard players set @s vm.ANIM.START 0
$execute store result score #END vm.ANIM.START run data get storage vm:storage vm.REGISTRY[{id: "$(id)"}].animations[{name:"$(animation_name)"}].start

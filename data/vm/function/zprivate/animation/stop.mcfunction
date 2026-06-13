# // Stop at Current Keyframe:
scoreboard players set #MATH vm.ANIM.TIMER 0
scoreboard players operation #MATH vm.ANIM.TIMER += @s vm.ANIM.KEYFRAME
scoreboard players operation #MATH vm.ANIM.TIMER += FIRST_FRAME vm.ENV
execute store result storage vm:storage vm.TEMP.MACRO.FRAME int 1 run scoreboard players get #MATH vm.ANIM.TIMER
function vm:zprivate/animation/set_status/current_keyframe with storage vm:storage vm.TEMP.MACRO

tag @s remove vm.isAnimating
scoreboard players reset @s vm.ANIM.TIMER

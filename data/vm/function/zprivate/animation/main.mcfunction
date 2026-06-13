
# // REDUNDANT....
# // Store data in handheld viewmodel item.
# function vm:zprivate/animation/update/main
# // REDUNDANT....


# // RUN Keyframe Specific Functions:
execute store result storage vm:storage vm.TEMP.MACRO.KEYFRAME int 1 run scoreboard players get @s vm.ANIM.KEYFRAME
function vm:zprivate/animation/store_values/init
function vm:zprivate/animation/keyframe_func/init with storage vm:storage vm.TEMP.MACRO

# // Stop Animation if animation ends.
execute if score @s vm.ANIM.KEYFRAME >= @s vm.ANIM.STOP unless score @s vm.ANIM.STOP matches ..-1 run return run function vm:zprivate/animation/stop

# // Increment Timer in data.
scoreboard players add @s vm.ANIM.TIMER 1
scoreboard players add @s vm.ANIM.KEYFRAME 1

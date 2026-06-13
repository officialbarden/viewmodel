# // Macros:
    # $(args):
        # id?: change the item
        # animation?: set the animation
        # frame?: set the frame

# // Give this tag to increment the player's Animation Timer
tag @s add vm.isAnimating

# // Set Score to 8388608 to pause the animation at the correct end keyframe.
scoreboard players operation @s vm.ANIM.TIMER = FIRST_FRAME vm.ENV

# // Apply Arguments:
    # args: {id, animation, frame}
    data remove storage vm:storage vm.TEMP.ARGS
    $data modify storage vm:storage vm.TEMP.ARGS set value $(args)
    function vm:zprivate/animation/apply_arguments/main with storage vm:storage vm.TEMP.ARGS

# // Set End Score:
function vm:zprivate/animation/store_values/init
function vm:zprivate/animation/store_values/start with storage vm:storage vm.TEMP.MACRO
function vm:zprivate/animation/store_values/end with storage vm:storage vm.TEMP.MACRO

# // GET TIME OFFSET AND STORE IT IN COLOR SLOT
execute store result storage vm:storage vm.TEMP.MACRO.STARTING_FRAME int 1 run function vm:zprivate/animation/time_offset_calc/main
function vm:zprivate/animation/set_status/starting_frame with storage vm:storage vm.TEMP.MACRO

scoreboard players set @s vm.ANIM.KEYFRAME 0



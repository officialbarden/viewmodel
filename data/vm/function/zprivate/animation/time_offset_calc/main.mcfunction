# ((([/time query gametime] % 24000) - starting frame) % total duration)
execute store result score #GAMETIME vm.MATH run time query gametime
scoreboard players operation #GAMETIME vm.MATH %= GAMETIME_CONST vm.ENV

# // Set starting frame
scoreboard players operation #STARTING_FRAME vm.MATH = @s vm.ANIM.START
scoreboard players operation #GAMETIME vm.MATH -= #STARTING_FRAME vm.MATH

# Get the total duration of animation
scoreboard players operation #TOTAL_DURATION vm.MATH = @s vm.ANIM.DUR
scoreboard players operation #GAMETIME vm.MATH %= #TOTAL_DURATION vm.MATH

# // Copy Time Offset in R,G,B to phase shift.

# // RETURN VALUE.
# title @a actionbar {score:{name:"#SUM", objective:"vm.MATH"}}
# tellraw @a ["STARTING FRAME:", {score:{name:"#GAMETIME", objective:"vm.MATH"}}]
# return run scoreboard players get #GAMETIME vm.MATH
return run scoreboard players get #GAMETIME vm.MATH

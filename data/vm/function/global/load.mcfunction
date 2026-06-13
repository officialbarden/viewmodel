
# // VIEWMODEL ANIMATIONS REGISTRY
data remove storage vm:storage vm.TEMP
data modify storage vm:storage vm.REGISTRY set value [\
    ]

# // ENV Variables. (config/global variables scoreboard)
scoreboard objectives add vm.ENV dummy
    # Any value less than this will make the animation loop continuously, 
    # this value will make the model stuck on the 0th frame, 
    # and subsequent values (8388608 + n) imply the model gets stuck on the nth frame.
    # https://github.com/Godlander/objmc#controlling-animation
    scoreboard players set FIRST_FRAME vm.ENV 8388608
    # SMOOTH_ANIMATION = TRUE; will turn off item merging and toggle autoplay ON.
    scoreboard players set SMOOTH_ANIMATION vm.ENV 1
    scoreboard players set GAMETIME_CONST vm.ENV 24000

# // Animation Timer
scoreboard objectives add vm.ANIM.TIMER dummy

# // These values change based on the animation.
    # Animation Store Values
    scoreboard objectives add vm.ANIM.KEYFRAME dummy
    scoreboard objectives add vm.ANIM.START dummy
    # Animation Store Values
    scoreboard objectives add vm.ANIM.STOP dummy
    scoreboard objectives add vm.ANIM.DUR dummy

# // Other Scoreboards:
scoreboard objectives add vm.MATH dummy
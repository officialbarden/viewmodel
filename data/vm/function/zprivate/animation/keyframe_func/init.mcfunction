# // Get Function Name:
data remove storage vm:storage vm.TEMP.MACRO.KEYFRAME_FUNCTION
$data modify storage vm:storage vm.TEMP.MACRO.KEYFRAME_FUNCTION set from storage vm:storage vm.REGISTRY[{id: "$(id)"}].animations[{name: "$(animation_name)"}].keyframe_functions[{at: $(KEYFRAME)}].function_file
function vm:zprivate/animation/keyframe_func/macro with storage vm:storage vm.TEMP.MACRO


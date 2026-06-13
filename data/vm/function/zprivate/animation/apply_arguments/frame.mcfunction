# scoreboard players operation @s vm.ANIM.TIMER = FIRST_FRAME vm.ENV
$scoreboard players add @s vm.ANIM.TIMER $(frame)
$scoreboard players add @s vm.ANIM.START $(frame)
$scoreboard players set @s vm.ANIM.KEYFRAME $(frame)

```
```
# About Me
Vanilla Viewmodels is a Datapack Library which adds an "animation controller" for your OBJMC rendered viewmodels ingame. To work with the datapack, you must have:
- An Animated (Generic in Blockbench) Model.
- [objmc](https://github.com/Godlander/objmc) installed locally.
- A Basic Understanding of How Resourcepacks and Datapacks work.
```
```
# Utility:
- ## How it works.
  Since objmc only exports model+texture, it should be noted that the datapack adopts certain conventions to make sure that it works as intended. OBJMC, by default, will not "prepare you a datapack/resourcepack" like how plugins like AnimatedJava does. Hence, creating a resourcepack that correctly follows this datapack's convention is CRUCIAL.

### Model in Resourcepack
The optional 'id' parameter accepted in the "play-animation" utils command requires a valid item_model component value. Since every objmc animation exports into its own model+texture, you must:
- Create an Item Model JSON that resembles the model. `e.g. 'first_person:weapons/glock' at assets/first_person/items/weapons/glock.json`
- Animations for the Model MUST be included in this item_model folder, where the "model with animation" is a model toggled when **STRING CUSTOM-MODEL-DATA value === ANIMATION-NAME**.
![code snippet](https://cdn.modrinth.com/data/cached_images/b78abdc2a361919693921e38f729714d987f31bf.png)
Hence, every animation is a CustomModelData string in the item_model JSON file. Obviously, this implies that adding multiple animations would mean that you'll have to export every animation into its OBJ sequences => put them through OBJMC.py => take the condensed model and mention it in the item_model component.

### Registering Models in Datapack.
To Register an OBJMC Animated Model in the datapack, open the function file `vm:global/load` and add a registry in the data modify line!
![code snippet](https://cdn.modrinth.com/data/cached_images/7ed5ff9777292c1a3e8a6a5320d5e819c47781b7.png)

Here's how a registry entry's structure looks like:
```
{
  id: "first_person:weapons/glock", // item_model component
  animations: [
      {
          "name":"equip",
          "start": 0,
          "end": 30,
          keyframe_functions: [
            { at: 0, function_file: 'test:equip' },       // Run a function file @ 0th keyframe.
            { at: 30, function_file: 'test:end_animation' },
            { at: 25, function_file: 'test:gun_sfx' }
          ]
      },
      {
          "name": "shoot1",
          "start": 0,
          "end": 8,
          "keyframe_functions": [
              { at: 0, function_file: 'gun:shoot' }
          ]
      }
  ]
}
```


- ## Playing an Animation
to play an Animation, run the command:
```
function vm:animations/play {args:{}}
```
the `args:{}` field is used to tweak parameters, namely:
```
id: it stores/applies the *item_model* component value
animation: it stores the name of the animation.
frame: the frame at which the animation should start.
```
an example command: 
```
function vm:animations/play {args:{id:"first_person:weapons/glock", animation: "equip", frame: 10}}
```
This command will,
- change the item model of the potion item to first_person_weapons/glock
- set the animation-to-be-played to "equip" (this is handled by setting animation name equal to custom_model_data string that changes the model into one with different animation texture data)
- set the starting frame to 0 (potion color is set to [8388608+10](https://github.com/Godlander/objmc#controlling-animation))
```
```
- ## Stopping an Animation
to stop an animation, simply run the command: 
```
function vm:animations/stop
```
```
```
# Credits
- [Godlander](https://github.com/Godlander) [& the contributors on objmc github repository.] —— For Making OBJMC (and thus, viewmodels) in Minecraft possible!
- GhostScoutW (@ghostscout on discord) —— For making a [Guide on how to setup a working viewmodel project with OBJMC](https://www.youtube.com/watch?v=Kmbc9LyhDoA)!
- pinkiuses (creator of [ATMOS: Minecraft Edition](https://modrinth.com/modpack/atmos_roguelike)) —— For coming up with the idea of using OBJMC as viewmodels!
- And you!
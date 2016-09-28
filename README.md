# SpellCraft
SpellCraft is ruby based mini-game that is used as a demo to my FYP project - a Skill Crafting System (SCS).
The purpose of this game is using SCS to create skills for the characters, and let them use those skills to fight through an endless battle arena.

Structure of this project:

Game System:
    Implement in game.rb. Controls Game flow.
Game Content:
    Implement in attribute.rb battle.rb character.rb effect.rb field.rb spell.rb. They are basic class for game objects.
Game World Record:
    Located in \world_descripter folder. Each Records necessary global variable and game objects like information about field/NPC and so on. 
Game Engine:
    Implement in engine.rb. Modifies Game World Record.
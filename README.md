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

Architecture Explanation:
    This game is now going to be developed as a simple game engine. Currenlty, the building block of a game is defined as Attribute
    Attribute class is the primary class of this engine. Other common game objects like Characters, Items are considered secondary classes.
    Secondary class does not have built-in attributes except Class Variables, all attributes needed to decribe the class is defined in attribute.wd.
    Due to this architecture, secondary class need to "load" attributes for this specific class before use.
    For each instance, a hash of Attributes is used to simulate normal behaviour of normal attributes.
// Module description (must inherit from base class, otherwise pre-defined entities won't be available):
class ModuleDescription : ModuleDescription
{
    description[] = {
    "A shop desk will spawn in at the position and direction of this module"
    };
    
    position  = 0; // Position is taken into effect
    direction = 0; // Direction is taken into effect
    optional  = 0; // Synced entity is optional
    duplicate = 0; // Multiple entities of this type can be synced
    synced[]  = {"AnyPerson", "GroupModifiers"};
};
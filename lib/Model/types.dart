enum IdeaType {character_concept_art, environment_concept_art, object_concept_art; 

static List<String> stringValues() => IdeaType.values.map((e) => e.name.replaceAll(RegExp('_'), ' ')).toList();}

enum IdeaTheme {
  science_fiction, fantasy,  mitology, real_life;
  static List<String> stringValues() => IdeaTheme.values.map((e) => e.name.replaceAll(RegExp('_'), ' ')).toList();
}

enum Mood{
  dramatic, scary, uplifting, calm, sad;
  static List<String> stringValues() => Mood.values.map((e) => e.name.replaceAll(RegExp('_'), ' ')).toList();
}
enum ObjectType{
  everyday_use_object, weapon, accesory, armour, furniture;
  static List<String> stringValues() => ObjectType.values.map((e) => e.name.replaceAll(RegExp('_'), ' ')).toList();
}

enum CharacterType {human, humanoid_creature, creature ;
static List<String> stringValues() => CharacterType.values.map((e) => e.name.replaceAll(RegExp('_'), ' ')).toList();}

enum CreatureType {fantasy, mythical, science_fiction, animal_based ;
static List<String> stringValues() => CreatureType.values.map((e) => e.name.replaceAll(RegExp('_'), ' ')).toList();}

enum EnvironmentType {open_space, building_design, interior_design;
static List<String> stringValues() => EnvironmentType.values.map((e) => e.name.replaceAll(RegExp('_'), ' ')).toList();}

enum EnvironmentBuildingType{ temple, apartment_building, store, castle, }

//enum WorldType {alien_planet, earth}    delete - it wil be checking condition for scifi fantasy reallife
enum EnvironmentOpenSpace {cave, dessert, forest, mountains;
static List<String> stringValues() => EnvironmentOpenSpace.values.map((e) => e.name.replaceAll(RegExp('_'), ' ')).toList();}

enum EnvironmentAlienPlanet {deep_space_alien_planet, volcanic_alien_planet, underwater_alien_planet, alien_planet_with_touch_conditions ;
static List<String> stringValues() => EnvironmentAlienPlanet.values.map((e) => e.name.replaceAll(RegExp('_'), ' ')).toList();}

enum CharacterOccupation {detective, artist, soldier, craftsman, officeWorker, scientist, explorer, traveler }

//czegoś brakuje - rozwój technologoiczny?
enum RealLifeType{nowaday, medieval, ancient, futuristic;
static List<String> stringValues() => RealLifeType.values.map((e) => e.name.replaceAll(RegExp('_'), ' ')).toList();}

//type of society?
enum ScienceFictionType {bio_technology, cyberware ,post_apocalyptic, futuristic, steam_punk, alien, dystopian, space_technology, advanced_technology;
static List<String> stringValues() => ScienceFictionType.values.map((e) => e.name.replaceAll(RegExp('_'), ' ')).toList(); }
//steamPunk - fantasy+science fiction in industrial era 
enum FantasyType {historical_fantasy, sword_and_sorcery, supernatural, dark_fantasy, high_fantasy, low_fantasy ;
static List<String> stringValues() => FantasyType.values.map((e) => e.name.replaceAll(RegExp('_'), ' ')).toList();}
//also robots also - an option to create a fantastical scienceFiction etc
// fe vampire/siren is a creature

//robotic beast?
enum MitologyType {norse_mitology,korean_mitology,mongol_mitology,taiwanese_mitology, thai_mitology, persian_mitology,mesopotamian_mitology,arabian_mitology, baltic_mitology, slavic_mitology ,greek_miotlogy, roman_mitology, egyptian_mitology, chinese_mitology, celtic_mitology, japanese_mitology ;
static List<String> stringValues() => MitologyType.values.map((e) => e.name.replaceAll(RegExp('_'), ' ')).toList();}

enum AgeGroup{child, teenager, adult, youngAdult, middlea_aged, elder }
enum Nationality{none}

// optional add specifics - to generate details for additional idea

//based on use - weapon, everydayUse, furniture etc

enum ColorPaletteType {warm, cold;
static List<String> stringValues() => ColorPaletteType.values.map((e) => e.name.replaceAll(RegExp('_'), ' ')).toList();
}

enum ColorPaletteWarm {none}

enum ColorPaletteCold {none}

enum ColorPaletteDescription {light_shades, dark_shades, desaturated, saturated}
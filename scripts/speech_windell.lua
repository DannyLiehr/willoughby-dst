return {
	ACTIONFAIL =
	{
		BUILD =
        {
            MOUNTED = "My tiny hands can't reach!",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "I'd rather not shave that.",
			GENERIC = "I can't shave that!",
			NOBITS = "There's nothing left to shave!",
		},
		STORE =
		{
			GENERIC = "I can't fit this in there.",
			NOTALLOWED = "I don't think this goes there...",
			INUSE = "Oh, sorry. I'll wait.",
		},
		RUMMAGE =
		{	
			GENERIC = "I can't search that.",
			INUSE = "Oh, sorry. I'll wait.",	
		},
        COOK =
        {
            GENERIC = "I can't cook that.",
            INUSE = "Oh, sorry. I'll wait.",
        },
        GIVE =
        {
            DEAD = "Maybe I'll just hold on to this.",
            SLEEPING = "I'll wait until they're awake.",
            BUSY = "I'll try again in a second.",
        },
        GIVETOPLAYER = 
        {
        	FULL = "Their pockets are too full!",
            DEAD = "Maybe I'll just hold on to this.",
            SLEEPING = "I'll wait until they're awake.",
            BUSY = "I'll try again in a second.",
    	},
    	GIVEALLTOPLAYER = 
        {
        	FULL = "Their pockets are too full!",
            DEAD = "Maybe I'll just hold on to this.",
            SLEEPING = "I'll wait until they're awake.",
            BUSY = "I'll try again in a second.",
    	},
		  MOUNT =
        {
            INUSE = "Maybe I can find a horse to ride instead.",
        },
		  SADDLE =
        {
            TARGETINCOMBAT = "He's too mad!",
        },
        TEACH =
        {
            KNOWN = "I learned that one already!",
            CANTLEARN = "I don't get it.",
        },
	},
	ACTIONFAIL_GENERIC = "I can't do that.",
	ANNOUNCE_ADVENTUREFAIL = "That didn't go well. I'll have to try again.",
	ANNOUNCE_BEES = "BEEEEEEEEEEEEES!!!!",
	ANNOUNCE_BOOMERANG = "Ouchie!",
	ANNOUNCE_CHARLIE = {"Who's there?", "Hi?", "That was a scary noise!",},
	ANNOUNCE_CHARLIE_ATTACK = "OUCH!",
	ANNOUNCE_COLD = "I don't have fur to stay warm!",
	ANNOUNCE_HOT = "It's too hot...!",
	ANNOUNCE_CRAFTING_FAIL = "I don't have all of the ingredients.",
	ANNOUNCE_DEERCLOPS = "Let's skedattle!",
	ANNOUNCE_DUSK = "It's starting to be my bed time.",
	ANNOUNCE_EAT =
	{
		GENERIC = "Yum!",
		PAINFUL = "That hurt going down.",
		SPOILED = "That was rotten!",
		STALE = "That wasn't fresh at all.",
		INVALID = "I can't eat that!",
		YUCKY = "I won't eat it!",
	},
	ANNOUNCE_ENTER_DARK = "I can't see!",
	ANNOUNCE_ENTER_LIGHT = "Oh, thank goodness!",
	ANNOUNCE_FREEDOM = "I'm free! I'm finally free!",
	ANNOUNCE_HIGHRESEARCH = "I feel so smart now!",
	ANNOUNCE_HOUNDS = {"I need to run away...", "I'm scared!", "I'm not a good fighter...",},
	ANNOUNCE_WORMS = "I'm scared!",
	ANNOUNCE_HUNGRY = "I'm starving!",
	ANNOUNCE_HUNT_BEAST_NEARBY = "Do we have to do this?",
	ANNOUNCE_HUNT_LOST_TRAIL = "The animal ran away. Good.",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "That's okay. I'll make a friend in the summer.",
	ANNOUNCE_INV_FULL = "I don't have any room for this.",
	ANNOUNCE_KNOCKEDOUT = "Ugh, my head!",
	ANNOUNCE_LOWRESEARCH = "I didn't learn very much from that.",
	ANNOUNCE_MOSQUITOS = "Eeek!",
	ANNOUNCE_NOWARDROBEONFIRE = "I'm not getting in this!",
    ANNOUNCE_NODANGERGIFT = "Something tells me the monsters won't be happy to see my gift.",
	ANNOUNCE_NODANGERSLEEP = "They'll find me!",
	ANNOUNCE_NODAYSLEEP = "Sleeping in the day is bad.",
	ANNOUNCE_NODAYSLEEP_CAVE = "It's scary down here..",
	ANNOUNCE_NOHUNGERSLEEP = "I'm hungry!",
	ANNOUNCE_NOSLEEPONFIRE = "That seems like a bad idea...",
	ANNOUNCE_NODANGERSIESTA = "I can't nap now!",
	ANNOUNCE_NONIGHTSIESTA = "Might as well just sleep.",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "I can't nap down here. I'm scared!",
	ANNOUNCE_NOHUNGERSIESTA = "I'm too hungry for a siesta!",
	ANNOUNCE_NODANGERAFK = "Now's not the time to flee this fight!",
	ANNOUNCE_NO_TRAP = "Well, that was easy.",
	ANNOUNCE_PECKED = "Ow! Quit it!",
	ANNOUNCE_QUAKE = "That doesn't sound good.",
	ANNOUNCE_RESEARCH = "Never stop learning!",
	ANNOUNCE_SHELTER = "Thanks for the protection from the elements, tree!",
	ANNOUNCE_THORNS = "Ow!",
	ANNOUNCE_BURNT = "Yikes! That was hot!",
	ANNOUNCE_TORCH_OUT = "My light just ran out!",
	ANNOUNCE_TRAP_WENT_OFF = "Oops.",
	ANNOUNCE_UNIMPLEMENTED = "OW! I don't think it's ready yet.",
	ANNOUNCE_WORMHOLE = "That was not a sane thing to do.",
	ANNOUNCE_CANFIX = "\nI think I can fix this!",
	ANNOUNCE_ACCOMPLISHMENT = "I feel so accomplished!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "If only my friends could see me now...",	
	ANNOUNCE_INSUFFICIENTFERTILIZER = "Are you still hungry, plant?",
	ANNOUNCE_TOOL_SLIP = "Wow that tool is slippery!",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "Safe from that frightening lightning!",

	ANNOUNCE_DAMP = "Oh, H2O.",
	ANNOUNCE_WET = "My clothes appear to be permeable.",
	ANNOUNCE_WETTER = "Water way to go!",
	ANNOUNCE_SOAKED = "I've nearly reached my saturation point.",
	
	ANNOUNCE_BECOMEGHOST = "ooOOoooOOOoOooo!!",
	ANNOUNCE_GHOSTDRAIN = "My humanity is about to start slipping away...",

	DESCRIBE_SAMECHARACTER = "Is that a mirror?",
	
	BATTLECRY =
	{
		GENERIC = "Go for the eyes!",
		PIG = "Here piggy piggy!",
		PREY = "I will destroy you!",
		SPIDER = "I'm going to stomp you dead!",
		SPIDER_WARRIOR = "Better you than me!",
	},
	COMBAT_QUIT =
	{
		GENERIC = "I sure showed him!",
		PIG = "I'll let him go. This time.",
		PREY = "He's too fast!",
		SPIDER = "He's too gross, anyway.",
		SPIDER_WARRIOR = "Shoo, you nasty thing!",
	},
	DESCRIBE =
	{
    --Modded Entities--
		DOC = 
		{
			GENERIC = "Thank goodness I've found you, Mister %s.",
			ATTACKER = "%s, I will not tolerate assault.",
			MURDERER = "That's it, %s, you murderer! You'll be punished to the full extent!",
			REVIVER = "That's the spirit, %s.",
			GHOST = "Oh dear... The Commanding Officer will not be happy to hear about this one.",
			FIRESTARTER = "%s, do not destroy our environment, it's protected by law!",
		},
		WILL = 
		{
			GENERIC = "Thank goodness I've found you, %s.",
			ATTACKER = "Mister %s, are you okay?",
			MURDERER = "I always knew you were as scary as they said, %s! Murderer!",
			REVIVER = "You're a great friend, Mister %s.",
			GHOST = "Don't worry, Mister %s! I'll help you!",
			FIRESTARTER = "%s, fire doesn't solve people being hurt!",
		},
	RASPBERRYBUSH = 
	{
		BARREN = "With some love and care, I can make it better!",
		WITHERED = "It's ok little bush. It's too hot for me too.",
		GENERIC = "Raspberries!",
		PICKED = "Aww, at least more will come back...",
},
	MISSING_POST = 
		{
            GENERIC = "Hey, that's Mister Wilson!",
            WILL = "Hey, it's me!",
			BURNING = "I can't read it like that!",
        },
		
	RASPBERRY = "Sweet and tart!",
	RASPERRY_COOKED = "Mushy!",
	INUKSUK = "My ancestors used these to mark the way.",
	--End Modded Entities		
		PLAYER =
        {
            GENERIC = "It's %s!",
            ATTACKER = "%s looks shifty...",
            MURDERER = "Murderer!",
            REVIVER = "%s, friend of ghosts.",
            GHOST = "%s could use a heart.",
			FIRESTARTER = "That was really mean, %s!",
        },
		WILSON = 
		{
			GENERIC = "Mister %s looks familiar...",
			ATTACKER = "You can't be %s that I knew...",
			MURDERER = "I always knew scientists were scary, %s! Murderer!",
			REVIVER = "Thank you, Mister %s!",
			GHOST = "Don't worry, Mister %s! I'll help you!",
			FIRESTARTER = "That was really mean, %s!",
		},
		WOLFGANG = 
		{
			GENERIC = "It's Wolfgang!",
			ATTACKER = "Wolfgang looks shifty...",
			MURDERER = "Murderer!",
			REVIVER = "Wolfgang, friend of ghosts.",
			GHOST = "Wolfgang could use a heart.",
			FIRESTARTER = "That was really mean, %s!",
		},
		WAXWELL = 
		{
			GENERIC = "It's Maxwell!",
			ATTACKER = "Maxwell looks shifty...",
			MURDERER = "Murderer!",
			REVIVER = "Maxwell, friend of ghosts.",
			GHOST = "Maxwell could use a heart.",
			FIRESTARTER = "That was really mean, %s!",
		},
		WX78 = 
		{
			GENERIC = "It's WX-78!",
			ATTACKER = "WX-78 looks shifty...",
			MURDERER = "Murderer!",
			REVIVER = "WX-78, friend of ghosts.",
			GHOST = "WX-78 could use a heart.",
			FIRESTARTER = "That was really mean, %s!",
		},
		WILLOW = 
		{
			GENERIC = "It's Willow!",
			ATTACKER = "Willow looks shifty...",
			MURDERER = "Murderer!",
			REVIVER = "Willow, friend of ghosts.",
			GHOST = "Willow could use a heart.",
			FIRESTARTER = "That was really mean, %s!",
		},
		WENDY = 
		{
			GENERIC = "It's Wendy!",
			ATTACKER = "Wendy looks shifty...",
			MURDERER = "Murderer!",
			REVIVER = "Wendy, friend of ghosts.",
			GHOST = "Wendy could use a heart.",
			FIRESTARTER = "That was really mean, %s!",
		},
		WOODIE = 
		{
			GENERIC = "It's Woodie!",
			ATTACKER = "Woodie looks shifty...",
			MURDERER = "Murderer!",
			REVIVER = "Woodie, friend of ghosts.",
			GHOST = "Woodie could use a heart.",
			FIRESTARTER = "That was really mean, %s!",
		},
		WICKERBOTTOM = 
		{
			GENERIC = "It's Wickerbottom!",
			ATTACKER = "Wickerbottom looks shifty...",
			MURDERER = "Murderer!",
			REVIVER = "Wickerbottom, friend of ghosts.",
			GHOST = "Wickerbottom could use a heart.",
			FIRESTARTER = "That was really mean, %s!",
		},
		WES = 
		{
			GENERIC = "It's Wes!",
			ATTACKER = "Wes looks shifty...",
			MURDERER = "Murderer!",
			REVIVER = "Wes, friend of ghosts.",
			GHOST = "Wes could use a heart.",
			FIRESTARTER = "That was really mean, %s!",
		},
		WATHGRITHR = 
		{
			GENERIC = "It's Wigfrid!",
			ATTACKER = "Wigfid looks shifty...",
			MURDERER = "Murderer!",
			REVIVER = "Wigfrid, friend of ghosts.",
			GHOST = "Wigfrid could use a heart.",
			FIRESTARTER = "That was really mean, %s!",
		},
		MULTIPLAYER_PORTAL = "It's rickety, but it appears to function. After a fashion...",
		GLOMMER = "It's cute, in a gross kind of way.",
		GLOMMERFLOWER = 
		{
			GENERIC = "The petals shimmer in the light.",
			DEAD = "The petals droop and shimmer in the light.",
		},
		GLOMMERWINGS = "These would look awesome on a helmet!",
		GLOMMERFUEL = "This goop smells foul.",
		BELL = "Dingalingaling.",
		STATUEGLOMMER = 
		{	
			GENERIC = "I'm not sure what that's supposed to be.",
			EMPTY = "I broke it. For science.",
		},

		WEBBERSKULL = "Poor little guy. He deserves a proper funeral.",
		WORMLIGHT = "Looks delicious.",
		WORM =
		{
		    PLANT = "Seems safe to me.",
		    DIRT = "Just looks like a pile of dirt.",
		    WORM = "It's a worm!",
		},
		MOLE =
		{
			HELD = "Nowhere left to dig, my friend.",
			UNDERGROUND = "Something's under there, searching for minerals.",
			ABOVEGROUND = "I'd sure like to whack that mole... thing.",
		},
		MOLEHILL = "What a nice hole in the ground for a home!",
		MOLEHAT = "A wretched stench but excellent visibility.",

		EEL = "It's still moving!",
		EEL_COOKED = "Smells terrible.",
		UNAGI = "It's a nice looking food, I'll give it that.",
		EYETURRET = "I hope it doesn't turn on me.",
		EYETURRET_ITEM = "I think it's sleeping.",
		MINOTAURHORN = "It's sharp.",
		MINOTAURCHEST = "It may contain a bigger something fantastic! Or horrible.",
		THULECITE_PIECES = "It's some smaller chunks of Thulecite.",
		POND_ALGAE = "Some algae by a pond.",
		GREENSTAFF = "This will come in handy.",
		POTTEDFERN = "A fern in a pot.",

		THULECITE = "I wonder where this is from?",
		ARMORRUINS = "It's oddly light.",
		RUINS_BAT = "It has quite a heft to it.",
		RUINSHAT = "Fit for a king. Or me.",
		NIGHTMARE_TIMEPIECE =
		{
		CALM = "All is well.",
		WARN = "Getting pretty magical around here.",
		WAXING = "I think it's becoming more concentrated!",
		STEADY = "It seems to be staying steady.",
		WANING = "Feels like it's receding.",
		DAWN = "The nightmare is almost gone!",
		NOMAGIC = "There's no magic around here.",
		},
		BISHOP_NIGHTMARE = "It's falling apart!",
		ROOK_NIGHTMARE = "Terrifying!",
		KNIGHT_NIGHTMARE = "It's a knightmare!",
		MINOTAUR = "That thing doesn't look happy.",
		SPIDER_DROPPER = "Note to self: Don't look up.",
		NIGHTMARELIGHT = "I wonder what function this served.",
		NIGHTSTICK = "It's electric!",
		GREENGEM = "It's green and gemmy.",
		RELIC = "Ancient household goods.",
		RUINS_RUBBLE = "This can be fixed.",
		MULTITOOL_AXE_PICKAXE = "It's brilliant!",
		ORANGESTAFF = "This beats walking.",
		YELLOWAMULET = "Warm to the touch.",
		GREENAMULET = "Just when I thought I couldn't get any better.",
		SLURPERPELT = "Doesn't look much different dead.",	

		SLURPER = "It's so hairy!",
		SLURPER_PELT = "Doesn't look much different dead.",
		ARMORSLURPER = "A soggy, sustaining, succulent suit.",
		ORANGEAMULET = "Teleportation can be so useful.",
		YELLOWSTAFF = "I put a gem on a stick.",
		YELLOWGEM = "This gem is yellow.",
		ORANGEGEM = "It's an orange gem.",
		TELEBASE = 
		{
			VALID = "It's ready to go.",
			GEMS = "It needs more purple gems.",
		},
		GEMSOCKET = 
		{
			VALID = "Looks ready.",
			GEMS = "It needs a gem.",
		},
		STAFFLIGHT = "That seems really dangerous.",
	
        ANCIENT_ALTAR = "An ancient and mysterious structure.",

        ANCIENT_ALTAR_BROKEN = "This seems to be broken.",

        ANCIENT_STATUE = "It seems to throb out of tune with the world.",

        LICHEN = "Only a cyanobacteria could grow in this light.",
		CUTLICHEN = "Nutritious, but it won't last long.",

		CAVE_BANANA = "It's mushy.",
		CAVE_BANANA_COOKED = "Yum!",
		CAVE_BANANA_TREE = "It's dubiously photosynthetical.",
		ROCKY = "It has terrifying claws.",
		
		COMPASS =
		{
			GENERIC="I can't get a reading.",
			N = "North",
			S = "South",
			E = "East",
			W = "West",
			NE = "Northeast",
			SE = "Southeast",
			NW = "Northwest",
			SW = "Southwest",
		},

		NIGHTMARE_TIMEPIECE =	-- Duplicated
		{
			WAXING = "I think it's becoming more concentrated!",
			STEADY = "It seems to be staying steady.",
			WANING = "Feels like it's receding.",
			DAWN = "The nightmare is almost gone!",
			WARN = "Getting pretty magical around here.",
			CALM = "All is well.",
			NOMAGIC = "There's no magic around here.",
		},

		HOUNDSTOOTH="It's sharp!",
		ARMORSNURTLESHELL="It sticks to my back.",
		BAT="Ack! That's terrifying!",
		BATBAT = "I wonder if I could fly with two of these.",
		BATWING="It was a simple animal.",
		BATWING_COOKED="This is just gross.",
		BEDROLL_FURRY="It's so warm and comfy.",
		BUNNYMAN="Who are you when the moon isn't full?",
		FLOWER_CAVE="Science makes it glow.",
		FLOWER_CAVE_DOUBLE="Science makes it glow.",
		FLOWER_CAVE_TRIPLE="Science makes it glow.",
		GUANO="Another flavour of poop.",
		LANTERN="A more civilized light.",
		LIGHTBULB="It's strangely tasty looking.",
		MANRABBIT_TAIL="That's just morbid.",
		MUSHTREE_TALL  ="That mushroom got too big for its own good.",
		MUSHTREE_MEDIUM="These used to grow in my bathroom.",
		MUSHTREE_SMALL ="A magic mushroom?",
		RABBITHOUSE=
		{
			GENERIC = "That's not a real carrot.",
			BURNT = "That's not a real roasted carrot.",
		},
		SLURTLE="Ew. Just ew.",
		SLURTLE_SHELLPIECES="A puzzle with no solution.",
		SLURTLEHAT="I hope it doesn't mess up my hair.",
		SLURTLEHOLE="A den of 'ew'.",
		SLURTLESLIME="If it wasn't useful, I wouldn't touch it.",
		SNURTLE="He's less gross, but still gross.",
		SPIDER_HIDER="Gah! More spiders!",
		SPIDER_SPITTER="I hate spiders!",
		SPIDERHOLE="It's encrusted with old webbing.",
		STALAGMITE="Looks like a rock to me.",
		STALAGMITE_FULL="Looks like a rock to me.",
		STALAGMITE_LOW="Looks like a rock to me.",
		STALAGMITE_MED="Looks like a rock to me.",
		STALAGMITE_TALL="Rocks, rocks, rocks, rocks...",
		STALAGMITE_TALL_FULL="Rocks, rocks, rocks, rocks...",
		STALAGMITE_TALL_LOW="Rocks, rocks, rocks, rocks...",
		STALAGMITE_TALL_MED="Rocks, rocks, rocks, rocks...",

		TURF_CARPETFLOOR = "Yet another ground type.",
		TURF_CHECKERFLOOR = "Yet another ground type.",
		TURF_DIRT = "Yet another ground type.",
		TURF_FOREST = "Yet another ground type.",
		TURF_GRASS = "Yet another ground type.",
		TURF_MARSH = "Yet another ground type.",
		TURF_ROAD = "Yet another ground type.",
		TURF_ROCKY = "Yet another ground type.",
		TURF_SAVANNA = "Yet another ground type.",
		TURF_WOODFLOOR = "Yet another ground type.",

		TURF_CAVE="Yet another ground type.",
		TURF_FUNGUS="Yet another ground type.",
		TURF_SINKHOLE="Yet another ground type.",
		TURF_UNDERROCK="Yet another ground type.",
		TURF_MUD="Yet another ground type.",

		TURF_DECIDUOUS = "Yet another ground type.",
		TURF_SANDY = "Yet another ground type.",
		TURF_BADLANDS = "Yet another ground type.",

		POWCAKE = "I don't know if I'm hungry enough.",
        CAVE_ENTRANCE = 
        {
            GENERIC="I wonder if I could move that rock.",
            OPEN = "I bet there's all sorts of things to discover down there.",
        },
        CAVE_EXIT = "I've had enough discovery for now.",
		MAXWELLPHONOGRAPH = "So that's where the music was coming from.",
		BOOMERANG = "Aerodynamical!",
		PIGGUARD = "He doesn't look as friendly as the others.",
		ABIGAIL = "Awww, she has a cute little bow.",
		ADVENTURE_PORTAL = "I'm not sure I want to fall for that a second time.",
		AMULET = "I feel so safe when I'm wearing it.",
		ANIMAL_TRACK = "Tracks left by food. I mean... an animal.",
		ARMORGRASS = "I hope there are no bugs in this.",
		ARMORMARBLE = "This looks really heavy.",
		ARMORWOOD = "That is a perfectly reasonable piece of clothing.",
		ARMOR_SANITY = "Wearing this makes me feel safe and insecure.",
		ASH =
		{
			GENERIC = "All that's left after fire has done its job.",
			REMAINS_GLOMMERFLOWER = "The flower was consumed by fire when I teleported!",
			REMAINS_EYE_BONE = "The eyebone was consumed by fire when I teleported!",
			REMAINS_THINGIE = "This was once some thing before it got burned...",
		},
		AXE = "It's my trusty axe.",
		BABYBEEFALO = "Awwww. So cute!",
		BACKPACK = "It's for me to put my stuff in.",
		BACONEGGS = "This is wrong on two levels!",
		BANDAGE = "Dr.Higgsbury keeps putting these on all my brush burns?",
		BASALT = "That's too strong to break through!",
		BATBAT = "I bet I could fly if I held two of these.",	-- Duplicated
		BEARDHAIR = "I made them with my face.",
		BEARGER = "What a bear of a badger.",
		BEARGERVEST = "Welcome to hibernation station!",
		ICEPACK = "The fur keeps the temperature inside stable.",
		BEARGER_FUR = "A mat of thick fur.",
		BEDROLL_STRAW = "It smells like wet.",
		BEE =
		{
			GENERIC = "To bee or not to bee.",
			HELD = "Careful!",
		},
		BEEBOX =
		{
			READY = "It's full of honey.",
			FULLHONEY = "It's full of honey.",
			GENERIC = "Bees!",
			NOHONEY = "It's empty.",
			SOMEHONEY = "I should wait a bit.",
			BURNT = "How did it get burned?!!",
		},
		BEEFALO =
		{
			FOLLOWER = "He's coming along peacefully.",
			GENERIC = "Pappy used to have beefalo in our farm!",
			NAKED = "I think I shaved a bit too closely.",
			SLEEPING = "How can you sleep so deeply?",
            --Domesticated states:
            DOMESTICATED = "Maybe it likes me!",
            ORNERY = "I'm a bit scared of it.",
            RIDER = "He looks like he's smiling.",
            PUDGY = "It's so cute!",
		},
		BEEFALOHAT = "What a nice hat.",
		BEEFALOWOOL = "It smells like beefalo tears.",
		BEEHAT = "This should keep me protected.",
		BEEHIVE = "It's buzzing with activity.",
		BEEMINE = "It buzzes when I shake it.",
		BEEMINE_MAXWELL = "Bottled mosquito rage!",
		BERRIES = "Red berries taste the best.",
		BERRIES_COOKED = "I don't think heat improved them.",
		BERRYBUSH =
		{
			BARREN = "I think it needs to be fertilized.",
			WITHERED = "Nothing will grow in this heat.",
			GENERIC = "Red berries taste the best.",
			PICKED = "Maybe they'll grow back?",
		},
		BIGFOOT = "That is one biiig foot.",
		BIRDCAGE =
		{
			GENERIC = "I should put a bird in it.",
			OCCUPIED = "That's my bird!",
			SLEEPING = "Awwww, he's asleep.",
		},
		BIRDTRAP = "Gives me a net advantage!",
		BIRD_EGG = "A small, normal egg.",
		BIRD_EGG_COOKED = "Sunny side yum!",
		BISHOP = "Back off, preacherman!",
		BLOWDART_FIRE = "This seems fundamentally unsafe.",
		BLOWDART_SLEEP = "Just don't breathe in.",
		BLOWDART_PIPE = "Good practice for my birthday cake!",
		BLUEAMULET = "Cool as ice!",
		BLUEGEM = "It sparkles with cold energy.",
		BLUEPRINT = "It's scientific!",
		BELL_BLUEPRINT = "It's scientific!",
		BLUE_CAP = "It's weird and gooey.",
		BLUE_CAP_COOKED = "It's different now...",
		BLUE_MUSHROOM =
		{
			GENERIC = "It's a mushroom.",
			INGROUND = "It's sleeping.",
			PICKED = "I wonder if it will come back?",
		},
		BOARDS = "Boards.",
		BOAT = "Is that how I got here?",
		BONESHARD = "Bits of bone.",
		BONESTEW = "The juice is blood! The juice is blood!",
		BUGNET = "For catching bugs.",
		BUSHHAT = "It's kind of scratchy.",
		BUTTER = "I can't believe it's butter!",
		BUTTERFLY =
		{
			GENERIC = "Butterfly, flutter by.",
			HELD = "Now I have you!",
		},
		BUTTERFLYMUFFIN = "I cooked it myself!",
		BUTTERFLYWINGS = "Without these, it's just a butter.",
		BUZZARD = "What a bizarre buzzard!",
		CACTUS = 
		{
			GENERIC = "Sharp but delicious.",
			PICKED = "Deflated, but still spiny.",
		},
		CACTUS_MEAT_COOKED = "Grilled fruit of the desert.",
		CACTUS_MEAT = "There are still some spines between me and a tasty meal.",
		CACTUS_FLOWER = "A pretty flower from a prickly plant.",

		COLDFIRE =
		{
			EMBERS = "I should put something on the fire before it goes out.",
			GENERIC = "Sure beats darkness.",
			HIGH = "That fire is getting out of hand!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "Well, that's over.",
		},
		CAMPFIRE =
		{
			EMBERS = "I should put something on the fire before it goes out.",
			GENERIC = "Sure beats darkness.",
			HIGH = "That fire is getting out of hand!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "Well, that's over.",
		},
		CANE = "It makes walking seem much easier!",
		CATCOON = "A playful little thing.",
		CATCOONDEN = 
		{
			GENERIC = "It's a den in a stump.",
			EMPTY = "It's owner ran out of lives.",
		},
		CATCOONHAT = "Ears hat!",
		COONTAIL = "I think it's still swishing.",
		CARROT = "Mmm! My favorite.",
		CARROT_COOKED = "I didn't think you could improve them.",
		CARROT_PLANTED = "My favorite food grows abundantly here.",
		CARROT_SEEDS = "I should plant lots of these!",
		WATERMELON_SEEDS = "It's a seed.",
		CAVE_FERN = "It's a fern.",
		CHARCOAL = "It's small, dark and smells like burnt wood.",
        CHESSJUNK1 = "A pile of broken chess pieces.",
        CHESSJUNK2 = "Another pile of broken chess pieces.",
        CHESSJUNK3 = "Even more broken chess pieces.",
		CHESTER = "Otto von Chesterfield, Esq.",
		CHESTER_EYEBONE =
		{
			GENERIC = "It's looking at me.",
			WAITING = "It went to sleep.",
		},
		COOKEDMANDRAKE = "Poor little guy.",
		COOKEDMEAT = "Why must I eat this?!",
		COOKEDMONSTERMEAT = "Oh, that's still gross.",
		COOKEDSMALLMEAT = "I don't want to eat it!",
		COOKPOT =
		{
			COOKING_LONG = "This is going to take a while.",
			COOKING_SHORT = "It's almost done!",
			DONE = "Mmmmm! It's ready to eat!",
			EMPTY = "It makes me hungry just to look at it.",
			BURNT = "The pot got cooked.",
		},
		CORN = "High in fructose!",
		CORN_COOKED = "High in fructose!",
		CORN_SEEDS = "It's a seed.",
		CROW =
		{
			GENERIC = "Creepy!",
			HELD = "He's not very happy in there.",
		},
		CUTGRASS = "Cut grass, ready for arts and crafts.",
		CUTREEDS = "Cut reeds, ready for crafting and hobbying.",
		CUTSTONE = "I've made them seductively smooth.",
		DEADLYFEAST = "A most potent dish.",
		DEERCLOPS = "It's enormous!!",
		DEERCLOPS_EYEBALL = "This is really gross.",
		EYEBRELLAHAT =	"It will watch over me.",
		DEPLETED_GRASS =
		{
			GENERIC = "It's probably a tuft of grass.",
		},
		DEVTOOL = "It smells of bacon!",
		DEVTOOL_NODEV = "I'm not strong enough to wield it.",
		DIRTPILE = "It's a pile of dirt... or IS it?",
		DIVININGROD =
		{
			COLD = "The signal is very faint.",
			GENERIC = "It's some kind of homing device.",
			HOT = "This thing's going crazy!",
			WARM = "I'm headed in the right direction.",
			WARMER = "I must be getting pretty close.",
		},
		DIVININGRODBASE =
		{
			GENERIC = "I wonder what it does.",
			READY = "It looks like it needs a large key.",
			UNLOCKED = "Now my machine can work!",
		},
		DIVININGRODSTART = "That rod looks useful!",
		DRAGONFLY = "That's one fly dragon!",
		ARMORDRAGONFLY = "Hot mail!",
		DRAGON_SCALES = "They're still warm.",
		DRAGONFLYCHEST = "Next best thing to a lockbox!",
		LAVASPIT = 
		{
			HOT = "Hot spit!",
			COOL = "I like to call it 'Basaliva'.",
		},
		DRAGONFRUIT = "What a weird fruit.",
		DRAGONFRUIT_COOKED = "Still weird.",
		DRAGONFRUIT_SEEDS = "It's a seed.",
		DRAGONPIE = "I cooked it myself!",
		DRUMSTICK = "No, thank you.",
		DRUMSTICK_COOKED = "Cooking it doesn't make me want it.",
		DUG_BERRYBUSH = "I should plant this.",
		DUG_GRASS = "I should plant this.",
		DUG_MARSH_BUSH = "I should plant this.",
		DUG_SAPLING = "I should plant this.",
		DURIAN = "Oh it smells!",
		DURIAN_COOKED = "Now it smells even worse!",
		DURIAN_SEEDS = "It's a useless seed.",
		EARMUFFSHAT = "No... No, don't.",
		EGGPLANT = "It doesn't look like an egg.",
		EGGPLANT_COOKED = "It's even less eggy.",
		EGGPLANT_SEEDS = "It's a seed.",
		DECIDUOUSTREE = 
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			POISON = "It looks unhappy about me stealing those Birchnuts!",
			GENERIC = "It's all Leafy. Most of the time.",
		},
		ACORN = 
		{
		    GENERIC = "I could roast this, really.",
		    PLANTED = "Will it grow?",
		},
		ACORN_COOKED = "Roasted to perfection.",
		BIRCHNUTDRAKE = "A mad little nut.",
		EVERGREEN =
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "It's all Piney.",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "What a waste of wood.",
			BURNT = "I feel like I could have prevented that.",
			CHOPPED = "Take that, nature!",
			GENERIC = "This sad tree has no cones.",
		},
		EYEPLANT = "I think I'm being watched.",
		FARMPLOT =
		{
			GENERIC = "Now I can do what I'm best at!",
			GROWING = "Plants need patience.",
			NEEDSFERTILIZER = "This plant needs more nutrients.",
			BURNT = "All that hard work is gone!",
		},
		FEATHERHAT = "I AM A BIRD!",
		FEATHER_CROW = "A crow feather.",
		FEATHER_ROBIN = "A redbird feather.",
		FEATHER_ROBIN_WINTER = "A snowbird feather.",
		FEM_PUPPET = "She's trapped!",
		FIREFLIES =
		{
			GENERIC = "If only I could catch them!",
			HELD = "They make my pocket glow!",
		},
		FIREHOUND = "That one is glowy.",
		FIREPIT =
		{
			EMBERS = "I should put something on the fire before it goes out.",
			GENERIC = "Sure beats darkness.",
			HIGH = "Good thing it's contained!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "At least I can start it up again.",
		},
		COLDFIREPIT =
		{
			EMBERS = "I should put something on the fire before it goes out.",
			GENERIC = "Sure beats darkness.",
			HIGH = "Good thing it's contained!",
			LOW = "The fire's getting a bit low.",
			NORMAL = "Nice and comfy.",
			OUT = "At least I can start it up again.",
		},
		FIRESTAFF = "I don't want to set the world on fire.",
		FIRESUPPRESSOR = 
		{	
			ON = "Fling on!",
			OFF = "All quiet on the flinging front.",
			LOWFUEL = "The fuel tank is getting a bit low.",
		},

		FISH = "I killed it by tricking it.",
		FISHINGROD = "I don't like where this is going.",
		FISHSTICKS = "Fish feel things, too.",
		FISHTACOS = "Gross!",
		FISH_COOKED = "I killed it, tricked it, and burned it.",
		FLINT = "It's a very sharp rock.",
		FLOWER = 
		{
            GENERIC = "I want to lay in a big bed of them.",
            ROSE = "It's one of a kind.",
        },
		FLOWERHAT = "It smells like prettiness.",
		FLOWER_EVIL = "Augh! It's so evil!",
		FOLIAGE = "Some leafy greens.",
		FOOTBALLHAT = "I don't like sports.",
		FROG =
		{
			DEAD = "He's croaked it.",
			GENERIC = "He looks a little angry.",
			SLEEPING = "Maybe a nap will cheer him up!",
		},
		FROGGLEBUNWICH = "This is just nasty.",
		FROGLEGS = "Maybe someone else will eat these.",
		FROGLEGS_COOKED = "Looks like cruelty.",
		FRUITMEDLEY = "I cooked it myself!",
		FURTUFT = "Black and white fur.", 
		GEARS = "A pile of mechanical parts.",
		GHOST = "That offends me as a Scientist.",
		GOLDENAXE = "That's one fancy axe.",
		GOLDENPICKAXE = "Hey, isn't gold really soft?",
		GOLDENPITCHFORK = "Why did I even make a pitchfork this fancy?",
		GOLDENSHOVEL = "I can't wait to dig holes.",
		GOLDNUGGET = "I can't eat it, but it sure is shiny.",
		GRASS =
		{
			BARREN = "It needs poop.",
			WITHERED = "It's not going to grow back while it's so hot.",
			BURNING = "That's burning fast!",
			GENERIC = "It's a tuft of grass.",
			PICKED = "It was cut down in the prime of its life.",
		},
		GREEN_CAP = "It seems pretty normal.",
		GREEN_CAP_COOKED = "It's different now...",
		GREEN_MUSHROOM =
		{
			GENERIC = "It's a mushroom.",
			INGROUND = "It's sleeping.",
			PICKED = "I wonder if it will come back?",
		},
		GUNPOWDER = "It looks like pepper.",
		HAMBAT = "This seems unsanitary.",
		HAMMER = "Stop! It's time! To hammer things!",
		HEALINGSALVE = "I really wish Mister Wilson would make this less painful!",
		HEATROCK =
		{
			FROZEN = "It's colder than ice.",
			COLD = "That's a cold stone.",
			GENERIC = "I could manipulate its temperature.",
			WARM = "It's quite warm and cuddly... for a rock!",
			HOT = "Nice and toasty hot!",
		},
		HOME = "Someone must live here.",
		HOMESIGN = 
		{
			GENERIC = "It says 'You are here'.",
			BURNT = "I can't read it any longer.",
		},
		HONEY = "It almost never spoils.",
		HONEYCOMB = "Bees used to live in this.",
		HONEYHAM = "I don't want it!",
		HONEYNUGGETS = "I don't want it!",
		HORN = "It sounds like a beefalo field in there.",
		HOUND = "You ain't nothing, hound dog!",
		HOUNDBONE = "Creepy.",
		HOUNDMOUND = "I wouldn't want to pick a bone with the owner.",
		ICEBOX = "I have harnessed the power of cold!",
		ICEHAT = "Stay cool, boy.",
		ICEHOUND = "Are there hounds for every season?",
		INSANITYROCK =
		{
			ACTIVE = "TAKE THAT, SANE SELF!",
			INACTIVE = "It's more of a pyramid than an obelisk.",
		},
		JAMMYPRESERVES = "I cooked it myself!",
		KABOBS = "I cooked it myself!",
		KILLERBEE =
		{
			GENERIC = "Oh no! It's a killer bee!",
			HELD = "This seems dangerous.",
		},
		KNIGHT = "Check it out!",
		KOALEFANT_SUMMER = "Adorably delicious.",
		KOALEFANT_WINTER = "It looks warm and full of meat.",
		KRAMPUS = "He's going after my stuff!",
		KRAMPUS_SACK = "Ew. It has Krampus slime all over it.",
		LEIF = "He's huge!",
		LEIF_SPARSE = "He's huge!",
		LIGHTNING_ROD =
		{
			CHARGED = "The power is mine!",
			GENERIC = "I can harness the heavens!",
		},
		LIGHTNINGGOAT = 
		{
			GENERIC = "'Baaaah' yourself!",
			CHARGED = "I don't think it liked being struck by lightning.",
		},
		LIGHTNINGGOATHORN = "It's like a miniature lightning rod.",
		GOATMILK = "It's buzzing with tastiness!",
		LITTLE_WALRUS = "He won't be cute and cuddly forever.",
		LIVINGLOG = "It looks worried.",
		LOCKEDWES = "Maxwell's statues are trapping him.",
		LOG =
		{
			BURNING = "That's some hot wood!",
			GENERIC = "It's big, it's heavy, and it's wood.",
		},
		LUREPLANT = "It's so alluring.",
		LUREPLANTBULB = "Now I can start my very own meat farm.",
		MALE_PUPPET = "He's trapped!",
		MANDRAKE =
		{
			DEAD = "A mandrake root has strange powers.",
			GENERIC = "I've heard strange things about those plants.",
			PICKED = "Stop following me!",
		},
		MANDRAKESOUP = "I cooked it myself!",
		MANDRAKE_COOKED = "It doesn't seem so strange anymore.",
		MARBLE = "Fancy!",
		MARBLEPILLAR = "I think I could use that.",
		MARBLETREE = "I don't think an axe will cut it.",
		MARSH_BUSH =
		{
			BURNING = "That's burning fast!",
			GENERIC = "It looks thorny.",
			PICKED = "That hurt.",
		},
		BURNT_MARSH_BUSH = "It's all burnt up.",
		MARSH_PLANT = "It's a plant.",
		MARSH_TREE =
		{
			BURNING = "Spikes and fire!",
			BURNT = "Now it's burnt and spiky.",
			CHOPPED = "Not so spiky now!",
			GENERIC = "Those spikes look sharp!",
		},
		MAXWELL = "I hate that guy.",
		MAXWELLHEAD = "I can see into his pores.",
		MAXWELLLIGHT = "I wonder how they work.",
		MAXWELLLOCK = "Looks almost like a key hole.",
		MAXWELLTHRONE = "That doesn't look very comfortable.",
		MEAT = "Oh, this is just awful.",
		MEATBALLS = "It's wrong!",
		MEATRACK =
		{
			DONE = "I dried the carcass.",
			DRYING = "This just gives me time to think about how unnecessary this is.",
			DRYINGINRAIN = "Now the blood will wash all over the ground.",
			GENERIC = "I really don't need this.",
			BURNT = "The rack got dried.",
		},
		MEAT_DRIED = "It doesn't make me want it any more.",
		MERM = "Smells fishy!",
		MERMHEAD = 
		{
			GENERIC = "The stinkiest thing I'll smell all day.",
			BURNT = "Burnt merm flesh somehow smells even worse.",
		},
		MERMHOUSE = 
		{
			GENERIC = "Who would live here?",
			BURNT = "Nothing to live in, now.",
		},
		MINERHAT = "This will keep my hands free.",
		MONKEY = "Curious little guy.",
		MONKEYBARREL = "Did that just move?",
		MONSTERLASAGNA = "This is not human food.",
		FLOWERSALAD = "A bowl of foliage.",
        ICECREAM = "I scream for ice cream!",
        WATERMELONICLE = "Cryogenic watermlon.",
        TRAILMIX = "A healthy, natural snack.",
        HOTCHILI = "Five alarm!",
        GUACAMOLE = "Avogadro's favorite dish.",
		MONSTERMEAT = "Ugh. I don't think I should eat that.",
		MONSTERMEAT_DRIED = "It's still gross.",
		MOOSE = "I don't exactly know what that thing is.",
		MOOSEEGG = "Its contents are like excited electrons trying to escape.",
		MOSSLING = "Aaah! You are definitely not an electron!",
		FEATHERFAN = "Down to bring my temperature down.",
		GOOSE_FEATHER = "Fluffy!",
		STAFF_TORNADO = "Spinning doom.",
		MOSQUITO =
		{
			GENERIC = "Disgusting little bloodsucker.",
			HELD = "Hey, is that my blood?",
		},
		MOSQUITOSACK = "It's probably not someone else's blood...",
		MOUND =
		{
			DUG = "I should probably feel bad about that.",
			GENERIC = "I bet there's all sorts of good stuff down there!",
		},
		NIGHTLIGHT = "It gives off a spooky light.",
		NIGHTMAREFUEL = "This stuff is crazy!",
		NIGHTSWORD = "I dreamed it myself!",
		NITRE = "I'm not a geologist.",
		ONEMANBAND = "I should have added a beefalo bell.",
		PANDORASCHEST = "It may contain something fantastic! Or horrible.",
		PANFLUTE = "I can serenade the animals.",
		PAPYRUS = "Some sheets of paper.",
		PENGUIN = "Must be breeding season.",
		PERD = "Stupid bird! Stay away from my berries!",
		PEROGIES = "I cooked it myself!",
		PETALS = "I showed those flowers who's boss!",
		PETALS_EVIL = "I'm not sure I want to hold these.",
		PHLEGM = "It's thick and pliable. And salty.",
		PICKAXE = "Iconic, isn't it?",
		PIGGYBACK = "I feel kinda bad for that.",
		PIGHEAD = 
		{	
			GENERIC = "Looks like an offering to the beast.",
			BURNT = "Crispy.",
		},
		PIGHOUSE =
		{
			FULL = "I can see a snout pressed up against the window.",
			GENERIC = "These pigs have pretty fancy houses.",
			LIGHTSOUT = "Come ON! I know you're home!",
			BURNT = "Not so fancy now, pig!",
		},
		PIGKING = "Ewwww, he smells!",
		PIGMAN =
		{
			DEAD = "Someone should tell his family.",
			FOLLOWER = "He's part of my entourage.",
			GENERIC = "They kind of creep me out.",
			GUARD = "He looks serious.",
			WEREPIG = "He's not friendly!",
		},
		PIGSKIN = "It still has the tail on it.",
		PIGTENT = "Smells like bacon.",
		PIGTORCH = "Sure looks cozy.",
		PINECONE = 
		{
		    GENERIC = "I can hear a tiny tree inside it, trying to get out.",
		    PLANTED = "It'll be a tree soon!",
		},
		PITCHFORK = "Maxwell might be looking for this.",
		PLANTMEAT = "That will do for now.",
		PLANTMEAT_COOKED = "At least it's warm now.",
		PLANT_NORMAL =
		{
			GENERIC = "Leafy!",
			GROWING = "Guh! It's growing so slowly!",
			READY = "Mmmm. Ready to harvest.",
			WITHERED = "The heat killed it.",
		},
		POMEGRANATE = "It looks like the inside of an alien's brain.",
		POMEGRANATE_COOKED = "Haute Cuisine!",
		POMEGRANATE_SEEDS = "It's a seed.",
		POND = "I can't see the bottom!",
		POOP = "I should fill my pockets!",
		FERTILIZER = "That is definitely a bucket full of poop.",
		PUMPKIN = "It's as big as my head!",
		PUMPKINCOOKIE = "I cooked it myself!",
		PUMPKIN_COOKED = "How did it not turn into a pie?",
		PUMPKIN_LANTERN = "Spooky!",
		PUMPKIN_SEEDS = "It's a seed.",
		PURPLEAMULET = "It's whispering to me.",
		PURPLEGEM = "It contains the mysteries of the universe.",
		RABBIT =
		{
			GENERIC = "I long to be like him.",
			HELD = "I'll keep you safe!",
		},
		RABBITHOLE = 
		{
			GENERIC = "My friends are down there.",
			SPRING = "My friends won't come out in this rainy weather.",
		},
		RAINOMETER = 
		{	
			GENERIC = "It measures cloudiness.",
			BURNT = "The measuring parts went up in a cloud of smoke.",
		},
		RAINCOAT = "Keeps the rain where it ought to be. Outside my body.",
		RAINHAT = "It'll mess up my hair, but I'll stay nice and dry.",
		RATATOUILLE = "I cooked it myself!",
		RAZOR = "A sharpened rock tied to a stick. Hygienic!",
		REDGEM = "It sparkles with inner warmth.",
		RED_CAP = "It smells funny.",
		RED_CAP_COOKED = "It's different now...",
		RED_MUSHROOM =
		{
			GENERIC = "It's a mushroom.",
			INGROUND = "It's sleeping.",
			PICKED = "I wonder if it will come back?",
		},
		REEDS =
		{
			BURNING = "That's really burning!",
			GENERIC = "It's a clump of reeds.",
			PICKED = "I picked all the useful reeds.",
		},
        RELIC = 
        {
            GENERIC = "Ancient household goods.",
            BROKEN = "Nothing to work with here.",
        },
        RUINS_RUBBLE = "This can be fixed.",
        RUBBLE = "Just bits and pieces of rock.",
		RESEARCHLAB = 
		{	
			GENERIC = "It breaks down objects into their scientific components.",
			BURNT = "It won't be doing much science now.",
		},
		RESEARCHLAB2 = 
		{
			GENERIC = "It's even more science-y than the last one!",
			BURNT = "The extra science didn't keep it alive.",
		},
		RESEARCHLAB3 = 
		{
			GENERIC = "What have I created?",
			BURNT = "Whatever it was, it's burnt now.",
		},
		RESEARCHLAB4 = 
		{
			GENERIC = "Who would name something that?",
			BURNT = "Fire doesn't really solve naming issues...",
		},
		RESURRECTIONSTATUE = 
		{
			GENERIC = "What a handsome devil!",
			BURNT = "Not much use anymore.",
		},		RESURRECTIONSTONE = "Such a touching stone.",
		ROBIN =
		{
			GENERIC = "Does that mean winter is gone?",
			HELD = "He likes my pocket.",
		},
		ROBIN_WINTER =
		{
			GENERIC = "Life in the frozen wastes.",
			HELD = "It's so soft.",
		},
		ROBOT_PUPPET = "It's trapped!",
		ROCK_LIGHT =
		{
			GENERIC = "A crusted over lava pit.",
			OUT = "Looks fragile.",
			LOW = "The lava's crusting over.",
			NORMAL = "Nice and comfy.",
		},
		ROCK = "It wouldn't fit in my pocket.",
		ROCK_ICE = 
		{
			GENERIC = "A very isolated glacier.",
			MELTED = "Nothing useful until it freezes again.",
		},
		ROCK_ICE_MELTED = "Nothing useful until it freezes again.",
		ICE = "Ice to meet you.",
		ROCKS = "I can make stuff with these.",
        ROOK = "Storm the castle!",
		ROPE = "Some short lengths of rope.",
		ROTTENEGG = "Ew! It stinks!",
		SADDLE_BASIC = "What around here is like a horse?",
        SADDLE_WAR = "I'm not really a fighter!",
        SADDLEHORN = "It'll pry that saddle off quickly!",
        BRUSH = "I hope no one tries using this on me, ever.",
		SANITYROCK =
		{
			ACTIVE = "That's a CRAZY looking rock!",
			INACTIVE = "Where did the rest of it go?",
		},
		SAPLING =
		{
			BURNING = "That's burning fast!",
			WITHERED = "It might be okay if it was cooler.",
			GENERIC = "Baby trees are so cute!",
			PICKED = "That'll teach him.",
		},
		SEEDS = "I could plant these or eat them.",
		SEEDS_COOKED = "Now I have no choice but to eat them!",
		SEWING_KIT = "Darn it! Darn it all to heck!",
		SHOVEL = "There's a lot going on underground.",
		SILK = "It comes from a spider's butt.",
		SKELETON = "Better him than me.",
		SCORCHED_SKELETON = "Spooky.",
		SKELETON_PLAYER = "I need to sit down for a moment.",
		SKULLCHEST = "I'm not sure if I want to open it.",
		SMALLBIRD =
		{
			GENERIC = "That's a rather small bird.",
			HUNGRY = "It looks hungry.",
			STARVING = "It must be starving.",
		},
		SMALLMEAT = "I can't believe I killed it!",
		SMALLMEAT_DRIED = "This is just wrong.",
		SPAT = "So gross...",
		SPEAR = "That's one pointy stick.",
		SPIDER =
		{
			DEAD = "Ewwww!",
			GENERIC = "I hate spiders.",
			SLEEPING = "I'd better not be here when he wakes up.",
		},
		SPIDERDEN = "Sticky!",
		SPIDEREGGSACK = "I hope these don't hatch in my pocket.",
		SPIDERGLAND = "It has a tangy, antiseptic smell.",
		SPIDERHAT = "I hope I got all of the spider goo out of it.",
		SPIDERQUEEN = "AHHHHHHHH! That spider is huge!",
		SPIDER_WARRIOR =
		{
			DEAD = "Good riddance!",
			GENERIC = "Looks even meaner than usual.",
			SLEEPING = "I should keep my distance.",
		},
		SPOILED_FOOD = "It's a fertilizer!",
		STATUEHARP = "What has happened to the head?",
		STATUEMAXWELL = "It really captures his personality.",
		STEELWOOL = "Scratchy metal fibers.",
		STINGER = "Looks sharp!",
		STRAWHAT = "What a nice hat.",
		STUFFEDEGGPLANT = "I cooked it myself!",
		SUNKBOAT = "It's no use to me out there!",
		SWEATERVEST = "This vest is dapper as all get-out.",
		REFLECTIVEVEST = "Keep off, evil sun!",
		HAWAIIANSHIRT = "It's not fashionable!",
		TAFFY = "I cooked it myself!",
		TALLBIRD = "That's a tall bird!",
		TALLBIRDEGG = "Will it hatch?",
		TALLBIRDEGG_COOKED = "It's a dead baby pod now.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "Brrrr!",
			GENERIC = "Looks like it's hatching.",
			HOT = "Are eggs supposed to sweat?",
			LONG = "I have a feeling this is going to take a while...",
			SHORT = "It should hatch any time now.",
		},
		TALLBIRDNEST =
		{
			GENERIC = "That's quite an egg!",
			PICKED = "The nest is empty.",
		},
		TEENBIRD =
		{
			GENERIC = "Not a very tall bird.",
			HUNGRY = "I'd better find it some food.",
			STARVING = "It has a dangerous look in it's eye.",
		},
		TELEBASE =	-- Duplicated
		{
			VALID = "It's ready to go.",
			GEMS = "It needs more purple gems.",
		},
		GEMSOCKET = -- Duplicated
		{
			VALID = "Looks ready.",
			GEMS = "It needs a gem.",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "With this I can surely pass through space and time!",
			GENERIC = "This appears to be a nexus to another world!",
			LOCKED = "There's still something missing.",
			PARTIAL = "Soon, my invention will be complete!",
		},
		TELEPORTATO_BOX = "This may control the polarity of the whole universe.",
		TELEPORTATO_CRANK = "Tough enough to handle the most intense experiments.",
		TELEPORTATO_POTATO = "This metal potato contains great and fearful power...",
		TELEPORTATO_RING = "A ring that could focus dimensional energies.",
		TELESTAFF = "It can show me the world.",
		TENT = 
		{
			GENERIC = "I get crazy when I don't sleep.",
			BURNT = "Nothing left to sleep in.",
		},
		SIESTAHUT = 
		{
			GENERIC = "A nice place for an afternoon rest out of the heat.",
			BURNT = "It won't provide much shade now.",
		},
		TENTACLE = "That looks dangerous.",
		TENTACLESPIKE = "It's pointy and slimy.",
		TENTACLESPOTS = "I think these were its genitalia.",
		TENTACLE_PILLAR = "A slimy pole.",
		TENTACLE_PILLAR_ARM = "Little slippery arms.",
		TENTACLE_GARDEN = "Yet another slimy pole.",
		TOPHAT = "What a nice hat.",
		TORCH = "Something to hold back the night.",
		TRANSISTOR = "It's whirring with electricity.",
		TRAP = "I wove it real tight.",
		TRAP_TEETH = "This is a nasty surprise.",
		TRAP_TEETH_MAXWELL = "I'll want to avoid stepping on that!",
		TREASURECHEST = 
		{
			GENERIC = "It's my tickle trunk!",
			BURNT = "That trunk was truncated.",
		},
		TREASURECHEST_TRAP = "How convenient!",
		TREECLUMP = "It's almost like someone is trying to prevent me from going somewhere.",
		TRINKET_1 = "How did they get that way?", --Melty Marbles
		TRINKET_2 = "I don't want to play it.", --Fake Kazoo
		TRINKET_3 = "It doesn't look like it'll come undone.", --Gord's Knot
		TRINKET_4 = "Worse.", --Gnome --Nome
		TRINKET_5 = "It's definitely rocket science.", --Tiny Rocketship
		TRINKET_6 = "Who kept these around?", --Frazzled Wires
		TRINKET_7 = "Oh, what fun!", --Ball and Cup
		TRINKET_8 = "If only there was a bath tub to go with this.", --Hardened Rubber Bung
		TRINKET_9 = "Collecting these for crafts is fun.", --Mismatched Buttons
		TRINKET_10 = "Pappy used to wear these.", --Second-hand Dentures
		TRINKET_11 = "It's complimenting me.", --Lying Robot
		TRINKET_12 = "It looks rotted.", --Dessicated Tentacle
		TRINKET_13 = "Mammy liked these when she was still around.", --Gnome (female)
		TRINKET_14 = "Now if I only had some tea...", -- Leaky Teacup
		TRINKET_15 = "The king's bishop.", -- White Bishop
		TRINKET_16 = "This is the wrong bishop.", -- Black Bishop
		TRINKET_17 = "An ice cream fork!", -- Bent Spork
		TRINKET_18 = "I wonder what it's hiding?", -- Toy Trojan Horse
		TRINKET_19 = "It doesn't spin very well.", -- Unbalanced Top
		TRINKET_20 = "Now I can scratch my back; all my problems are solved!", -- Back Scratcher
		TRINKET_21 = "This egg beater is all bent out of shape.", -- Beaten Beater
		TRINKET_22 = "Sadly, it's not strong enough to be useful for anything.", -- Frayed Yarn
		TRINKET_23 = "I can put my shoes on without help, thanks.", -- Shoe Horn
		TRINKET_24 = "Is it really lucky?", -- Lucky Cat Jar
		TRINKET_25 = "It smells kind of stale.", -- Air Unfreshener
		TRINKET_26 = "Food and a cup! The ultimate survival container.", -- Potato Cup
		TRINKET_27 = "Good, I can hang my clothes up if I ever find a hook.", -- Wire Hanger
		TRUNKVEST_SUMMER = "Wilderness casual.",
		TRUNKVEST_WINTER = "Winter survival gear.",
		TRUNK_COOKED = "I cooked its face!",
		TRUNK_SUMMER = "This is gross.",
		TRUNK_WINTER = "This is gross.",
		TUMBLEWEED = "Who knows what that tumbleweed has picked up.",
		TURF_CARPETFLOOR = "It's surprisingly scratchy.",	-- Duplicated
		TURF_CHECKERFLOOR = "These are pretty snazzy.",	-- Duplicated
		TURF_DIRT = "A chunk of ground.",	-- Duplicated
		TURF_FOREST = "A chunk of ground.",	-- Duplicated
		TURF_GRASS = "A chunk of ground.",	-- Duplicated
		TURF_MARSH = "A chunk of ground.",	-- Duplicated
		TURF_ROAD = "Hastily cobbled stones.",	-- Duplicated
		TURF_ROCKY = "A chunk of ground.",	-- Duplicated
		TURF_SAVANNA = "A chunk of ground.",	-- Duplicated
		TURF_WOODFLOOR = "These are floorboards.",	-- Duplicated
		TURKEYDINNER = "Mmmm.",
		TWIGS = "It's a bunch of small twigs.",
		UMBRELLA = "It'll do.",
		GRASS_UMBRELLA = "Such a pretty parasol!",
		UNIMPLEMENTED = "That doesn't look done. If I touch it, everything will fall apart.",
		WAFFLES = "Just like Mammy's!",
		WALL_HAY = 
		{	
			GENERIC = "Haystacks aren't for protection, just saying.",
			BURNT = "That won't do at all.",
		},
		WALL_HAY_ITEM = "Haystacks?",
		WALL_STONE = "That's a nice wall.",
		WALL_STONE_ITEM = "They make me feel so safe.",
		WALL_RUINS = "An ancient piece of wall.",
		WALL_RUINS_ITEM = "A solid piece of history.",
		WALL_WOOD = 
		{
			GENERIC = "Pointy!",
			BURNT = "Burnt!",
		},
		WALL_WOOD_ITEM = "Pickets!",
		WALL_MOONROCK = "Spacey and smooth!",
		WALL_MOONROCK_ITEM = "Very light but surprisingly tough.",
		WALRUS = "The tables have turned, I don't like it.",
		WALRUSHAT = "It's cute!",
		WALRUS_CAMP =
		{
			EMPTY = "Was there a house here?",
			GENERIC = "Such a cozy igloo.",
		},
		WALRUS_TUSK = "I'm sure I'll find a use for it eventually.",
		WARG = "You might be something to reckon with, big dog.",
		WASPHIVE = "I think those bees are mad.",
		WATERMELON = "Sticky sweet.",
		WATERMELON_COOKED = "Juicy and warm.",
		WATERMELONHAT = "Let the juice run down your face.",
		WETGOOP = "I cooked it myself!",
		WINTERHAT = "It'll be good for when winter comes.",
		WINTEROMETER = 
		{
			GENERIC = "I like it when it's warm.",
			BURNT = "That's too warm.",
		},
		WORMHOLE =
		{
			GENERIC = "That doesn't look safe.",
			OPEN = "What if it eats me?",
		},
		WORMHOLE_LIMITED = "Guh, that thing looks worse off than usual.",
		ACCOMPLISHMENT_SHRINE = "I want to use it, and I want the world to know what I did.",        
		LIVINGTREE = "Is it watching me?",
		ICESTAFF = "It's cold to the touch.",
		REVIVER = "The beating of this hideous heart will bring a ghost back to life!",
		LIFEINJECTOR = "Booooost!",
		SKELETON_PLAYER =
		{
			MALE = "Oh no! Mister %s died to %s! I better be careful!",
			FEMALE = "Oh no! Miss %s died to %s! I better be careful!",
			ROBOT = "Oh no! %s died to %s! I better be careful!",
			DEFAULT = "Oh no! %s died to %s! I better be careful!",
		},
		HUMANMEAT = "Flesh is flesh. Where do I draw the line?",
		HUMANMEAT_COOKED = "Cooked nice and pink, but still morally gray.",
		HUMANMEAT_DRIED = "Letting it dry makes it not come from a human, right?",
		MOONROCKNUGGET = "That rock came from the moon.",
	},
	DESCRIBE_GENERIC = "It's a... thing.",
	DESCRIBE_TOODARK = "It's too dark to see!",
	DESCRIBE_SMOLDERING = "That thing is about to catch fire.",
	EAT_FOOD =
	{
		TALLBIRDEGG_CRACKED = "Mmm. Beaky.",
	},
}

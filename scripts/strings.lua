local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

--Willoughby
-- The character select screen lines
-- Remove hints of a werebunny! Remove any "cursed" commentary, because now that language is ableist to use on Willoughby. 
GLOBAL.STRINGS.CHARACTER_TITLES.will = "The Bumpkin Farmer"
GLOBAL.STRINGS.CHARACTER_NAMES.will = "Willoughby"
GLOBAL.STRINGS.CHARACTER_DESCRIPTIONS.will = "*Vegetarian\n*Nimble\n*Doesn't hit hard"
GLOBAL.STRINGS.CHARACTER_QUOTES.will = "\"Same out here as it was at home!\""
-- Custom speech strings
GLOBAL.STRINGS.CHARACTERS.WILL = require "speech_will"
-- The character's name as it appears in-game
STRINGS.NAMES.WILL = "Willoughby"

--Doc
-- The character select screen lines
STRINGS.CHARACTER_TITLES.doc = "The Gentleman Scientist"
STRINGS.CHARACTER_NAMES.doc = "Doctor Higgsbury"
STRINGS.CHARACTER_DESCRIPTIONS.doc = "*Grows a magnificent beard\n*Has pharmaceutical knowledge"
STRINGS.CHARACTER_QUOTES.doc = "\"I want to help you.\""
--Custom speech strings
STRINGS.CHARACTERS.DOC = require "speech_doc"
--The character's name as it appears in-game
STRINGS.NAMES.DOC = "Dr.Higgsbury"

--

-- Custom items
-- Sorted by item
--  •Craftables(not including the potions)
--Bumpkin Farm
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BUMPKINFARM = "Finally, a steady food source."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.BUMPKINFARM = "Now I'm gonna have to eat vegetables in winter, too."
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.BUMPKINFARM = "Will grow even mightier plants!"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.BUMPKINFARM = "It's a farm that insulates in the winter and cools in the summer."
STRINGS.CHARACTERS.WX78.DESCRIBE.BUMPKINFARM = "THIS IS A SIMPLE SOLUTION TO A STUPID PROBLEM."
STRINGS.CHARACTERS.WENDY.DESCRIBE.BUMPKINFARM = "It's managed to escape the deadly grip of winter."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.BUMPKINFARM = "More or a meat fan, m'self."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.BUMPKINFARM = "Another plot of land for those farmer sorts."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.BUMPKINFARM = "I still can't grow meat, what's the point?"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.BUMPKINFARM = "This farming thing isn't so bad!"
--Mountie Hat
GLOBAL.STRINGS.CHARACTERS.GENERIC.ANNOUNCE_MOUNTIE_HAT = "The animals definitely seem less scared now."
STRINGS.CHARACTERS.WILLOW.ANNOUNCE_MOUNTIE_HAT = "It'd look prettier with some flames on it!"
STRINGS.CHARACTERS.WOLFGANG.ANNOUNCE_MOUNTIE_HAT = "Ha ha! Wolfgang is snowy police man!"
STRINGS.CHARACTERS.WICKERBOTTOM.ANNOUNCE_MOUNTIE_HAT = "I suppose the RCMP won't find out..."
STRINGS.CHARACTERS.WX78.ANNOUNCE_MOUNTIE_HAT = "NOW THE RABBITS WON'T SEE IT COMING."
STRINGS.CHARACTERS.WENDY.ANNOUNCE_MOUNTIE_HAT = "It's not very fitting."
STRINGS.CHARACTERS.WOODIE.ANNOUNCE_MOUNTIE_HAT = "Better not let the RCMP know."
STRINGS.CHARACTERS.WAXWELL.ANNOUNCE_MOUNTIE_HAT = "Not the most dapper choice for a law man."
STRINGS.CHARACTERS.WATHGRITHR.ANNOUNCE_MOUNTIE_HAT = "I will conquer the mountains!"
STRINGS.CHARACTERS.WEBBER.ANNOUNCE_MOUNTIE_HAT = "See? Now we can all be friends!"
--Dream Catcher
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.DREAM_CATCHER = "It'll catch all the nightmares away."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.DREAM_CATCHER = "Hey, those look familiar."
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.DREAM_CATCHER = "Spider ring is help Wolfgang have good dreams!"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.DREAM_CATCHER = "Originating from The Ojibwe tribe, they're known for catching nightmares like a spider's web."
STRINGS.CHARACTERS.WX78.DESCRIBE.DREAM_CATCHER = "ROBOTS DON'T GET BAD DREAMS."
STRINGS.CHARACTERS.WENDY.DESCRIBE.DREAM_CATCHER = "I hope tonight I will dream of Abigail."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.DREAM_CATCHER = "So...where're all the nightmares goin'?"
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.DREAM_CATCHER = "Even They have problems with one of these trinkets."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.DREAM_CATCHER = "The woven web shall protect my dreams."
STRINGS.CHARACTERS.WEBBER.DESCRIBE.DREAM_CATCHER = "We make these all the time!"
--Maple Lantern
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.MAPLELANTERN = "Pretty fall decor."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.MAPLELANTERN = "How long before the fire burns through the leaves?"
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.MAPLELANTERN = "Is very orange color."
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.MAPLELANTERN = "Oh, dear, that's a fire hazard."
STRINGS.CHARACTERS.WX78.DESCRIBE.MAPLELANTERN = "AT LEAST THAT TREE WAS OF SOME USE."
STRINGS.CHARACTERS.WENDY.DESCRIBE.MAPLELANTERN = "I suppose that will do."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.MAPLELANTERN = "Oh, that's clever."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.MAPLELANTERN = "It's pretty, but it doesn't last long."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.MAPLELANTERN = "These would be nice to mount to a battleship."
STRINGS.CHARACTERS.WEBBER.DESCRIBE.MAPLELANTERN = "Look how orange it is!"

--  •World Gen
--Loon
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.LOON = "What a noisy bird."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.LOON = "Hey bird! Be quiet!"
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.LOON = "Is pretty grey bird!"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.LOON = "Ah! The gavia immer and it's eerie calls."
STRINGS.CHARACTERS.WX78.DESCRIBE.LOON = "BIRD'S ANNOYANCE LEVEL IS 8."
STRINGS.CHARACTERS.WENDY.DESCRIBE.LOON = "Their coos are so haunting..."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.LOON = "Can't have them swarming around while I'm cuttin' trees, eh?"
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.LOON = "Bloody loud and bloody annoying birds."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.LOON = "This bird has the call of a ghost!"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.LOON = "Count the spots!\n1...2...3..."
--Loon Feather
STRINGS.CHARACTERS.GENERIC.DESCRIBE.FEATHER_LOON = "Surely, something can be made of it."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.FEATHER_LOON = "Wilson likes to use them in feather pencils."
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.FEATHER_LOON = "Is feather of bird grey."
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.FEATHER_LOON = "The feather of a common loon."
STRINGS.CHARACTERS.WX78.DESCRIBE.FEATHER_LOON = "IT LOST ITS FEATHERS. HA HA."
STRINGS.CHARACTERS.WENDY.DESCRIBE.FEATHER_LOON = "The remnant of a crying bird."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.FEATHER_LOON = "Yep. You'll see these everywhere."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.FEATHER_LOON = "Gray is the colour of dreams."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.FEATHER_LOON = "Add them to my helmet!"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.FEATHER_LOON = "Feather of black and white."
--Maple Leaves
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.LEAF = "I could collect a bunch of these!"
STRINGS.CHARACTERS.WILLOW.DESCRIBE.LEAF = "They make fires extra smokey!"
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.LEAF = "Hello tree! You dropped this."
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.LEAF = "A common Birchnut leaf."
STRINGS.CHARACTERS.WX78.DESCRIBE.LEAF = "IT FALLS APART IN WINTER. STUPID TREE."
STRINGS.CHARACTERS.WENDY.DESCRIBE.LEAF = "Abigail and I used to play in them."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.LEAF = "They're not as sweet as syrup..."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.LEAF = "They are unnecessarily big."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.LEAF = "Lumberjack food!"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.LEAF = "All our spider friends can play in a pile of these."
--Tree Sap
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.SAP = "Wait, it's not sticky...?"
STRINGS.CHARACTERS.WILLOW.DESCRIBE.SAP = "Eww! I'm not drinking that!"
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.SAP = "Is tree juice!"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.SAP = "It provides ntrients to the Birchnut Tree during the winter."
STRINGS.CHARACTERS.WX78.DESCRIBE.SAP = "I TOOK ITS BLOOD."
STRINGS.CHARACTERS.WENDY.DESCRIBE.SAP = "It's almost like the blood of a tree."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.SAP = "It's only halfway there."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.SAP = "This can be processed into a finer condiment."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.SAP = "This is tree food."
STRINGS.CHARACTERS.WEBBER.DESCRIBE.SAP = "It's not sticky, but it's sweet!"
--Raspberry Bush
STRINGS.CHARACTERS.GENERIC.DESCRIBE.RASPBERRYBUSH = 
{
		BARREN = "I think it needs to be fertilized.",
		WITHERED = "Nothing will grow in this heat.",
		GENERIC = "It's all thorny!",
		PICKED = "Maybe they'll grow back?",
}
STRINGS.CHARACTERS.WILLOW.DESCRIBE.RASPBERRYBUSH = 
{
		BARREN = "Eat poop, stupid plant!",
		WITHERED = "All dried out. Primed for fire!",
		GENERIC = "Mmmmm. Berries.",
		PICKED = "But I want more berries!",
}
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.RASPBERRYBUSH = 
{
		BARREN = "I need to poop on it.",
		WITHERED = "Is too hot for bush.",
		GENERIC = "Is full of food-balls!",
		PICKED = "Eating part is gone.",
}
STRINGS.CHARACTERS.WENDY.DESCRIBE.RASPBERRYBUSH = 
{
		BARREN = "It is barren.",
		WITHERED = "It succumbed to the heat.",
		GENERIC = "A snack, perchance?",
		PICKED = "The wait begins.",
}
STRINGS.CHARACTERS.WX78.DESCRIBE.RASPBERRYBUSH = 
{
		BARREN = "THE SYSTEM IS DOWN",
		WITHERED = "THE SYSTEM HAS OVERHEATED",
		GENERIC = "PERIODIC CALORIE DISPENSER",
		PICKED = "IT IS REBOOTING",
}
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.RASPBERRYBUSH = 
{
        GENERIC = "It's a Rubus idaeus bush.",
        PICKED = "The berries are growing back, slowly.",
        BARREN = "It will require an intervention.",
		WITHERED = "Rubus idaeus don't do well in extreme heat.",
}
STRINGS.CHARACTERS.WOODIE.DESCRIBE.RASPBERRYBUSH = 
{
		BARREN = "It needs a good poopin'.",
		WITHERED = "It's perished from the heat, eh?",
		GENERIC = "I wonder if I can make raspberry water.",
		PICKED = "No berries left!",
}
STRINGS.CHARACTERS.WEBBER.DESCRIBE.RASPBERRYBUSH = 
{
		BARREN = "It's run out of plant food.",
		WITHERED = "Heat too intense for ya?",
		GENERIC = "Ripe for the pickin'.",
		PICKED = "See you soon, berries!",
}
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.RASPBERRYBUSH = 
{
		BARREN = "Should we put some turds on it?",
		WITHERED = "It's too hot to grow.",
		GENERIC = "A fruit bush.",
		PICKED = "The fruits have been snatched.",
}
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.RASPBERRYBUSH = 
{
		BARREN = "It needs manure.",
		WITHERED = "Too hot for that little bush.",
		GENERIC = "Reduced to eating berries. Sigh.",
		PICKED = "And now we wait.",
}
--Raspberries
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.RASPBERRY = "High in Vitamin C!"
STRINGS.CHARACTERS.WILLOW.DESCRIBE.RASPBERRY = "Mmm, berries!"
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.RASPBERRY = "Is tart!"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.RASPBERRY = "High in Vitamin C."
STRINGS.CHARACTERS.WX78.DESCRIBE.RASPBERRY = "NOT THAT GREAT OF A FRUIT."
STRINGS.CHARACTERS.WENDY.DESCRIBE.RASPBERRY = "Well, they'll make a decent snack."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.RASPBERRY = "There's not a lot of these where I'm from!"
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.RASPBERRY = "Another variant of the same boring berry."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.RASPBERRY = "Filler food, perhaps?"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.RASPBERRY = "I wish I could spit the seeds at people!"
--Cooked Raspberries
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.RASPBERRY_COOKED = "Normally, you don't cook them."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.RASPBERRY_COOKED = "Fire instantly makes things better."
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.RASPBERRY_COOKED = "Is still tart!"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.RASPBERRY_COOKED = "Some roasted Rubus Idaeus berries."
STRINGS.CHARACTERS.WX78.DESCRIBE.RASPBERRY_COOKED = "TAKE THAT, INFERIOR FRUIT."
STRINGS.CHARACTERS.WENDY.DESCRIBE.RASPBERRY_COOKED = "That works too, I suppose."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.RASPBERRY_COOKED = "I got a bigger apetite than that."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.RASPBERRY_COOKED = "All that happened was they got warmed."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.RASPBERRY_COOKED = "I can still use it as filler!"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.RASPBERRY_COOKED = "Mushy!"

--  •Crockpot Foods
--Maple Syrup
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.MAPLESYRUP = "Grade A Dark!"
STRINGS.CHARACTERS.WILLOW.DESCRIBE.MAPLESYRUP = "Do we have any pancakes?"
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.MAPLESYRUP = "Is pancake syrup."
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.MAPLESYRUP = "A little taste of New England."
STRINGS.CHARACTERS.WX78.DESCRIBE.MAPLESYRUP = "I BOILED THAT INFERIOR TREE'S BLOOD."
STRINGS.CHARACTERS.WENDY.DESCRIBE.MAPLESYRUP = "It's sweet and familiar."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.MAPLESYRUP = "Almost as good as the stuff at home."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.MAPLESYRUP = "They put this on their pancakes in the colonies."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.MAPLESYRUP = "This is boiled tree food."
STRINGS.CHARACTERS.WEBBER.DESCRIBE.MAPLESYRUP = "Now it's sticky and sweet!"
--Poutine
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.POUTINE = "A hearty, heart stopping meal!"
STRINGS.CHARACTERS.WILLOW.DESCRIBE.POUTINE = ""
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.POUTINE = ""
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.POUTINE = ""
STRINGS.CHARACTERS.WX78.DESCRIBE.POUTINE = ""
STRINGS.CHARACTERS.WENDY.DESCRIBE.POUTINE = "An alternative to the rope."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.POUTINE = ""
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.POUTINE = ""
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.POUTINE = ""
STRINGS.CHARACTERS.WEBBER.DESCRIBE.POUTINE = ""
--Pumpkin Pie
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.PUMPKINPIE = "If I eat all of this, it'll spoil my apetite."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.PUMPKINPIE = "Needs more cinnamon."
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.PUMPKINPIE = "Vegetable dessert?"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.PUMPKINPIE = "Come and get it!"
STRINGS.CHARACTERS.WX78.DESCRIBE.PUMPKINPIE = "HUMANS ARE GROSS."
STRINGS.CHARACTERS.WENDY.DESCRIBE.PUMPKINPIE = "Mother used to make such good pies..."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.PUMPKINPIE = "I'll have a slice for Lucy."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.PUMPKINPIE = "A fitting dessert for the autumn season."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.PUMPKINPIE = "It's a vegetable based dessert!"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.PUMPKINPIE = "Can we eat it before dinner?"
--Banato Bread
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.BANATOBREAD = "It's actually not that bad."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.POUTINE = ""
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.POUTINE = ""
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.POUTINE = ""
STRINGS.CHARACTERS.WX78.DESCRIBE.POUTINE = ""
STRINGS.CHARACTERS.WENDY.DESCRIBE.POUTINE = ""
STRINGS.CHARACTERS.WOODIE.DESCRIBE.POUTINE = ""
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.POUTINE = ""
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.POUTINE = ""
STRINGS.CHARACTERS.WEBBER.DESCRIBE.POUTINE = ""
--Maple Pop
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.MAPLEPOP = "Only a sucker wouldn't love this."
GLOBAL.STRINGS.CHARACTERS.WILLOW.DESCRIBE.MAPLEPOP = "They had these in the candy shop back home."
GLOBAL.STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.MAPLEPOP = "They make these in land of pine and maple trees."
GLOBAL.STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.MAPLEPOP = "A maple syrup lolipop, a common treat in forests."
GLOBAL.STRINGS.CHARACTERS.WX78.DESCRIBE.MAPLEPOP = "A LEAF SHAPED CANDY. DISGUSTING."
GLOBAL.STRINGS.CHARACTERS.WENDY.DESCRIBE.MAPLEPOP = "Abigail, do you remember these? We used to have these in the fall."
GLOBAL.STRINGS.CHARACTERS.WOODIE.DESCRIBE.MAPLEPOP = "That's a nice treat."
GLOBAL.STRINGS.CHARACTERS.WAXWELL.DESCRIBE.MAPLEPOP = "One lick is all it takes to attach it firmly to Higgsbury's hair."
GLOBAL.STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.MAPLEPOP = "Tree food on a stick."
GLOBAL.STRINGS.CHARACTERS.WEBBER.DESCRIBE.MAPLEPOP = "Lolipop!"


STRINGS.NAMES.BANATO = "Banato"

STRINGS.CHARACTERS.GENERIC.DESCRIBE.BANATO = {
	"It's a banana.",
	"It's a potato.",
	
}

--Characters @ Modded Characters
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.WILL = 
{
            GENERIC = "Good health to you, %s!",
            ATTACKER = "If %s is looking for trouble, I shall give it to them!",
            MURDERER = "Murderer! To battle!",
            REVIVER = "Freya smiles on %s.",
            GHOST = "%s's restless spirit could be revived with a heart.",
            FIRESTARTER = "Forged in flame!",
}
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.DOC = 
{
            GENERIC = "Good health to you, %s!",
            ATTACKER = "If %s is looking for trouble, I shall give it to them!",
            MURDERER = "Murderer! To battle!",
            REVIVER = "Freya smiles on %s.",
            GHOST = "%s's restless spirit could be revived with a heart.",
            FIRESTARTER = "Forged in flame!",
}

STRINGS.CHARACTERS.WX78.DESCRIBE.WILL = 
{
    GENERIC = "DETECTING... %s!",
    ATTACKER = "%s IS NOT TO BE TRUSTED",
    MURDERER = "KILL! KILL!",
    REVIVER = "%s IS AN ASSET TO OUR SURVIVAL",
    GHOST = "FLESH WEAKLING %s NEEDS A HEART",
    FIRESTARTER = "%s IS CAUSING NEEDLESS DESTRUCTION. GOOD",
}
STRINGS.CHARACTERS.WX78.DESCRIBE.DOC = 
{
    GENERIC = "DETECTING... %s!",
    ATTACKER = "%s IS NOT TO BE TRUSTED",
    MURDERER = "KILL! KILL!",
    REVIVER = "%s IS AN ASSET TO OUR SURVIVAL",
    GHOST = "FLESH WEAKLING %s NEEDS A HEART",
    FIRESTARTER = "%s IS CAUSING NEEDLESS DESTRUCTION. GOOD",
}

STRINGS.CHARACTERS.WOODIE.DESCRIBE.WILL = 
{
            GENERIC = "Look who it is! Little %s!",
            ATTACKER = "%s is going to end up on the chopping block at this rate...",
            MURDERER = "Enemy of the forest!",
            REVIVER = "%s, you're doin' great, little buddy.",
            GHOST = "Someone should rub a heart on %s.",
            FIRESTARTER = "Keep the fire from my trees, eh, %s?",
}
STRINGS.CHARACTERS.WOODIE.DESCRIBE.DOC = 
{
			GENERIC = "Dr. %s! Hey buddy!",
			ATTACKER = "You haven't been very gentlemanly lately, Dr. %s.",
			MURDERER = "Enemy of the forest!",
			REVIVER = "%s! You're doin' great, bud.",
			GHOST = "Someone should rub a heart on %s.",
			FIRESTARTER = "Was that blaze some sort of experiment, %s?",
}

STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.WILL = 
{
            GENERIC = "Is tiniest %s! Hello!",
            ATTACKER = "Does %s want to fight?",
            MURDERER = "%s is killer!",
            REVIVER = "%s is nice person.",
            GHOST = "Wolfgang will get raw pump-y heart for you!",
            FIRESTARTER = "%s is lighting burny fires!",
}
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.DOC = 
{
            GENERIC = "Is tiny doctor %s! Hello!",
            ATTACKER = "Does %s want to fight?",
            MURDERER = "%s is killer doctor!",
            REVIVER = "%s is nice person.",
            GHOST = "Wolfgang will get raw pump-y heart for you!",
            FIRESTARTER = "%s is lighting burny fires!",
}

STRINGS.CHARACTERS.WILLOW.DESCRIBE.WILL = 
{
            GENERIC = "Hi Lil' %s!",
            ATTACKER = "Why, Lil' %s... that fire in your eyes!",
            MURDERER = "Burn the murderer! Burn the murderer!",
            REVIVER = "Who do ghosts call? Lil' %s!",
            GHOST = "I better get a heart for poor little %s.",
            FIRESTARTER = "YES! BUUURN!",
}
STRINGS.CHARACTERS.WILLOW.DESCRIBE.DOC = 
{
			GENERIC = "Hi %s!",
			ATTACKER = "Why, %s... that fire in your eyes!",
			MURDERER = "Hey %s! You're not a real doctor! Raaaaugh!",
			REVIVER = "%s won't leave anyone behind.",
			GHOST = "I better get a heart for %s.",
			FIRESTARTER = "Oh, %s!! Let me help with your next fire!!",
}

STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.WILL = 
{
            GENERIC = "Ah, greetings dear %s!",
            ATTACKER = "That no good %s is up to no good.",
            MURDERER = "I'll erase you from the history books!",
            REVIVER = "I appreciate your commitment to group survival, %s.",
            GHOST = "Poor dear. %s needs a heart to anchor them to this plane.",
            FIRESTARTER = "%s, what have I told you about lighting fires?",
}
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.DOC = 
{
            GENERIC = "Ah, greetings dear %s!",
            ATTACKER = "Oh no, %s, that isn't medicine at all.",
            MURDERER = "Your medical license is being revoked!",
            REVIVER = "Thank you for putting your practices to work, dear %s.",
            GHOST = "Poor dear. %s needs a heart to anchor them to this plane.",
            FIRESTARTER = "%s, what have I told you about lighting fires?",
}

STRINGS.CHARACTERS.WENDY.DESCRIBE.WILL = 
{
            GENERIC = "How do you do, %s?",
            ATTACKER = "%s... they'll betray us.",
            MURDERER = "Murderer! Cutthroat!",
            REVIVER = "Abigail likes you, %s.",
            GHOST = "A heart could return %s to this world...",
            FIRESTARTER = "Do you wish to see the world burn, too?",
}
STRINGS.CHARACTERS.WENDY.DESCRIBE.DOC = 
{
			GENERIC = "How do you do, %s?",
			ATTACKER = "%s is unstable.",
			MURDERER = "You've gone mad, scientist.",
			REVIVER = "Abigail says she likes you, %s.",
			GHOST = "That was a bad experiment, %s...",
			FIRESTARTER = "Douse your fires, %s.",
}

STRINGS.CHARACTERS.WEBBER.DESCRIBE.WILL = 
{
            GENERIC = "Hey! Hi %s!",
            ATTACKER = "%s looks mean.",
            MURDERER = "Meanie! Get'em!",
            REVIVER = "%s is super nice to ghosts.",
            GHOST = "Don't worry, %s, we'll find you a heart!",
            FIRESTARTER = "%s, you lit a fire!",
}
STRINGS.CHARACTERS.WEBBER.DESCRIBE.DOC = 
{
            GENERIC = "Hey! Hi Doctor %s!",
            ATTACKER = "%s looks like a mean doc.",
            MURDERER = "Meanie! Get'em!",
            REVIVER = "%s is super nice to ghosts.",
            GHOST = "Don't worry, %s, we'll find you a heart!",
            FIRESTARTER = "%s, you lit a fire!",
}

STRINGS.CHARACTERS.WAXWELL.DESCRIBE.WILL = 
{
	GENERIC = "Greetings, Mr. %s.",
	ATTACKER = "It appears the rabbit child has a violent streak.",
	MURDERER = "I can't believe he actually had it in him.",
	REVIVER = "He couldn't bear to see someone stranded on the other side.",
	GHOST = "He remains gentle even in death.",
}
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.DOC = 
{
	GENERIC = "Greetings, Dr. %s.",
	ATTACKER = "He has used his anatomical knoweldge for harm.",
	MURDERER = "I fear it may be best not to trust those concoctions.",
	REVIVER = "He has devised a potion to bring people back from the dead.",
	GHOST = "Can your sciences explain this one, scientist?",
}

STRINGS.CHARACTERS.GENERIC.DESCRIBE.WILL = 
{
            GENERIC = "Greetings, Little %s!",
            ATTACKER = "%s has a thirst for blood, I see...",
            MURDERER = "Murderer! Get me an axe and I'll take it from here.",
            REVIVER = "%s is learning the ropes really quickly.",
            GHOST = "Oh, that's sad. We should get a heart for %s.",
            FIRESTARTER = "You look burned out, %s.",
}
STRINGS.CHARACTERS.GENERIC.DESCRIBE.DOC = 
{
			GENERIC = "Stars and atoms! Are you my doppelganger, %s?",
			ATTACKER = "That's not how I'd practice medicine, %s...",
			MURDERER = "You've violated the Hippocratic Oath, %s! I'll handle this myself!",
			REVIVER = "%s has expertly put our theories into practice.",
			GHOST = "Better concoct a revival device. Can't leave another man of science floating.",
			FIRESTARTER = "Burning that wasn't very scientific, %s.",
}

--BBQ Grill
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BBQ = 
{
			GENERIC = "It's a grill.",
			ON = "Time to get cooking!",
			OFF = "It's not going to cook anything if it's cold like that.",
			LOWFUEL = "It's not looking as warm it usually is.",
			BURNT = "The grill's been roasted.",
}
STRINGS.CHARACTERS.WILLOW.DESCRIBE.BBQ = 
{
			GENERIC = "It's a grill.",
			ON = "Cooking without a big fire? Boring!",
			OFF = "It's not even that warm!",
			LOWFUEL = "My lighter has more fuel than that.",
			BURNT = "Burn! Buuuurn!",
}
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.BBQ = 
{
			GENERIC = "It's a grill.",
			ON = "Is a big hot!",
			OFF = "Is rather cold now.",
			LOWFUEL = "It needs more fire!",
			BURNT = "Too much fire.",
}
STRINGS.CHARACTERS.WENDY.DESCRIBE.BBQ = 
{
			GENERIC = "It's a grill.",
			ON = "It's a bit nostalgic.",
			OFF = "Surely, we need to turn it on...",
			LOWFUEL = "It's starting to have choking embers.",
			BURNT = "I suppose good things never last...",
}
STRINGS.CHARACTERS.WX78.DESCRIBE.BBQ = 
{
			GENERIC = "IT'S A GRILL.",
			ON = "THE COOKING MACHINE IS READY.",
			OFF = "I CAN'T COOK FLESHLINGS IF IT'S COLD.",
			LOWFUEL = "THE MACHINE'S FUEL RESERVES ARE LOW.",
			BURNT = "ERROR: THERMAL THRESHOLD REACHED.",
}
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.BBQ = 
{
			GENERIC = "It's a grill.",
			ON = "Perhaps the dears can make some lunch for us?",
			OFF = "It needs to be on before it can be used.",
			LOWFUEL = "I do hope someone brought coal.",
			BURNT = "That's a definition of irony, I suppose.",
}
STRINGS.CHARACTERS.WOODIE.DESCRIBE.BBQ = 
{
			GENERIC = "It's a grill, eh.",
			ON = "Anyone have deer meat?",
			OFF = "Little cold for cookin' on, eh?",
			LOWFUEL = "Lookin' like we might need to get some coals.",
			BURNT = "That was overboard, eh.",
}
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.BBQ = 
{
			GENERIC = "It's a grill.",
			ON = "Reduced to cooking food like barbarians...",
			OFF = "I prefer finer dishes anyway.",
			LOWFUEL = "I don't suppose someone isn't going to fuel this thing, right?",
			BURNT = "That might be a finer use for it.",
}
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.BBQ = 
{
			GENERIC = "It's a grill, eh.",
			ON = "Meat on Metal!",
			OFF = "It will not cook with this little heat!",
			LOWFUEL = "The flames are dying!",
			BURNT = "It went out in a blaze of glory!",
}
STRINGS.CHARACTERS.WEBBER.DESCRIBE.BBQ = 
{
			GENERIC = "It's a grill, eh.",
			ON = "We remember having picnics with these!",
			OFF = "It's not really moving.",
			LOWFUEL = "Ooh! We should put some coal in it!",
			BURNT = "Wow. What happened?",
}
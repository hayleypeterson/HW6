
Hayley Peterson
HW3: Genie
* Begin.
// * Skip to genie! ->wishing
   
- You wake up to the smell of burning. You try to open your eyes, but there's a blinding light above you. It would be a lot easier to keep your eyes shut, but a shooting pain in your foot jolts you awake.
* Open your eyes.

- What you see is a lot worse than you could have imagined. The smoldering remains of what should have been a comfortable commercial flight home from your business trip are scattered across several sandy dunes. You can only see half the plane, but no one else seems responsive. Is this the end? ->trapped


== trapped ==
    *   [Try to remember how you got here.]
        You wrack your brain, which is probably concussed, for details about what happened. All you can remember is that three hours into your redeye, flight attendants began hurrying around the plane in a panic. People screaming, the oxygen masks falling from above, the plane hitching to the side... that must have been last night. Have you been stuck here overnight? ->trapped
	*	[Evaluate yourself for wounds.] -> get_free
	*	[Check for other survivors.] -> get_help
	*   [Shout for anyone to come to your aid.] 
	    You shout as loud as you can. "HELP! HELP! I'M HURT!" No one comes. ->trapped
	*	->
		You're bleeding, and the heat of the plane trapping your foot is searing. The pain is too much. You rest your head, and let unconsciousness take over.
		-> END
	
	= get_free
	- You take a closer look at yourself. It must be some sort of medical miracle, or act of divine intervention, that you're not in worse shape. There's a medium-sized piece of metal debris weighing your foot down, though. It's not actively on fire, but boy is it hot from the sun. 
	    * [Get in position to lift it.]
	        You try to scooch closer to the chunk of metal, but bending your bad leg sends pain shooting up your body like electricity. You bite back a shout and manage to get two hands under the piece of metal. It's nearly too hot to touch - and certainly too heavy to lift alone. 
	        ** [Try anyway.]
	            You summon every bit of your strength. {~It's not enough. You'll need someone else to help. ->trapped|Against all odds, you manage to lift the debris just far enough to slip your foot out. You yank the rest of your shattered foot out, injured but alive. And now free. -> injured}
	       ** [Look for help.] ->get_help
	   
	= get_help
    - Desperation is kicking in. If you can't get this thing off soon, you'll certainly be dead, if you aren't already. Luckily the adrenaline is helping. You squint and the horrific scene surrounding you becomes more clear. To your left, you see a pile of burning rubble, but to your right, there's a loose airplane seat. A forty year old man is slumped over, his glasses cracked and head bleeding. -> awaken_man
    
    = awaken_man
        + [Shout to him.]
            {&"HEY!" | "Are you awake!" | "Please, I'm hurt!" | "Wake up!"}
            {No response. | You think you see his head twitch slightly. | He looks slightly conscious, if you can just get him fully alert.}
             -> awaken_man
        + [Throw something at him.]
        You look for something to throw. All you've got is your left shoe, the one that's not trapped. Throw it?
            ++ [Throw the shoe.]
                You lob the shoe over at the man. Good thing you've got a good arm - it lands right in his lap somehow. He lifts his head, conscious.-> man_awake
            ++ [Don't.] -> awaken_man
            
    = man_awake
    
    The man lifts his head. He looks to be in pretty bad shape, but is able to hobble weakly over to you, bracing himself on a metal bar that had snapped off by his feet. 
    * "Are you okay?
        He gives a weak nod, and shoves the metal bar at an angle under the debris. Then, leaning all his weight down, he manages to pry it up. You slide out from under as fast as you can, and scramble to the man, but he's already passed out. You're alone again. ->injured
    * "Get this thing off me!"
    He scowls, and shoves the metal bar at an angle under the debris. Then, leaning all his weight down, he manages to pry it up. You slide out from under as fast as you can, and scramble to the man, but he's already passed out. You're alone again. ->injured
    
    ->END
    
    
    
    == injured ==
    Well, you're out, but definitely have a broken foot. Maybe you can scavenge something from the unburnt luggage. You limp towards a promising looking pile, but there's only one suitcase that seems to have survived. You pull the zipper open hopefully. Fortunately, whoever packed this suitcase seemed to be on a hiking trip. ->luggage
    
    = luggage
    * [Take the smashed crackers.]
        You shove the crackers in your mouth hungrily. They dissolve like sawdust in your dry mouth. You need water. ->luggage
    * [Use the clothes to protect yourself.]
        You wrap a t shirt around your head, hoping to protect yourself from the sun. ->luggage
    * (can_walk) [Use the trekking poles to make a splint.]
        You use the climbing rope and a trekking pole, combined with some loose clothes, to fashion and secure a makeshift splint. It's pretty bad, but at least now you can put a bit of pressure on your leg. ->luggage
    + [Leave.]
        {can_walk: With the splint, you're able to move, just barely. There's nothing left here. You start to wander into the distance. You check the shadows, and start heading to where you hope is north. Hopefully if you maintain this direction, you'll find something. Anything. -> wandering}
        You try to start walking, but the pain in your leg is too strong. You have to do something to address it before you can leave. ->luggage
    
    
    == wandering ==
    + [Walk.]
    {You head towards the horizon. ->wandering | And walk for what feels like hours...->wandering | ... and hours... ->wandering| ... until you start... ->wandering| ... feeling faint...->wandering | ... you fall to your knees. -> weakened }
    
    = weakened
    The sun is setting, and you lay your head down, sleeping dreamlessly. When you awaken, your hand is closing over something hard. You raise your head, confused. Your leg is hurting a lot more than yesterday. When you blink your eyes open, you realize your hand is on something gold and shiny.
    * [Pick it up.]
    - You dig out the sand around the object, and it glints in the sunlight. Though it should be burning hot, the metal feels cool and smooth against your hands. It' s an oil lamp. ->investigating
    = investigating
        * [Am I hallucinating?]
        You blink. What the hell is this, some kind of dream? The afterlife? It sure doesn't feel like it, because you still seem to be on the brink of death. But then, what on earth is this? -> investigating
        * [Rub the lamp.] -> genie_arrives
    
    
    ==genie_arrives==

    As soon as your hand moves across the metal, you feel a whir from inside. You must be going crazy. The lamp starts spinning wildly until it slips out of your hands, glowing blue. And out comes a literal genie.
    * "Hello?"
    * [Blink.]
    * "What the f$%&!"
    - "Why hello there! You seem to have seen better days. Well, I'm here to turn your luck around, for I am the wish master. I'm here to give you any 3 wishes in the world!"
    * "Huh?"
    * "Are you real?"
    - "I'm the wish master, kid. And I've got places to be, so are you going to wish or not?"
    * "Uh, sure." 
    -> wishing
    * "Uh, no."
    As fast as he appeared, the genie is sucked back into the lamp, which melts into water in your hands. You're alone again. And now there's nothing to save you. -> END
    

    ==wishing==
    The genie smiles. {!| He looks pleased with himself. |He seems excited to be done with your wishes soon.}
    VAR wishes = 3
    {
	- wishes < 1:
        "Bummer. Looks like you're all out of wishes!" ->over
    - wishes == 1:
        "You've got 1 wish left. Make it a good one."
	- else:
        "You've got {wishes} wishes left. So, what can I do for you?"
}
    
    
    
    * (healthy) Fix my injuries.
        With a painless crack, you feel your ankle snap back into place. Not only that, but the hunger and thirst mysteriously ebbs away. You feel amazing!
      ~ wishes -= 1
    ->wishing
    * (peace) Grant world peace. 
        "Done!" the genie grins. "Of course, you wouldn't know any different. You're still here in this dumb desert! But I promise, there are some serious political reforms happening as we speak."
     ~ wishes -= 1 
     ->wishing
    * (zombies) Save everyone on the plane! 
        "They're all dead, buddy. So I don't know exactly what you mean by save, but I went ahead and zombified them all. Hope that's sufficient!"
     ~ wishes -= 1
    ->wishing
    * (pie) Make me a pie. 
        A pie pops into your hands. Yum.
     ~ wishes -= 1
    ->wishing
    + I want INFINITE wishes! 
    ~ wishes -= 1
        ->asking_infinite
    *	->
        Huh. You can't think of anything else.
        "Out of wishes?" the genie jests. "You know this always happens. People THINK they want unlimited wishes, but you're too stupid to think of more!"
			-> END
    
    = infinite_wishing
   The genie looks bored.
   "You've got...ugh.... infinite wishes left. So, what can I do for you?"
    
    * Fix my injuries.
    {healthy: "I already DID that. Are you making fun of me?" ->infinite_wishing}
        With a painless crack, you feel your ankle snap back into place. Not only that, but the hunger and thirst mysteriously ebbs away. You feel amazing!
    ->infinite_wishing
    * Grant world peace. 
    {peace: "I already DID that. Are you making fun of me?" ->infinite_wishing}
        "Done!" the genie grins. "Of course, you wouldn't know any different. You're still here in this dumb desert! But I promise, there are some serious political reforms happening as we speak."
     ->infinite_wishing
    * Save everyone on the plane! 
    {zombies: "What, zombies not good enough for you? Fine, they're all HEALTHY AND HAPPY in their homes again. So lame." ->infinite_wishing}
        "They're all dead, buddy. So I don't know exactly what you mean by save, but I went ahead and zombified them all. Hope that's sufficient!"
    ->infinite_wishing
    * Make me a pie. 
    {pie: "Another? The calorie counts are pretty high on those, just saying."->infinite_wishing}
    A pie pops into your hands. Yum.
    ->infinite_wishing
    * I want INFINITE wishes! 
    "You've already got infinite wishes, dumbass."
        ->infinite_wishing
    *	->
        Huh. You can't think of anything else.
        "Out of wishes?" the genie jests. "You know this always happens. People THINK they want unlimited wishes, but you're too stupid to think of more!"
        ** "Fine, I'm done. Get me out of this desert."
            In an instant, you're back home, completely safe. -> over
        ** "I wish for you to be free, genie."
            "Really? Well in that case... thanks." -> over
    
    = asking_infinite 
    "Ugh, you're one of those? Well, since this is a cheat and the most UNORIGINAL wish you could ever have, I don't grant it to just anyone! You have to pass a very special test: my coin toss. Call it!
    + Heads!
    + Tails!
    + Side!
    - {~ "DAMN IT! How'd you get that right?" ->infinite_wishing | "HAH! Fool. Used up a wish for NOTHING! ->wishing }
    
    = over
    The genie pops out of existence as quickly as he came. No one is ever gonna believe the day you had. 
    ->END
    
    
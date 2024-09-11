/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR shells_count = 0




-> seashore

== seashore ==
You are sitting on the beach. 
It is {advance_time() }
{time == 2: You see footprints in the sand leading into a glowing portal.}  

+ [Stroll down the beach] -> beach2
* {time == 2} [Enter the portal] -> portal_travel
+ [Wait] -> seashore
-> DONE

== beach2 ==
This is further down the beach.

It is {advance_time() }
* { time == 1 } [Pick up some seashells] -> shells

+ [Stroll back up the beach] -> seashore
+ [Wait] -> beach2

== shells ==
You pick up the shells.
~ shells_count = shells_count + 1
-> beach2

== portal_travel ==
You feel your body rapidly accelerating as reality bends around you.
* [Keep going] -> new_beach

== new_beach ==
You find yourself on seemingly the same beach although everything feels a bit different.
It is {advance_time() }

+ [Wait] -> new_beach
+ [Stroll down the beach] -> new_beach2

== new_beach2 ==
This is further down the beach. {time == 2: A group of crabs are seen off in the distance.}
It is {advance_time() }
+ [Wait] -> new_beach2
+ [Stroll back up the beach] -> new_beach
* { time == 0} [Approach the crabs] -> crabs

== crabs ==
The crabs seem shocked at your presence. One of them turns to you and says, "How did a human get here? I thought they all went through carcinization a thousand years ago."
* {shells_count == 1} [Please turn me into a crab] -> become_crab
* {shells_count == 0} [I'm stuck as a human in a strange land] -> new_beach2

== become_crab ==
The crab takes your shells and turns you into a crab. You quickly adapt to crab society and live a long and fulfilling life.
-> END

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    

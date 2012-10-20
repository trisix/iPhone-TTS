iPhone TTS - This is a port of CMU's Festival-Lite (aka flite) library to the iPhone/iOS platform.
Homepage: http://bitbucket.org/sfoster/iphone-tts/


* HOW TO USE

To use it in a new or existing project you can follow these steps:

0: Grab the latest version from http://bitbucket.org/sfoster/iphone-tts/ and open it in finder.
1: Drag the "flite-1.4-iphone" directory into your project's "Other Sources" area.  This contains the sources to flite.
2: Drag the files FliteTTS.h and FliteTTS.m into your project's "Classes" area.
3: Add AVFoundation framework to your project if it does not already have it.
4: For the class where you want to call the library, if you want to define a class variable in the .h file, 
   add this line to your .h file just above the @interface line:

@class FliteTTS;

5: Create a pointer to the class, either in the .h or the .m depending on your needs:

    FliteTTS *fliteEngine;

6: In the .m file for the class add...

#import "FliteTTS.h"

7: Initialize an FliteTTS object and point your pointer to it:

    fliteEngine = [[FliteTTS alloc] init];

8: Start using it:

    [fliteEngine speakText:@"It works."];	// Make it talk
    [fliteEngine setPitch:100.0 variance:50.0 speed:1.0];	// Change the voice properties
	[fliteEngine setVoice:@"cmu_us_awb"];	// Switch to a different voice
	[fliteEngine stopTalking];				// stop talking
	
	
* INCLUDED VOICES (you can remove the ones you don't need)

cmu_us_kal
cmu_us_kal16
cmu_us_awb
cmu_us_rms
cmu_us_slt


* UPGRADING

1: Remove FliteTTS.h and FliteTTS.m from your project.  When xcode asks if you want to move them to the trash, click yes.
2: Remove the "flite" folder from your Other Sources.
3: Copy the new versions in like described in steps 1 and 2 of the "HOW TO USE" section above.
4: If your code calls the setVoicePitch method, change that to setPitch.


Let me know if you find any problems or want to contribute improvements.


Contributors: Sam Foster <samfoster@gmail.com> <http://cmang.org>

Credits: Flite is copyright 1999-2009 Carnegie Mellon University Language Technologies Institute.
Flite homepage: http://www.speech.cs.cmu.edu/flite/
It has been slightly modified to build on the iPhone platform.

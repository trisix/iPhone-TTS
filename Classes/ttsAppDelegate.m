//
//  ttsAppDelegate.m
//  tts
//
//  Created by Sam Foster on 8/11/09.
//  Copyright 2009. All rights reserved.
//

#import "ttsAppDelegate.h"
#import "ttsViewController.h"

@implementation ttsAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end

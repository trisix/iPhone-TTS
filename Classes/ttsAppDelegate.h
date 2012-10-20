//
//  ttsAppDelegate.h
//  tts
//
//  Created by Sam Foster on 8/11/09.
//  Copyright 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ttsViewController;

@interface ttsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ttsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ttsViewController *viewController;

@end


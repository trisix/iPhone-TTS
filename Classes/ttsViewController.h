//
//  ttsViewController.h
//  tts
//
//  Created by Sam Foster on 8/11/09.
//  Copyright 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@class FliteTTS;

@interface ttsViewController : UIViewController {
	IBOutlet UITextField *textField;
	FliteTTS *fliteEngine;
}

@property (nonatomic, strong) AVAudioPlayer *thisPlayer;
-(IBAction)textFieldDoneEditing:(id)sender;

@end


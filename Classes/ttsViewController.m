//
//  ttsViewController.m
//  tts
//
//  Created by Sam Foster on 8/11/09.
//  Copyright 2009. All rights reserved.
//

#import "ttsViewController.h"
#import "FliteTTS.h"

@implementation ttsViewController


-(IBAction)textFieldDoneEditing:(id)sender
{
	[sender resignFirstResponder]; // I think this closes the keyboard?
	[fliteEngine speakText:[sender text]];
	
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	fliteEngine = [[FliteTTS alloc] init];
	//[fliteEngine setPitch:125.0 variance:11.0 speed:1.1];
	//[fliteEngine speakText:@"It works."];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[fliteEngine dealloc];
    [super dealloc];
}

@end

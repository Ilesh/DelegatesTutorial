//
//  ViewController.m
//  DelegatesTutorial
//
//  Created by Josip Petric on 10/8/12.
//  Copyright (c) 2012 josip.petric1@gmail.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize delegatesDescriptionLabel;

// This is important method because here we specify that ViewController
// is delegate in DetailViewController
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([segue.identifier isEqualToString:@"detailViewSegue"]) {
		DetailViewController *detailViewController =
			segue.destinationViewController;
		 // here we set the ViewController to be delegate in
		// detailViewController
		detailViewController.tutorialDelegate1 = self;
	}
}

// ViewController must implement tutorialDelegate's methods
// because we specified that ViewController will conform to 
// tutorialDelegate protocol
-(void)delegatesDescribedWithDescription:(NSString *)description
{
	delegatesDescriptionLabel.text = description;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setDelegatesDescriptionLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

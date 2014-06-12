//
//  DetailViewController.m
//  DelegatesTutorial
//
//  Created by Josip Petric on 10/8/12.
//  Copyright (c) 2012 josip.petric1@gmail.com. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize delegatesDescriptionTF;
@synthesize tutorialDelegate1;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
	[self setDelegatesDescriptionTF:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)doneButtonPressed:(UIButton *)sender {
	// Here we tell delegate to invoke method in parent view.
	[self.tutorialDelegate1 delegatesDescribedWithDescription:
	 self.delegatesDescriptionTF.text];
	
	// close modal view
	[self dismissModalViewControllerAnimated:YES];
	
}
@end

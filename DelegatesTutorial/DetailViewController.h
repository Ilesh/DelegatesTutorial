//
//  DetailViewController.h
//  DelegatesTutorial
//
//  Created by Josip Petric on 10/8/12.
//  Copyright (c) 2012 josip.petric1@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>

// definition of the delegate
@protocol tutorialDelegate <NSObject>

-(void)delegatesDescribedWithDescription:(NSString *)description;

@end

@interface DetailViewController : UIViewController
// here we will have reference to the parent view
@property (weak, nonatomic) id<tutorialDelegate> tutorialDelegate1;

@property (weak, nonatomic) IBOutlet UITextField *delegatesDescriptionTF;
- (IBAction)doneButtonPressed:(UIButton *)sender;

@end

//
//  ViewController.h
//  DelegatesTutorial
//
//  Created by Josip Petric on 10/8/12.
//  Copyright (c) 2012 josip.petric1@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface ViewController : UIViewController <tutorialDelegate>
@property (weak, nonatomic) IBOutlet UILabel *delegatesDescriptionLabel;

@end

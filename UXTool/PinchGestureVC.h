//
//  PinchGestureVC.h
//  UXTool
//
//  Created by Lion on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PinchGestureVC : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UILabel *scaleLabel;


-(IBAction)handlePinch:(UIPinchGestureRecognizer *)recognizer;

@end

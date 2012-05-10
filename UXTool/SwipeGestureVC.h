//
//  SwipeGestureVC.h
//  UXTool
//
//  Created by Lion on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwipeGestureVC : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *velocityLabel;
@property (strong, nonatomic) IBOutlet UILabel *sizeLabel;
@property (strong, nonatomic) IBOutlet UIImageView *monkeyImageView;
- (IBAction)handleSwipeUp:(UISwipeGestureRecognizer *)sender;
- (IBAction)handleSwipeRight:(UISwipeGestureRecognizer *)sender;
- (IBAction)handleSwipeLeft:(UISwipeGestureRecognizer *)sender;
- (IBAction)handleSwipeDown:(UISwipeGestureRecognizer *)sender;

@end

//
//  RotationGestureVC.h
//  UXTool
//
//  Created by Lion on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RotationGestureVC : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *angleLabel;
- (IBAction)handleRotation:(UIRotationGestureRecognizer *)recognizer;

@end

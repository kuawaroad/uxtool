//
//  PanGestureVC.h
//  UXTool
//
//  Created by Lion on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PanGestureVC : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *velocityLabel;


-(IBAction)handlePan:(UIPanGestureRecognizer *)recognizer;

@end

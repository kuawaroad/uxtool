//
//  TapGestureVC.h
//  UXTool
//
//  Created by Lion on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TapGestureVC : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *touchesAndTaps;
@property (strong, nonatomic) IBOutlet UILabel *locationLabel;

- (IBAction)handleTap:(UITapGestureRecognizer *)sender;
@end

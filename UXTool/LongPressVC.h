//
//  LongPressVC.h
//  UXTool
//
//  Created by Lion on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LongPressVC : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *lastGestureLabel;
@property (strong, nonatomic) IBOutlet UILabel *durationLabel;

@property (strong, nonatomic) IBOutlet UILongPressGestureRecognizer *oneByOneGR;
@property (strong, nonatomic) IBOutlet UILongPressGestureRecognizer *oneByFiveGR;
@property (strong, nonatomic) IBOutlet UILongPressGestureRecognizer *twoByOneGR;
@property (strong, nonatomic) IBOutlet UILongPressGestureRecognizer *twoByFiveGR;
@property (strong, nonatomic) IBOutlet UILongPressGestureRecognizer *fiveByFiveGR;

- (IBAction)handleLongPressSingleOneSec:(UILongPressGestureRecognizer *)sender;
- (IBAction)handleLongPressSingleFiveSec:(UILongPressGestureRecognizer *)sender;
- (IBAction)handleLongPressDoubleOneSec:(UILongPressGestureRecognizer *)sender;
- (IBAction)handleLongPressDoubleFiveSec:(UILongPressGestureRecognizer *)sender;
- (IBAction)handleLongPressFiveForFive:(UILongPressGestureRecognizer *)sender;

@end

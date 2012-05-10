//
//  AccelerometerVC.h
//  UXTool
//
//  Created by Lion on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AccelerometerVC : UIViewController <UIAccelerometerDelegate>


@property (strong, nonatomic) IBOutlet UILabel *xLabel;
@property (strong, nonatomic) IBOutlet UILabel *yLabel;
@property (strong, nonatomic) IBOutlet UILabel *zLabel;

@property (strong, nonatomic) IBOutlet UIProgressView *Xprogress;
@property (strong, nonatomic) UIProgressView *Yprogress;
@property (strong, nonatomic) IBOutlet UIProgressView *Zprogress;

@property (nonatomic,strong) UIAccelerometer *myAccel;

@end

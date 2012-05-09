//
//  AccelerometerVC.h
//  UXTool
//
//  Created by Lion on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AccelerometerVC : UIViewController

@property (weak, nonatomic) IBOutlet UIProgressView *Xprogress;
@property (strong, nonatomic) UIProgressView *Yprogress;
@property (strong, nonatomic) IBOutlet UIProgressView *Zprogress;


@end

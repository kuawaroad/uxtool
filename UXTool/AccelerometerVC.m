//
//  AccelerometerVC.m
//  UXTool
//
//  Created by Lion on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AccelerometerVC.h"

@interface AccelerometerVC ()
@end

@implementation AccelerometerVC

@synthesize xLabel;
@synthesize yLabel;
@synthesize zLabel;
@synthesize Xprogress;
@synthesize Yprogress;
@synthesize Zprogress;
@synthesize myAccel;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
        // add the vertical progress indicator
    self.Yprogress = [[UIProgressView alloc] initWithFrame:CGRectMake(-127,215, 300, 9)];
    self.Yprogress.progressTintColor = [UIColor redColor];
    CGRect bounds = self.Yprogress.bounds;
    CGRect frame = self.Yprogress.frame;
    NSLog(@"BOUNDS (%f , %f) W%f x H%f",bounds.origin.x,bounds.origin.y,bounds.size.width, bounds.size.height);
    NSLog(@"FRAME (%f , %f) W%f x H%f\n",frame.origin.x,frame.origin.y,frame.size.width,frame.size.height);
    self.Yprogress.transform = CGAffineTransformRotate(self.Yprogress.transform,(-M_PI * 0.5));
    [self.view addSubview:self.Yprogress];
    
        // set up accelerometer
    self.myAccel = [UIAccelerometer sharedAccelerometer];
    self.myAccel.updateInterval = 0.35; // you can change this property while delegate is non-nil;
    self.myAccel.delegate = self;
}

-(void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
    self.xLabel.text = [NSString stringWithFormat:@"X: %.2f",acceleration.x];
    self.yLabel.text = [NSString stringWithFormat:@"Y: %.2f",acceleration.y];
    self.zLabel.text = [NSString stringWithFormat:@"Z: %.2f",acceleration.z];
    
        // Progress 50% = 0 acceleration
    self.Xprogress.progress = ABS(acceleration.x + .5);
    self.Yprogress.progress = ABS(acceleration.y + .5);
    self.Zprogress.progress = ABS(acceleration.z + .5);
}


- (void)viewDidUnload
{
    NSLog(@"Accel view unloading");
    [self.myAccel setDelegate:nil];
    
    [self setXprogress:nil];
    [self setYprogress:nil];
    [self setZprogress:nil];
    [self setXLabel:nil];
    [self setYLabel:nil];
    [self setZLabel:nil];
    
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

    // Adding Dealloc fixed the mystery back-navigating crash.  sweet.
-(void)dealloc
{
    NSLog(@"Accel Dealloc");
    [self.myAccel setDelegate:nil];
    
    self.Xprogress = nil;
    self.Yprogress = nil;
    self.Zprogress = nil;
    self.xLabel = nil;
    self.yLabel = nil;
    self.zLabel = nil;
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

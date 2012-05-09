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
@synthesize Xprogress;
@synthesize Yprogress;
@synthesize Zprogress;
    //@synthesize testView;

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
    //self.testView = [[UIProgressView alloc] initWithFrame:CGRectMake(100, 100, 200, 15)];//initWithProgressViewStyle:UIProgressViewStyleDefault];
    //self.testView.transform = CGAffineTransformMakeRotation(-M_PI * 0.5);
    //self.testView.progress = 0.685;
    //[self.view addSubview:self.testView];
    
    self.Yprogress = [[UIProgressView alloc] initWithFrame:CGRectMake(-127,215, 300, 9)];
        //self.Yprogress.backgroundColor = [UIColor blackColor];
    CGRect bounds = self.Yprogress.bounds;
    CGRect frame = self.Yprogress.frame;
    
    NSLog(@"BOUNDS (%f , %f) W%f x H%f",bounds.origin.x,bounds.origin.y,bounds.size.width, bounds.size.height);
    NSLog(@"FRAME (%f , %f) W%f x H%f\n",frame.origin.x,frame.origin.y,frame.size.width,frame.size.height);
    self.Yprogress.transform = CGAffineTransformRotate(self.Yprogress.transform,(-M_PI * 0.5));
    NSLog(@"BOUNDS (%f , %f) W%f x H%f",bounds.origin.x,bounds.origin.y,bounds.size.width, bounds.size.height);
    NSLog(@"FRAME (%f , %f) W%f x H%f",frame.origin.x,frame.origin.y,frame.size.width,frame.size.height);
    
        //[self.Yprogress setNeedsDisplay];
    [self.view addSubview:self.Yprogress];
}

- (void)viewDidUnload
{
    [self setXprogress:nil];
    [self setYprogress:nil];
    [self setZprogress:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

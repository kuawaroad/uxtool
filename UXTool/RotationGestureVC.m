//
//  RotationGestureVC.m
//  UXTool
//
//  Created by Lion on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#define RADIANS_TO_DEGREES(radians) ((radians) * (180.0 / M_PI))

#import "RotationGestureVC.h"

@interface RotationGestureVC ()

@end

@implementation RotationGestureVC
{
    CGFloat rotationDegrees;
}
@synthesize angleLabel;

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
    
}

-(void)updateUI
{
    self.angleLabel.text = [NSString stringWithFormat:@"Rotation Radians: %f",rotationDegrees];
}

- (void)viewDidUnload
{
    [self setAngleLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)handleRotation:(UIRotationGestureRecognizer *)recognizer
{
    recognizer.view.transform = CGAffineTransformRotate(recognizer.view.transform, recognizer.rotation);
    rotationDegrees = recognizer.rotation;
    [self updateUI];
    recognizer.rotation = 0;
}
@end

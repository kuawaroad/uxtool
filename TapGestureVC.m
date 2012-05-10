//
//  TapGestureVC.m
//  UXTool
//
//  Created by Lion on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TapGestureVC.h"

@interface TapGestureVC ()

@end

@implementation TapGestureVC
@synthesize touchesAndTaps;
@synthesize locationLabel;

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

- (void)viewDidUnload
{
    [self setTouchesAndTaps:nil];
    [self setLocationLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)handleTap:(UITapGestureRecognizer *)sender 
{
    CGPoint touchPoint = [sender locationInView:self.view];
    self.touchesAndTaps.text = [NSString stringWithFormat:@"Touches: %i  Location:(%.f , %.f)",sender.numberOfTouches,touchPoint.x,touchPoint.y];
}
@end

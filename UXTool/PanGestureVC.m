//
//  PanGestureVC.m
//  UXTool
//
//  Created by Lion on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PanGestureVC.h"

@interface PanGestureVC ()

@end

@implementation PanGestureVC

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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)handlePan:(UIPanGestureRecognizer *)recognizer
{
        // transform = movement of touch in the parent view's coordinate system
    CGPoint translation = [recognizer translationInView:self.view];
    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x, recognizer.view.center.y + translation.y); // move the center of the recognizer (and the image) to the new location, old location + new location
                                                                                                                              
        // reset the translation to 0,0 in the parent view, or else the distance will compound!
    [recognizer setTranslation:CGPointMake(0, 0) inView:self.view];
}

@end

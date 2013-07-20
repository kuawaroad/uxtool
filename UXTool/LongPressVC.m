//
//  LongPressVC.m
//  UXTool
//
//  Created by Lion on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LongPressVC.h"

@interface LongPressVC ()

@end

@implementation LongPressVC
@synthesize lastGestureLabel;
@synthesize durationLabel;
@synthesize oneByOneGR;
@synthesize oneByFiveGR;
@synthesize twoByOneGR;
@synthesize twoByFiveGR;
@synthesize fiveByFiveGR;

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
    
        // Gesture Recognizer Dependencies...
    self.oneByOneGR.cancelsTouchesInView = NO;
    self.oneByOneGR.delaysTouchesEnded = NO;
    
    [self.oneByFiveGR requireGestureRecognizerToFail:oneByOneGR];
}

-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    self.durationLabel.text = @"shouldRecognizeSimultaneous";
    return YES;
}

- (void)viewDidUnload
{
    NSLog(@"View Did Unload");
    [self.oneByOneGR setDelegate:nil];
    [self.oneByFiveGR setDelegate:nil];
    [self.twoByOneGR setDelegate:nil];
    [self.twoByFiveGR setDelegate:nil];
    [self.fiveByFiveGR setDelegate:nil];
    [self setLastGestureLabel:nil];
    [self setDurationLabel:nil];
    [self setOneByOneGR:nil];
    [self setOneByFiveGR:nil];
    [self setTwoByOneGR:nil];
    [self setTwoByFiveGR:nil];
    [self setFiveByFiveGR:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)handleLongPressSingleOneSec:(UILongPressGestureRecognizer *)sender {
    self.lastGestureLabel.text = @"One Touch, One Second";
}

- (IBAction)handleLongPressSingleFiveSec:(UILongPressGestureRecognizer *)sender {
    self.lastGestureLabel.text = @"One Touch, Five Seconds";
}

- (IBAction)handleLongPressDoubleOneSec:(UILongPressGestureRecognizer *)sender {
    self.lastGestureLabel.text = @"Two Touches, One Second";
}

- (IBAction)handleLongPressDoubleFiveSec:(UILongPressGestureRecognizer *)sender {
    self.lastGestureLabel.text = @"Two Touches, Five Seconds";
}

- (IBAction)handleLongPressFiveForFive:(UILongPressGestureRecognizer *)sender {
    self.lastGestureLabel.text = @"Five Touches, Five Seconds";
}

@end

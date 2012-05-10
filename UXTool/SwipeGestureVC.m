//
//  SwipeGestureVC.m
//  UXTool
//
//  Created by Lion on 5/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SwipeGestureVC.h"

@interface SwipeGestureVC ()

@end

@implementation SwipeGestureVC
@synthesize velocityLabel;
@synthesize sizeLabel;
@synthesize monkeyImageView;

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
    self.monkeyImageView.tag = 0;
}

- (void)viewDidUnload
{
    [self setSizeLabel:nil];
    [self setVelocityLabel:nil];
    [self setMonkeyImageView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)handleSwipeUp:(UISwipeGestureRecognizer *)sender 
{
    self.monkeyImageView.image = [UIImage imageNamed:@"monkey_3"];
    self.sizeLabel.text = [NSString stringWithFormat:@"Direction: UP"];
}

- (IBAction)handleSwipeRight:(UISwipeGestureRecognizer *)sender {
    self.monkeyImageView.image = [UIImage imageNamed:@"monkey_1"];
    self.sizeLabel.text = [NSString stringWithFormat:@"Direction: RIGHT"];
}

- (IBAction)handleSwipeLeft:(UISwipeGestureRecognizer *)sender {
    self.monkeyImageView.image = [UIImage imageNamed:@"monkey_2"];
    self.sizeLabel.text = [NSString stringWithFormat:@"Direction: LEFT"];
}

- (IBAction)handleSwipeDown:(UISwipeGestureRecognizer *)sender {
    self.monkeyImageView.image = [UIImage imageNamed:@"monkey_dead"];
    self.sizeLabel.text = [NSString stringWithFormat:@"Direction: DOWN"];
}
@end

//
//  MasterViewController.h
//  UXTool
//
//  Created by Lion on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

    //@class DetailViewController;
@class PinchGestureVC;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) PinchGestureVC *detailViewController;

@end

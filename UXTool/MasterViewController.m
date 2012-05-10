//
//  MasterViewController.m
//  UXTool
//
//  Created by Lion on 5/9/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MasterViewController.h"

    //#import "DetailViewController.h"
#import "PinchGestureVC.h"

@interface MasterViewController () 
{
    NSMutableArray *_objects;
}
-(NSString *)pathForFile:(NSString*)fileName ofType:(NSString *)fileType;
@end

@implementation MasterViewController

@synthesize detailViewController = _detailViewController;

- (void)awakeFromNib
{
    NSLog(@"awakeFromNib");
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        self.clearsSelectionOnViewWillAppear = NO;
        self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
    }
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
    self.navigationItem.rightBarButtonItem = addButton;
        self.detailViewController = (PinchGestureVC *)[[self.splitViewController.viewControllers lastObject] topViewController];
    
    NSDictionary *plistDict = [NSDictionary dictionaryWithContentsOfFile:[self pathForFile:@"Data" ofType:@"plist"]];
    _objects = [plistDict objectForKey:@"Root"];
        //objects should contain dictionaries now..
    NSLog(@"OBJECTS :: %@",_objects);
}

- (void)viewDidUnload
{
    NSLog(@"viewDidUnload");
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    _detailViewController = nil;
}

-(void)dealloc
{
    NSLog(@"dealloc");
    _objects = nil;
    _detailViewController = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)insertNewObject:(id)sender
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
    [_objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSLog(@"numberOfSectionsInTableView");
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"numberOfRowsInSection");
    return _objects.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellForRowAtIndexPath");
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];

    NSDictionary *cellDict = [_objects objectAtIndex:indexPath.row];
    cell.textLabel.text = [cellDict objectForKey:@"Title"];
    cell.detailTextLabel.text = [cellDict objectForKey:@"Subtitle"];
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
            //NSDate *object = [_objects objectAtIndex:indexPath.row];
            //self.detailViewController.detailItem = object;
    } else {
            // iPhone...
        if (indexPath.row == 0) {
            [self performSegueWithIdentifier:@"AccelerometerSegue" sender:[_objects objectAtIndex:indexPath.row]];
        } else if (indexPath.row == 1){
            [self performSegueWithIdentifier:@"TapSegue" sender:[_objects objectAtIndex:indexPath.row]];
        } else if (indexPath.row == 2){
            [self performSegueWithIdentifier:@"PinchSegue" sender:[_objects objectAtIndex:indexPath.row]];
        } else if (indexPath.row == 3){
            [self performSegueWithIdentifier:@"RotationSegue" sender:[_objects objectAtIndex:indexPath.row]];
        } else if (indexPath.row == 4){
            [self performSegueWithIdentifier:@"SwipeSegue" sender:[_objects objectAtIndex:indexPath.row]];
        } else if (indexPath.row == 5){
            [self performSegueWithIdentifier:@"PanSegue" sender:[_objects objectAtIndex:indexPath.row]];
        } else if (indexPath.row == 6){
            [self performSegueWithIdentifier:@"LongPressSegue" sender:[_objects objectAtIndex:indexPath.row]];
        } else if (indexPath.row == 7){
            [self performSegueWithIdentifier:@"PanSegue" sender:[_objects objectAtIndex:indexPath.row]];
        } else if (indexPath.row == 8){
            [self performSegueWithIdentifier:@"MultipleSegue" sender:[_objects objectAtIndex:indexPath.row]];
        } else if (indexPath.row == 9){
            [self performSegueWithIdentifier:@"CustomSegue" sender:[_objects objectAtIndex:indexPath.row]];
        }
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    /*
    if ([[segue identifier] isEqualToString:@"PinchSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDictionary *object = [_objects objectAtIndex:indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
    */
}

-(NSString *)pathForFile:(NSString *)plistFile ofType:(NSString *)fileType
{
    NSString *pathString = [[NSBundle mainBundle] pathForResource:plistFile ofType:fileType];
    return pathString;
}

@end

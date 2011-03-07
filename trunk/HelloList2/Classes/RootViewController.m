//
//  RootViewController.m
//  HelloList2
//
//  Created for CSE494
//

#import "RootViewController.h"


@implementation RootViewController
@synthesize addScreenVC;
@synthesize textField;

#pragma mark -
#pragma mark View lifecycle

/* viewDidLoad is a callback function; it's called after the UIView that the UIViewController
 controls is loaded into memory.  This is a good function to override and add to to do your
 own initializations and setup. */
- (void)viewDidLoad {
	/* Make sure to call the overridden function, in case it has any good setup to do */
    [super viewDidLoad];

    // We're adding a + button to the navigation bar in code instead of interface builder.  Note
	// that when we're initializing this button, we specify the method to call (the action) and the
	// receiver of that method (the target) when the button is pressed.  UIBarButtonItems are a bit
	// different than UIButtons, we setup an "Add It!" UIButton in Interface Builder.
     self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd 
																							target:self 
																							action:@selector(actionHappened)];
	
	// Initialize our ShoppingList instance variable
	myShoppingList = [ShoppingList alloc]; // allocates the memory
	myShoppingList = [myShoppingList init];  // initializes the memory
	
	
	
	// Normally in one line:
	// myShoppingList = [[ShoppingList alloc] init];
	// in java: myShoppingList = new ShoppingList();
	
}

// Called when the + button UIBarButtonItem is pressed
- (void)actionHappened {
	// "navigationController" is a property of the superclass UIViewController.  The UINavigationController
	// holds a stack of screens (UIViews controller by UIViewControllers) that the app is showing.
	// We're adding another screen (a UIView managed by a UIViewController) to the stack, to show our
	// view that we created in Interface Builder
	[self.navigationController pushViewController:addScreenVC animated:YES];
}

// Called when the "Add It!" button is pressed
- (IBAction)addPressed {
	// Right now, we're just adding some NSString to our list, even though
	// this NSString should come from the UITextField.
	[myShoppingList addItem:textField.text];  // @"hi" is an NSString
	
	// Once we've added the NSString, we can stop showing the add item screen.
	[self.navigationController popViewControllerAnimated:YES];
	NSLog(@"add pressed");
}


// Called when the UIView controller by this UIViewController (our first screen) is about
// to be visible.
- (void)viewWillAppear:(BOOL)animated {
	// Since we're overriding this function, we call the superclass in case it does something useful.
    [super viewWillAppear:animated];
	
	// We want the table (our list) to refresh and redraw in case we've added an item.
	[self.tableView reloadData];
}

/* Other callbacks that XCode thinks might be useful most of the time: */

/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/

/*
 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 */


#pragma mark -
#pragma mark Table view data source

/* These are all callbacks that the UITableView calls to figure out how to draw itself */

// Customize the number of sections in the table view.
// Our list is simple, it just has one section.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.  Since we only have one section,
// this function will always be called for section 0.  We want the number of rows in that
// section to be the size of our shopping list
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [myShoppingList size];
}


// Customize the appearance of table view cells.  When the UITableView goes to draw
// itself, it will call this callback function each time it needs a UITableViewCell to draw.
// The NSIndexPath is a list of numbers (indicies) for the section and row that
// the table needs a cell for.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
	/* We'll talk more about this later, but the code below here initializes a UITableViewCell
	 (or reuses one) for this function to customize and return */
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Now we need to customize the UITableViewCell before we return it.  Right now we
	// just have the cell say "hi", but we should look up the string in our ShoppingList data structure.
	cell.textLabel.text = [myShoppingList getTitle: indexPath.row];
	
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark -
#pragma mark Table view delegate

// This callback is called when a cell in the UITableView is tapped.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
	/*
	 <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
	 [self.navigationController pushViewController:detailViewController animated:YES];
	 [detailViewController release];
	 */
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end


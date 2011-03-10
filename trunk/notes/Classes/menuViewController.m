//
//  menuViewController.m
//  notes
//
//  Created by bjhagan on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "menuViewController.h"



@implementation menuViewController
@synthesize table;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
		//Initialize the array.
		notes = [[NSDictionary alloc] init];
		
		//Set the title
		self.navigationItem.title = @"Countries";
		
		NSMutableArray *keys = [NSArray arrayWithObjects:@"Note1", @"Note2", @"Note3", nil];
		
		NSMutableArray *objects = [NSArray arrayWithObjects:@"21/2/11", @"15/3/11", @"6/4/11", nil];
		
		notes = [NSDictionary dictionaryWithObjects:objects forKeys:keys];
		
		UITableViewCell *cell = [table dequeueReusableCellWithIdentifier:CellIdentifier];
		[table cellForRowAtIndexPath:<#(NSIndexPath *)indexPath#>
		for (id key in notes) {
			
			NSLog(@"key: %@, value: %@", key, [notes objectForKey:key]);
			if (cell == nil) {
				cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
				
			}
		}
			
		
    }
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
	return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [notes size];
}
		 
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	 
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
		 
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
	/*
- (void)viewDidLoad {
    [super viewDidLoad];
	
}
*/

- (IBAction) addNotePressed
{
	noteViewController *noteVC = [[noteViewController alloc] initWithNibName:@"noteViewController" bundle:nil];
	[self.navigationController pushViewController:noteVC animated:YES];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

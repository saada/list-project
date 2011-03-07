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
		notes = [[NSMutableArray alloc] init];
		
		//Add items
		[notes addObject:@"12/12/12\t\t\tIceland"];
		[notes addObject:@"Greenland"];
		[notes addObject:@"Switzerland"];
		[notes addObject:@"Norway"];
		[notes addObject:@"New Zealand"];
		[notes addObject:@"Greece"];
		[notes addObject:@"Rome"];
		[notes addObject:@"Ireland"];
		
		//Set the title
		self.navigationItem.title = @"Countries";
		
    }
    return self;
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd 
																						   target:self 
																						   action:@selector(actionHappened)];
}

- (void)actionHappened {
	// "navigationController" is a property of the superclass UIViewController.  The UINavigationController
	// holds a stack of screens (UIViews controller by UIViewControllers) that the app is showing.
	// We're adding another screen (a UIView managed by a UIViewController) to the stack, to show our
	// view that we created in Interface Builder
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

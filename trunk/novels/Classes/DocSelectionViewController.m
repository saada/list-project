//
//  DocSelectionViewController.m
//  novels
//
//  Created by msaada on 2/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DocSelectionViewController.h"


@implementation DocSelectionViewController

@synthesize picker;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	books = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Books" ofType:@"plist"]];
	[books retain];
	
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
	return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
	return [books count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger) row forComponent:(NSInteger)component {
	return [books objectAtIndex:row];
}

- (IBAction)readButtonPressed {
	// allocate a neew TextViewController and initialized it from a nib
	TextViewController *textVC = [[TextViewController alloc] initWithNibName:@"TextViewController" bundle:nil];
	
	// set the property of the book we should load to the current value in our UIPIcker. First, we need to get the selected index:
	int index = [picker selectedRowInComponent:0];
	
	//Then we translate that index into a filename
	textVC.book = [books objectAtIndex:index];
	
	//finally show the new view. the view controller will load our file as the view appears.
	[self.navigationController pushViewController:textVC animated:YES];
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

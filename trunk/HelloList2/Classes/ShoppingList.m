//
//  ShoppingList.m
//  HelloList2
//
//  Created for CSE494
//

#import "ShoppingList.h"


@implementation ShoppingList
// The @synthesize takes care of creating the getter and setter methods for our 
// instance variable, so that we can use the dot notation (self.myList) to access it.
@synthesize myList;

/* "init" is the typical name for the default constructor.  You'll see variations on it like
 "initWithBarButtonSystemItem:target:action:" that we used in RootViewController. */
- (id)init
{
    self = [super init]; // call any of the superclass implementations, in case we overrode it.
    if (self) {
        /* class-specific initialization goes here */
		// we need to initialize our list.  Rather than allocating and initializing the NSMutableArray,
		// NSMutableArray has a shortcut method to create an array for us.
		self.myList = [NSMutableArray arrayWithCapacity:5];
    }
    return self;
}

// Add a string to our data structure
- (void)addItem:(NSString*)item {
	if (item != nil) { // nil is null.  We don't want to add a nil string to our list!
		[self.myList addObject:item];
		// java: this.myList.addObject(item);
	}
}

// Get the size of our data structure.  This method might seem silly, since our data structure
// is just a simple wrapper around an array, but could be useful later if our data structure
// got more complex.
- (int)size {
	return [myList count];
}

- (NSString*)getTitle: (int) i {
		
		return [myList objectAtIndex: i];
	
}











@end

//
//  ShoppingList.h
//  HelloList2
//
//  Created for CSE494
//

#import <Foundation/Foundation.h>

/* Our ShoppingList data structure is a simple object that just contains a list of NSStrings. */

@interface ShoppingList : NSObject {
	/* An NSMutableArray is similar to a java ArrayList/Vector or a C++ Vector.
	 We'll initialize this instance variable in the init method of this class. */
	NSMutableArray *myList;
}

/* Normally, we might not expose this instance variable with a property here, giving it
 an external getter and setter.  But, we wanted some good practice with properties right now. */
@property (nonatomic, retain) NSMutableArray *myList;

- (void)addItem:(NSString*)item;
- (int)size;
- (NSString*)getTitle: (int) i ;

@end

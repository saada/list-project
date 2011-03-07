//
//  RootViewController.h
//  HelloList2
//
//  Created for CSE494
//

#import <UIKit/UIKit.h>
#import "ShoppingList.h"

@interface RootViewController : UITableViewController {
	/* Instance variables go in the class' interface specification */
	
	/* addScreenVC is the view controller for our add item screen.
	 The actual UIViewController object is created from our Interface Builder .xib file,
	 so we'll be making an IBOutlet tagged property for this instance variable.
	 */
	UIViewController *addScreenVC;
	
	/* myShoppingList is our data structure for holding the NSStrings in our list.
	 The actual ShoppingList object will be allocated and initialized by us after
	 the RootViewController has loaded.
	 */
	ShoppingList *myShoppingList;
	UITextField *textField;
	
	
	
}
/* We're not interested in having this property to have external getters and setters;
 we're really only interested in the property for having the IBOutlet tag so we
 can initalize addScreenVC from Interface Builder */
@property (nonatomic, retain) IBOutlet UIViewController *addScreenVC;
@property (nonatomic, retain) IBOutlet UITextField *textField;

/* function declarations:*/

// actionHappened is the callback for when the "+" button is pressed on the root view
- (void)actionHappened;

// addPressed is the callback for when the "Add It!" button is pressed on the add screen
// Note that we definitely need this function declaration here, tagged with "IBAction" as the
// return type (which is really just void), so that we can wire this function to the button
// in Interface Builder.
- (IBAction)addPressed;
@end

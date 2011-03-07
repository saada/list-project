//
//  menuViewController.h
//  notes
//
//  Created by bjhagan on 2/28/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "noteViewController.h"

@interface menuViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
	NSMutableArray *notes;
	UITableView *table;
	noteViewController *noteVC;
}
@property (nonatomic,retain) IBOutlet UITableView *table;
- (IBAction)tablePressed;
@end

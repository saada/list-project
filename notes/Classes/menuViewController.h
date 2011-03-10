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
	NSDictionary *notes;
	UITableView *table;
}
@property (nonatomic,retain) IBOutlet UITableView *table;
- (IBAction) tablePressed;
- (IBAction) addNotePressed;
@end

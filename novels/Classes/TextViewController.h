//
//  TextViewController.h
//  novels
//
//  Created by msaada on 2/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TextViewController : UIViewController {
	UITextView *myView;
	NSString *book;
}


@property (nonatomic, retain) IBOutlet UITextView *myView;
@property (nonatomic, retain) NSString *book;

- (void)loadText:(NSString *)path;

@end

//
//  novelsAppDelegate.h
//  novels
//
//  Created by msaada on 2/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextViewController.h"
#import "DocSelectionViewController.h"

@interface novelsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (void)loadText:(NSString *)path;

@end


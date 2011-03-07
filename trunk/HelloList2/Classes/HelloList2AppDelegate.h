//
//  HelloList2AppDelegate.h
//  HelloList2
//
//  Created for CSE494
//

#import <UIKit/UIKit.h>

@interface HelloList2AppDelegate : NSObject <UIApplicationDelegate> {
    /* These instance variables we're created by XCode.  They're both
	 initialized with objects created from the Interface Builder file */
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end


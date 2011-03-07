//
//  novelsAppDelegate.m
//  novels
//
//  Created by msaada on 2/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "novelsAppDelegate.h"

@implementation novelsAppDelegate

@synthesize window;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
    
	// allocate a TextViewController and initialize it from our xib
			// the nil bundle specifies that we are loading from the "main bundle, aka the bundle for our app
	//TextViewController *textVC = [[TextViewController alloc] initWithNibName:@"TextViewController" bundle:nil];
	
	// allocate a DocSelectionViewController and initialize it from our xib
	DocSelectionViewController *docVC = [[DocSelectionViewController alloc] initWithNibName:@"DocSelectionViewController" bundle:nil];
	
	// Something to note: the view contorller is not loaded until its view is accessed. Do any VC init in viewDidLoad for the VC, NOT HERE.
	
	
	// make a navigation controller with our new view controller at the root
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:docVC];
	
	// Quote from apple: "Its a good idea to set the view's frame before adding it to a window."
	//[textVC.view setFrame:[[UIScreen mainScreen] applicationFrame]] ;
	[navController.view setFrame:[[UIScreen mainScreen] applicationFrame]];
	
	// add the view that our view controller manages to the window so we can see it
	//[self.window addSubview:textVC.view];
	
	// add our navigation view to the window to the window so we can see it
	[self.window addSubview:navController.view];
	
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end

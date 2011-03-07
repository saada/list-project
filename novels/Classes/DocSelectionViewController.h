//
//  DocSelectionViewController.h
//  novels
//
//  Created by msaada on 2/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextViewController.h"


@interface DocSelectionViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate> {
	NSArray *books;
	UIPickerView *picker;
	
}

@property (nonatomic, retain) IBOutlet UIPickerView *picker;

//- (void)viewDidLoad;
//- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
//- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
//- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger) row forComponent:(NSInteger)component; 
- (IBAction)readButtonPressed;

@end

//
//  FirstViewController.h
//  sb
//
//  Created by SB on 6/5/13.
//  Copyright (c) 2013 SB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController{

IBOutlet UIImageView *imageview;
IBOutlet UITextField * textField1;
IBOutlet UITextField * textField2;
IBOutlet UITextField * textField3;
IBOutlet UITextField * textField4;
IBOutlet UISegmentedControl * segmentedControl1;
IBOutlet UILabel * label;

}
- (IBAction) sb;
-(IBAction) calculate;
-(IBAction) clear;
@end

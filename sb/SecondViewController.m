//
//  SecondViewController.m
//  sb
//
//  Created by SB on 6/5/13.
//  Copyright (c) 2013 SB. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [textField5 resignFirstResponder];
    [textField6 resignFirstResponder];
   
}
-(IBAction)calculateTwo{
    float sugarAmt = 0;

    float formula = 0;
  NSString *sugarDenom = ([segmentedControl2 titleForSegmentAtIndex:segmentedControl2.selectedSegmentIndex]);
    if (![sugarDenom isEqualToString:@"kg"]) {
        
        //then they chose pounds so convertto kg
        
        sugarAmt = ([textField5.text floatValue])/2.20462;
    
    }else{
        sugarAmt = ([textField5.text floatValue]);
    
    }
    
    
    
    
    
    
    float stillPercent = ([textField6.text floatValue]*.01);

  NSString *distillateDenom = ([segmentedControl3 titleForSegmentAtIndex:segmentedControl3.selectedSegmentIndex]);
  

    
    if (![distillateDenom isEqualToString:@"L"]) {
        
        //then they chose gallons so convertto l
        
         formula = (((sugarAmt*.55)/stillPercent))*.264172;
        
    }else{
  formula = (sugarAmt*.55)/stillPercent;
        
    }
    
    
    
    
    
    
    label2.text = [NSString stringWithFormat:@"%.2f",formula];

}

@end

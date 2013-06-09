//
//  FirstViewController.m
//  sb
//
//  Created by SB on 6/5/13.
//  Copyright (c) 2013 SB. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController


- (IBAction)sb{
    UIImage *img = [UIImage imageNamed:@"still.jpg"];
    textField3.enabled = NO;
    [imageview setImage:img];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [textField1 resignFirstResponder];
    [textField2 resignFirstResponder];
    [textField3 resignFirstResponder];
}

//

-(IBAction)clear{
    
    textField1.text= @"";
    
    textField2.text= @"";
    textField3.text= @"";
    label.text = @"";
    
}
-(IBAction)calculate{
    //# of gallons or litres
    float mash = ([textField1.text floatValue]);
    //starting proof
   
    float y = ([textField2.text floatValue]);
  
    float amt =0;
        float ratio =0;
    float measurement = 0;
    float  methRatio = 0.0000037037;
    
    float meth = 0;
    /*The lethal dose of methanol is at least 100 ml that is equal to about 80000 mg or you need 27000 liters of mash at least to get that amount.
     */
    
    // float c = x*([textField2.text floatValue]);
    //label.text = [[NSString alloc] initWithFormat:@"%2.f", c];
    NSString *a = ([segmentedControl1 titleForSegmentAtIndex:segmentedControl1.selectedSegmentIndex]);
    
    //label.text = ([segmentedControl1 titleForSegmentAtIndex:segmentedControl1.selectedSegmentIndex]);
    
    
    
    // if ([a isEqualToString:@"gal"]) {
    //label.text = @"Success";
    // DO ACTION HERE
    
    
    
    //  }else{
    
    //
    //methRatio = 1/270000;
    
    
    if (y != 0) {
          float proofDifference = 1+(((y-80)/2)*.01);
        
        
        ratio = proofDifference*methRatio;
    meth = mash*ratio;
      //  meth = proofDifference;
    }else{
     
    meth = mash*methRatio;
    }
    
    //   }
    //  [weightkg setText:[NSString stringWithFormat:@"%.2f", wt]];
    
    textField3.text =[NSString stringWithFormat:@"%.2f", meth];
    
    // textField3.text = [[NSString alloc] stringWithFormat:@"%2.f", meth];
    // textField4.text = [[NSString alloc] initWithFormat:@"%2.f", d];
    
    
    
    
}

@end

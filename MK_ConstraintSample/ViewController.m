//
//  ViewController.m
//  MK_ConstraintSample
//
//  Created by MurataKazuki on 2014/01/27.
//  Copyright (c) 2014年 MK. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIView *superview = self.view;
    
    UILabel *mylabel = [[UILabel alloc]init];
    [mylabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    mylabel.text = @"hello";
    
    UIButton *mybutton = [UIButton
                          buttonWithType:UIButtonTypeRoundedRect];
    [mybutton setTitle:@"My Button"
              forState:UIControlStateNormal];
    [mybutton setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [superview addSubview:mylabel];
    [superview addSubview:mybutton];
  
  
  
  
//  UITextField *v ;
//  v setContentVerticalAlignment:<#(UIControlContentVerticalAlignment)#>
  
  
  NSLayoutConstraint *myConstraint =[NSLayoutConstraint
                                     constraintWithItem:mylabel
                                     attribute:NSLayoutAttributeCenterY
                                     relatedBy:NSLayoutRelationEqual
                                     toItem:superview
                                     attribute:NSLayoutAttributeCenterY
                                     multiplier:1.0
                                     constant:0];
  
  [superview addConstraint:myConstraint];
  
  myConstraint =[NSLayoutConstraint
                 constraintWithItem:mylabel
                 attribute:NSLayoutAttributeCenterX
                 relatedBy:NSLayoutRelationEqual
                 toItem:superview
                 attribute:NSLayoutAttributeCenterX
                 multiplier:1.0
                 constant:0];
  
  [superview addConstraint:myConstraint];
  
  
  myConstraint =[NSLayoutConstraint constraintWithItem:mybutton
                                             attribute:NSLayoutAttributeTrailing
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:mylabel
                                             attribute:NSLayoutAttributeLeading
                                            multiplier:1
                                              constant:-10];
  
  [superview addConstraint:myConstraint];
  
  myConstraint =[NSLayoutConstraint constraintWithItem:mybutton
                                             attribute:NSLayoutAttributeBaseline
                                             relatedBy:NSLayoutRelationEqual
                                                toItem:mylabel
                                             attribute:NSLayoutAttributeBaseline
                                            multiplier:1
                                              constant:0];
  
  [superview addConstraint:myConstraint];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

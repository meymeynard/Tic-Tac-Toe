//
//  MBSViewController.h
//  TicTacToe
//
//  Created by Meynard on 11/29/12.
//  Copyright (c) 2012 Meynard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MBSViewController : UIViewController

- (IBAction)btnNew:(UIButton *)sender;
- (IBAction)btnPress:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIButton *btn1st;
@property (strong, nonatomic) IBOutlet UIButton *btn2nd;
@property (strong, nonatomic) IBOutlet UIButton *btn3rd;
@property (strong, nonatomic) IBOutlet UIButton *btn4th;
@property (strong, nonatomic) IBOutlet UIButton *btn5th;
@property (strong, nonatomic) IBOutlet UIButton *btn6th;
@property (strong, nonatomic) IBOutlet UIButton *btn7th;
@property (strong, nonatomic) IBOutlet UIButton *btn8th;
@property (strong, nonatomic) IBOutlet UIButton *btn9th;


@end

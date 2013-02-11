//
//  MBSViewController.m
//  TicTacToe
//
//  Created by Meynard on 11/29/12.
//  Copyright (c) 2012 Meynard. All rights reserved.
//

#import "MBSViewController.h"

// Variable declarations
Boolean player1, player2;
int p1boxes[9] = {}, p2boxes[9] = {};
NSString *symbol;



@interface MBSViewController ()

@end

@implementation MBSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    player1 = true;
    player2 = false;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnNew:(UIButton *)sender {
    // New Game button
    
    [self clearGame];
    
}

- (IBAction)btnPress:(UIButton *)sender {
    // Boxes buttons
    
    if (player1) {
        symbol = @"X";
        [sender setTitle:symbol forState: UIControlStateNormal];
        p1boxes[sender.tag - 1] = 1;
        p2boxes[sender.tag - 1] = 0;
        [self gameEval];
        player1 = false;
        player2 = true;
        sender.enabled = NO;
        [self drawGame];
        
    } else if (player2) {
        symbol = @"O";
        [sender setTitle:symbol forState: UIControlStateNormal];
        p1boxes[sender.tag - 1] = 0;
        p2boxes[sender.tag - 1] = 1;
        [self gameEval];
        player1 = true;
        player2 = false;
        sender.enabled = NO;
        [self drawGame];
        
    }
    
}

- (void) gameEval {
    // For Game Evaluation: If player 1 or player 2 wins.
    
    // For Player 1
    if (player1) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Result" message:@"Player 1 Wins!!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
        if (p1boxes[0] == 1 && p1boxes[1] == 1 && p1boxes[2] == 1) {
            [alert show];
            
        
        } else if (p1boxes[3] == 1 && p1boxes[4] == 1 && p1boxes[5] == 1) {
            [alert show];
        
        } else if (p1boxes[6] == 1 && p1boxes[7] == 1 && p1boxes[8] == 1) {
            [alert show];
        
        } else if (p1boxes[0] == 1 && p1boxes[3] == 1 && p1boxes[6] == 1) {
            [alert show];
        
        } else if (p1boxes[1] == 1 && p1boxes[4] == 1 && p1boxes[7] == 1) {
            [alert show];
        
        } else if (p1boxes[2] == 1 && p1boxes[5] == 1 && p1boxes[8] == 1) {
            [alert show];
        
        } else if (p1boxes[0] == 1 && p1boxes[4] == 1 && p1boxes[8] == 1) {
            [alert show];
        
        } else if (p1boxes[2] == 1 && p1boxes[4] == 1 && p1boxes[6] == 1) {
            [alert show];
        }
        
        // end of player 1 evaluation
    } else if (player2) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Result" message:@"Player 2 Wins!!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        if (p2boxes[0] == 1 && p2boxes[1] == 1 && p2boxes[2] == 1) {
            [alert show];
            
        } else if (p2boxes[3] == 1 && p2boxes[4] == 1 && p2boxes[5] == 1) {
            [alert show];
            
        } else if (p2boxes[6] == 1 && p2boxes[7] == 1 && p2boxes[8] == 1) {
            [alert show];
            
        } else if (p2boxes[0] == 1 && p2boxes[3] == 1 && p2boxes[6] == 1) {
            [alert show];
            
        } else if (p2boxes[1] == 1 && p2boxes[4] == 1 && p2boxes[7] == 1) {
            [alert show];
            
        } else if (p2boxes[2] == 1 && p2boxes[5] == 1 && p2boxes[8] == 1) {
            [alert show];
            
        } else if (p2boxes[0] == 1 && p2boxes[4] == 1 && p2boxes[8] == 1) {
            [alert show];
            
        } else if (p2boxes[2] == 1 && p2boxes[4] == 1 && p2boxes[6] == 1) {
            [alert show];
        }
        
    } // end of player 2 evaluation
    
}

- (void) clearGame {
    
    // Clear titles of buttons
    //
    [self.btn1st setTitle:@"" forState:UIControlStateNormal];
    [self.btn2nd setTitle:@"" forState:UIControlStateNormal];
    [self.btn3rd setTitle:@"" forState:UIControlStateNormal];
    [self.btn4th setTitle:@"" forState:UIControlStateNormal];
    [self.btn5th setTitle:@"" forState:UIControlStateNormal];
    [self.btn6th setTitle:@"" forState:UIControlStateNormal];
    [self.btn7th setTitle:@"" forState:UIControlStateNormal];
    [self.btn8th setTitle:@"" forState:UIControlStateNormal];
    [self.btn9th setTitle:@"" forState:UIControlStateNormal];
    
    // Resetting values
    //
    symbol = @"X";
    player1 = true;
    player2 = false;
    for (int z = 0; z < 9; z++) {
        p1boxes[z] = 0;
        p2boxes[z] = 0;
    }
    
    //Enabling of buttons
    //
    self.btn1st.enabled = YES;
    self.btn2nd.enabled = YES;
    self.btn3rd.enabled = YES;
    self.btn4th.enabled = YES;
    self.btn5th.enabled = YES;
    self.btn6th.enabled = YES;
    self.btn7th.enabled = YES;
    self.btn8th.enabled = YES;
    self.btn9th.enabled = YES;
    
}

- (void) drawGame {
    
    if (self.btn1st.enabled == NO && self.btn2nd.enabled == NO && self.btn3rd.enabled == NO && self.btn4th.enabled == NO && self.btn5th.enabled == NO && self.btn6th.enabled == NO && self.btn7th.enabled == NO && self.btn8th.enabled == NO && self.btn9th.enabled == NO) {
        
        UIAlertView *alertNow = [[UIAlertView alloc] initWithTitle:@"Result" message:@"It's a DRAW!!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertNow show];
    }
}

//- (void) processThis:(NSString *)var1 andThis:(NSString *)kamote;

@end

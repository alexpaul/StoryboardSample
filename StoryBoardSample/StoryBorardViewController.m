//
//  StoryBorardViewController.m
//  StoryBoardSample
//
//  Created by Alex Paul on 1/26/13.
//  Copyright (c) 2013 Alex Paul. All rights reserved.
//

#import "StoryBorardViewController.h"
#import "CorrectStringEnteredViewController.h"

@interface StoryBorardViewController ()
@property (weak, nonatomic) IBOutlet UITextField *aTextField;
@end

@implementation StoryBorardViewController

- (IBAction)submitPressed:(UIButton *)sender
{
    if ([self.aTextField.text isEqualToString:@"Correct String"]) {
        [self.navigationController pushViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"] animated:YES];
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField  
{
    [textField resignFirstResponder];
    
    return YES; 
}


@end

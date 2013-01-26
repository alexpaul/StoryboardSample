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
@property (strong, nonatomic) CorrectStringEnteredViewController *cViewController; 

@end

@implementation StoryBorardViewController

- (CorrectStringEnteredViewController *)cViewController
{
    if (!_cViewController) {
        _cViewController = [[CorrectStringEnteredViewController alloc] init];
    }
    return _cViewController; 
}

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

//
//  SAFCaculateRevenueViewController.m
//  SampleAppObjc
//
//  Created by JackyChen on 2016/12/29.
//  Copyright © 2016年 JackyChen. All rights reserved.
//

#import "SAFCaculateRevenueViewController.h"
#import "Bank.h"

@interface SAFCaculateRevenueViewController ()

@end

@implementation SAFCaculateRevenueViewController
{
    NSUserDefaults* userDefault;
}

- (IBAction)toogleSignOut:(UIButton*)sender
{
    [userDefault setBool:NO forKey:@"isSignIn"];
    
    [self performSegueWithIdentifier:@"toSignInSegue" sender:nil];
}

- (IBAction)toogleCalculate:(id)sender
{
    CGFloat capital = [_capitalText.text floatValue];
    CGFloat interest = [_interestText.text floatValue];
    
    _revenueLabel.text = [NSString stringWithFormat:@"%.2f", [Bank CalculateBalanceWithCaptital:capital interest:interest]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    userDefault = [NSUserDefaults standardUserDefaults];
    
    BOOL isSignIn = [[userDefault valueForKey:@"isSignIn"] boolValue];
    
    if ( isSignIn == NO )
    {
        [self performSegueWithIdentifier:@"toSignInSegue" sender:nil];
        return;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

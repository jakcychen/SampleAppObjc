//
//  SAFSignInViewController.m
//  SampleAppObjc
//
//  Created by JackyChen on 2016/12/29.
//  Copyright © 2016年 JackyChen. All rights reserved.
//

#import "SAFSignInViewController.h"

@interface SAFSignInViewController ()

@end

@implementation SAFSignInViewController
{
    NSUserDefaults* userDefault;
}

- (IBAction)toogleSignIn:(id)sender
{
    [userDefault setBool:YES forKey:@"isSignIn"];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    userDefault = [NSUserDefaults standardUserDefaults];
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

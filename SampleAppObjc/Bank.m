//
//  Bank.m
//  SampleAppObjc
//
//  Created by JackyChen on 2016/12/29.
//  Copyright © 2016年 JackyChen. All rights reserved.
//

#import "Bank.h"

@implementation Bank

+(float)CalculateBalanceWithCaptital:(float)capital interest:(float)interest
{
    return capital + capital * interest;
}

@end

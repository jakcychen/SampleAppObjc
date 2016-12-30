//
//  Bank.h
//  SampleAppObjc
//
//  Created by JackyChen on 2016/12/29.
//  Copyright © 2016年 JackyChen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Bank : NSObject

+(float)CalculateBalanceWithCaptital:(float)capital interest:(float)interest;

@end

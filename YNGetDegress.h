//
//  YNGetDegress.h
//  DeviceFlatwise
///
//  Created by 杨南 on 15/9/22.
//  Copyright (c) 2015年 杨南. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreMotion/CoreMotion.h>
#import <QuartzCore/QuartzCore.h>
@interface YNGetDegress : NSObject
+(void)getDegressWithBlock:(void(^)(CMAccelerometerData *latestAcc, NSError *error))aBlcok;
+(void)stopGetDegress;
@end

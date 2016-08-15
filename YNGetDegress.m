//
//  YNGetDegress.m
//  DeviceFlatwise
//
//  Created by 杨南 on 15/9/22.
//  Copyright (c) 2015年 杨南. All rights reserved.
//

#import "YNGetDegress.h"

@implementation YNGetDegress

CMMotionManager *motionManager;
+(void)getDegressWithBlock:(void(^)(CMAccelerometerData *latestAcc, NSError *error))aBlcok
{
    motionManager = [[CMMotionManager alloc] init];
    if (!motionManager.accelerometerAvailable) {
        NSLog(@"没有加速计");
    }
    motionManager.accelerometerUpdateInterval = 0.5; // 告诉manager，更新频率是100Hz
    
    [motionManager startDeviceMotionUpdates];

    [motionManager startAccelerometerUpdatesToQueue:[NSOperationQueue currentQueue] withHandler:^(CMAccelerometerData *latestAcc, NSError *error)
     {
//        double a = motionManager.deviceMotion.gravity.x;
        aBlcok(latestAcc,error);
    }];
}
+(void)stopGetDegress
{
    [motionManager stopDeviceMotionUpdates];
    motionManager = nil;
}
@end

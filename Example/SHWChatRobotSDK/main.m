//
//  main.m
//  SHWChatRobotSDK
//
//  Created by yayang on 12/20/2017.
//  Copyright (c) 2017 yayang. All rights reserved.
//

@import UIKit;
#import "SHWAppDelegate.h"
#import <SHWAnalyticsSDK/SHWAnalyticsSDK.h>

int main(int argc, char * argv[])
{
    @autoreleasepool {
        SHWAnalyticsPublicConfig *config = [SHWAnalyticsPublicConfig instanceWithAppKey:@""];
        [SHWAnalyticsSDKInterface startWithConfig:config];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([SHWAppDelegate class]));
    }
}

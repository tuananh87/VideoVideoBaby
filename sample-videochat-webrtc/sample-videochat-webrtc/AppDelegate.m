//
//  AppDelegate.m
//  QBRTCChatSemple
//
//  Created by Andrey Ivanov on 04.12.14.
//  Copyright (c) 2014 QuickBlox Team. All rights reserved.
//

#import "AppDelegate.h"
#import "SVProgressHUD.h"

#define QB_DEFAULT_ICE_SERVERS 0

const CGFloat kQBRingThickness = 1.f;
const NSTimeInterval kQBAnswerTimeInterval = 60.f;
const NSTimeInterval kQBRTCDisconnectTimeInterval = 30.f;

const NSUInteger kQBApplicationID = 28583;
NSString *const kQBRegisterServiceKey = @"hJRjUj2kxHvMPdB";
NSString *const kQBRegisterServiceSecret = @"mtdNRWmkmQC6K9u";
NSString *const kQBAccountKey = @"sqZ8T1pAfW8VFjxpynLP";

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //Quickblox preferences
    [QBApplication sharedApplication].applicationId = kQBApplicationID;
    [QBConnection registerServiceKey:kQBRegisterServiceKey];
    [QBConnection registerServiceSecret:kQBRegisterServiceSecret];
    [QBSettings setAccountKey:kQBAccountKey];
    [QBSettings setLogLevel:QBLogLevelDebug];
    
    //QuickbloxWebRTC preferences
    [QBRTCConfig setAnswerTimeInterval:kQBAnswerTimeInterval];
    [QBRTCConfig setDisconnectTimeInterval:kQBRTCDisconnectTimeInterval];
    [QBRTCConfig setDialingTimeInterval:5];
    
    //SVProgressHUD preferences
    [SVProgressHUD setForegroundColor:[UIColor whiteColor]];
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
    [SVProgressHUD setRingThickness:kQBRingThickness];
    
    return YES;
}

@end

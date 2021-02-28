//
//  AppDelegate.m
//  travel
//
//  Created by Оля Качинская on 28.02.2021.
//

#import "AppDelegate.h"
#import "Enums.h"


@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    Enums *firstHuman = [[Enums alloc] init];
    Enums *secondHuman = [[Enums alloc] init];
    
    [firstHuman SetUpProperties:Australia :airplane :spring :month];
    [secondHuman SetUpProperties:Norway :car :summer :weekend];

    [firstHuman DisplayInfo:@"first human"];
    [secondHuman DisplayInfo:@"second human"];
    
    //второе задание
    NSMutableArray *array1 = [NSMutableArray array];
    for (int i = 0; i < 20; i ++)
    {
        CGPoint point = CGPointMake(arc4random_uniform(11), arc4random_uniform(11));
        [array1 addObject:[NSValue valueWithCGPoint:point]];
    }
    
    CGRect rect = CGRectMake(3, 3, 3, 3);
  
    NSLog(@"Rect: %@", NSStringFromCGRect(rect));
    for (NSValue *value in array1)
    {
        CGPoint p = [value CGPointValue];
        NSLog(@"Point: %@", NSStringFromCGPoint(p));
        bool result = CGRectContainsPoint(rect, p);
        NSLog(@"Point hit the rect?\nAnswer: %@",(result ? @"Yes" : @"No"));
    }
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end

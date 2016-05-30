//
//  BNJSUserDefaultsHelper.m
//  CompSDK
//
//  Created by Fakai Zhao on 15/9/21.
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import "BNJSUserDefaultsHelper.h"

@implementation BNJSUserDefaultsHelper
// UserDefaults Key 前缀
static const NSString *kBNJSUserDefaultsKeyPrefix = @"COM.NUOMI.COMPSDK.KEY.";

#pragma mark -
#pragma mark Private Methods

+ (NSString *)userDefaultsKeyWithKey:(BNJSUserDefaultsKey)cusKey {
    return [NSString stringWithFormat:@"%@_%d", kBNJSUserDefaultsKeyPrefix, cusKey];
}


#pragma mark -
#pragma mark Public Methods

+ (id)valueForKey:(BNJSUserDefaultsKey)cusKey {
    return [[NSUserDefaults standardUserDefaults] valueForKey:[self userDefaultsKeyWithKey:cusKey]];
}


+ (BOOL)setValue:(id)value forKey:(BNJSUserDefaultsKey)cusKey {
    [[NSUserDefaults standardUserDefaults] setValue:value forKey:[self userDefaultsKeyWithKey:cusKey]];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}


+ (BOOL)boolForKey:(BNJSUserDefaultsKey)cusKey {
    return [[NSUserDefaults standardUserDefaults] boolForKey:[self userDefaultsKeyWithKey:cusKey]];
}


+ (BOOL)setBool:(BOOL)value forKey:(BNJSUserDefaultsKey)cusKey {
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:[self userDefaultsKeyWithKey:cusKey]];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}


+ (NSInteger)integerForKey:(BNJSUserDefaultsKey)cusKey {
    return [[NSUserDefaults standardUserDefaults] integerForKey:[self userDefaultsKeyWithKey:cusKey]];
}


+ (BOOL)setInteger:(NSInteger)value forKey:(BNJSUserDefaultsKey)cusKey {
    [[NSUserDefaults standardUserDefaults] setInteger:value forKey:[self userDefaultsKeyWithKey:cusKey]];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}


+ (double)doubleForKey:(BNJSUserDefaultsKey)cusKey {
    return [[NSUserDefaults standardUserDefaults] doubleForKey:[self userDefaultsKeyWithKey:cusKey]];
}


+ (BOOL)setDouble:(double)value forKey:(BNJSUserDefaultsKey)cusKey {
    [[NSUserDefaults standardUserDefaults] setDouble:value forKey:[self userDefaultsKeyWithKey:cusKey]];
    return [[NSUserDefaults standardUserDefaults] synchronize];
}

@end

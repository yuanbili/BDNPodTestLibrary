//
//  BNJSUserDefaultsHelper.h
//  CompSDK
//
//  Created by Fakai Zhao on 15/9/21.
//  Copyright (c) 2015年 Baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    
    // 预留值
    BNJSUserDefaultsKeyNone = 100,
    
    /************************************************************
     v5.0.0 Added.... DO NOT MODIFY IT !!!!!!!!!!!!!!!!!!
     v5.0.0 正在使用...已经发布.... 请勿修改 !!!!!!!!!!!!!
     ************************************************************/
    
    // 用户选择城市
    BNJSUserDefaultsKeyCurrentCity,
    
    // 选择城市历史记录
    BNJSUserDefaultsKeySelectedCityHistory,
    
    // 搜索历史记录
    BNJSUserDefaultsKeyQueryKeywordHistory,
    
    // 筛选配置更新时间
    BNJSUserDefaultsKeySearchFilterConfigLastUpdateTime,
    
    // 城市列表更新时间
    // BNJSUserDefaultsKeyQueryKeywordHistory,
    
    /************************************************************
     v5.1.0 Added.... DO NOT MODIFY IT !!!!!!!!!!!!!!!!!!
     v5.1.0 正在使用...已经发布.... 请勿修改 !!!!!!!!!!!!!
     ************************************************************/
    
    // 用户定位信息 包含经纬度 城市id 地址
    BNJSUserDefaultsKeyLastUserLocationInfo,
    
    /************************************************************
     v5.7.0 Added.... DO NOT MODIFY IT !!!!!!!!!!!!!!!!!!
     v5.7.0 正在使用...已经发布.... 请勿修改 !!!!!!!!!!!!!
     ************************************************************/
    
    // Banner取消关闭按钮点击时间
    BNJSUserDefaultsKeyHomeBannerCloseTime,
    
    /************************************************************
     v5.8.0 Added.... DO NOT MODIFY IT !!!!!!!!!!!!!!!!!!
     v5.8.0 正在使用...已经发布.... 请勿修改 !!!!!!!!!!!!!
     ************************************************************/
    
    // 服务端返回Copid过期时间
    BNJSUserDefaultsKeyCopidCookieExpires,
    BNJSUserDefaultsKeySearchFilterVersionMD5,
    
    /************************************************************
     v5.12.0 Added.... DO NOT MODIFY IT !!!!!!!!!!!!!!!!!!
     v5.12.0 正在使用...已经发布.... 请勿修改 !!!!!!!!!!!!!
     ************************************************************/
    
    // 是否展示过“自动选择最优优惠和抵用券方案”
    BNJSUserDefaultsKeyHasTipAutoChooseActivityAndVoucher,
    
    /************************************************************
     v5.13.2 Added.... DO NOT MODIFY IT !!!!!!!!!!!!!!!!!!
     v5.13.2 正在使用...已经发布.... 请勿修改 !!!!!!!!!!!!!
     ************************************************************/
    
    // 上次定位时间
    BNJSUserDefaultsKeyLastLocatedSuccessTimeInterval,
    
} BNJSUserDefaultsKey;

/**
 *  用于约束UserDefaults存储的Key
 */
@interface BNJSUserDefaultsHelper : NSObject

+ (id)valueForKey:(BNJSUserDefaultsKey)cusKey;
+ (BOOL)setValue:(id)value forKey:(BNJSUserDefaultsKey)cusKey;

+ (BOOL)boolForKey:(BNJSUserDefaultsKey)cusKey;
+ (BOOL)setBool:(BOOL)value forKey:(BNJSUserDefaultsKey)cusKey;

+ (NSInteger)integerForKey:(BNJSUserDefaultsKey)cusKey;
+ (BOOL)setInteger:(NSInteger)value forKey:(BNJSUserDefaultsKey)cusKey;

+ (double)doubleForKey:(BNJSUserDefaultsKey)cusKey;
+ (BOOL)setDouble:(double)value forKey:(BNJSUserDefaultsKey)cusKey;

@end


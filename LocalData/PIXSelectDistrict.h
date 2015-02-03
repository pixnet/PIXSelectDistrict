//
//  SelectDistrict.h
//  SelectDistrict
//
//  Created by shadow on 2015/1/15.
//  Copyright (c) 2015年 shadow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PIXSelectDistrict : NSObject

/**
 *  取得所有縣市名稱
 *
 *  @return 回傳縣市名稱
 */
-(NSArray *)getAllCounties;

/**
 *  取得所有市區名稱
 *
 *  @param countyName 縣市名稱
 *
 *  @return 回傳所有市區名稱
 */
- (NSArray *)getDistricts:(NSString *)countyName;

/**
 *  取得郵遞區號
 *
 *  @param countyName 縣市名稱
 *  @param districtis 市區名稱
 *
 *  @return 回傳郵遞區號
 */
- (NSString *)getZIPCode:(NSString *)countyName districtis:(NSString *)districtis;

@end

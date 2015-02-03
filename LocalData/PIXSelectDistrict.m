//
//  SelectDistrict.m
//  SelectDistrict
//
//  Created by shadow on 2015/1/15.
//  Copyright (c) 2015年 shadow. All rights reserved.
//

#import "PIXSelectDistrict.h"

@implementation PIXSelectDistrict
{
    NSArray *countiesArray;
    NSDictionary *districtisDictionary;
    NSDictionary *zipCodeDictionary;
}

- (id) init
{
    if (self = [super init])
    {
        [self initData];
    }
    return self;
}

- (void)initData
{
    NSString *allCountiesstPath = [[NSBundle mainBundle] pathForResource:@"AllCounties" ofType:@"plist"];
    NSString *districtsInCountyPath = [[NSBundle mainBundle] pathForResource:@"DistrictsInCounty" ofType:@"plist"];
    NSString *zIPCodePath = [[NSBundle mainBundle] pathForResource:@"ZIPCode" ofType:@"plist"];
    
    countiesArray = [[NSArray alloc]initWithContentsOfFile:allCountiesstPath];
    districtisDictionary = [[NSDictionary alloc]initWithContentsOfFile:districtsInCountyPath];
    zipCodeDictionary = [[NSDictionary alloc]initWithContentsOfFile:zIPCodePath];
}

- (NSArray *)getAllCounties
{
    return countiesArray;
}

- (NSArray *)getDistricts:(NSString *)countyName
{
    NSArray *array = [districtisDictionary objectForKey:countyName];
    return array;
}

- (NSString *)getZIPCode:(NSString *)countyName districtis:(NSString *)districtis
{
    NSString *string = nil;
    NSArray *districtisArray = [districtisDictionary objectForKey:countyName];
    NSArray *zipCodeArray = [zipCodeDictionary objectForKey:countyName];
    
    for (int i = 0 ; i < [districtisArray count] ; i++)
    {
        NSString *districtisStr = [NSString stringWithFormat:@"%@",[districtisArray objectAtIndex:i]];
        if ([districtis isEqualToString:districtisStr])
        {
            string = [NSString stringWithFormat:@"%@",[zipCodeArray objectAtIndex:i]];
            break;
        }
    }
    return string;
}


@end

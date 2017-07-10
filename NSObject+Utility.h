//
//  NSObject+Utility.h
//  EmptyJudgeDemo
//
//  Created by uyi on 2017/4/25.
//  Copyright © 2017年 GCHShoppingGuide. All rights reserved.
//
//网络数据的请求与调试
//https://api.westtraveller.com/?c=Spot&a=api_map_list

#import <Foundation/Foundation.h>

@interface NSObject (Utility)

//    id nullClass = [NSNull null];
//    id nullObjec = nil;
//    id nullStr = @"";
//    id nullWhiteSpaceStr = @"    ";
//    char str1[] = "HelloWorld";
//    id kinoStr = [NSString stringWithUTF8String:str1];
//    id testStr = @"hello word";
//    几种空字符串的判断与处理

+ (BOOL)isEmptyWithObject:(id)object;

+ (NSString *)kino_objectForKey:(NSString *)keyStr withDict:(NSDictionary *)dic;

@end

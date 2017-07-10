//
//  NSObject+Utility.m
//  EmptyJudgeDemo
//
//  Created by uyi on 2017/4/25.
//  Copyright © 2017年 GCHShoppingGuide. All rights reserved.
//

#import "NSObject+Utility.h"

@implementation NSObject (Utility)

+ (BOOL)isEmptyWithObject:(id)object
{
    if ([object isKindOfClass:[NSNull class]]) {
        return YES;
    }

    if (object == nil) {
        return YES;
    }

    if ([object isKindOfClass:[NSNumber class]]) {
        NSNumber *nsNumber = (NSNumber *)object;
        int number = [nsNumber intValue];
        if (number == 0) {
            return YES;
        }else{
            return NO;
        }
    }

    if ([object isKindOfClass:[NSString class]]) {
        if ([object isEqualToString:@""]) {
            return YES;
        }else{
            NSString *trimmedStr = [object stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
            if (trimmedStr.length==0) {
                return YES;
            }else{
                return NO;
            }
        }
    }
    return NO;
}

+ (NSString *)kino_objectForKey:(NSString *)keyStr withDict:(NSDictionary *)dic
{
    NSObject *object = [dic objectForKey:keyStr];
    BOOL isEmptyOjbec = [self isEmptyWithObject:object];

    if (isEmptyOjbec) {
        return @"";
    }else{
        if ([object isKindOfClass:[NSString class]]) {
            NSString *objStr = (NSString *)object;


            return objStr;
        }

        if ([object isKindOfClass:[NSNumber class]]) {
            NSNumber *nsNumber = (NSNumber *)object;
            NSString *string = [NSString stringWithFormat:@"%@",nsNumber];
            return string;
        }
    }
    return @"";
}

@end

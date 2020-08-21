//
//  MD_AutoGeneration.m
//  MDAutoGenerationTool
//
//  Created by paxhz on 2020/8/21.
//  Copyright © 2020 yxg. All rights reserved.
//

#import "MD_AutoGeneration.h"

#define NSLog(FORMAT, ...) fprintf(stderr,"%s\n",[[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#define MD_Log(type,format,...) NSLog(@"%@ " format,type,##__VA_ARGS__)
#define MD_LogTitle(format,...) MD_Log(@"#",format,##__VA_ARGS__)
#define MD_LogSubTitle(format,...) MD_Log(@"###",format,##__VA_ARGS__)
#define MD_LogContent(format,...) MD_Log(@">",format,##__VA_ARGS__)

@implementation MD_AutoGeneration

+ (void)md_autoGenerationWithDictionary:(NSDictionary *)dictionary {

    [self logTitle:dictionary[K_TITLE]];
    [self logSubTitle:dictionary[K_SUB_1]];
    [self logContent:dictionary[K_CONT_1]];
    [self logSubTitle:dictionary[K_SUB_2]];
    [self logContent:dictionary[K_CONT_2]];
    
}


#pragma mark - log

+ (void)logTitle:(NSString *)str {
    if ([self cl:str])
    MD_LogTitle(@"%@",str);
}

+ (void)logSubTitle:(NSString *)str {
    if ([self cl:str])
    MD_LogSubTitle(@"%@",str);
}

+ (void)logContent:(NSString *)str {
    if ([self cl:str])
    MD_LogContent(@"%@",str);
}

+ (BOOL)cl:(NSString *)str {
    if (str && str.length > 0) {
        return YES;
    }
    return NO;
}



@end


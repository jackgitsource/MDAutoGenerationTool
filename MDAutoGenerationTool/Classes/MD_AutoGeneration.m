//
//  MD_AutoGeneration.m
//  MDAutoGenerationTool
//
//  Created by paxhz on 2020/8/21.
//  Copyright © 2020 yxg. All rights reserved.
//

#import "MD_AutoGeneration.h"


#define NSLog(FORMAT, ...) fprintf(stderr,"%s\n",[[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#define MD_Log(type,format,...) NSLog(@"%@" format,type,##__VA_ARGS__)
#define MD_LogTitle(format,...) MD_Log(@"# ",format,##__VA_ARGS__)
#define MD_LogSubTitle(format,...) MD_Log(@"##### ",format,##__VA_ARGS__)
#define MD_LogContent(format,...) MD_Log(@"* ",format,##__VA_ARGS__)
#define FormSaparator_Head @"| "
#define FormSaparator_Middle @" | "

@implementation MD_AutoGeneration

+ (void)md_autoGenerationWithDictionary:(NSDictionary *)dictionary {
    [self md_log:dictionary];
}

+ (void)md_log:(NSDictionary *)dictionary {
    [self logTitle:dictionary[K_TITLE]];
    [self logSubTitle:dictionary[K_SUB_1]];
    [self logContent:dictionary[K_CONT_1]];
    [self logSubTitle:dictionary[K_SUB_2]];
    [self logContent:dictionary[K_CONT_2]];
    [self logFormHeader];
    [self logForm:dictionary[k_FORM_LIST]];
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

// | Element  | Required  | Type  | Size  | Description |
// | ----  | ----  | ----  | ----  | ----  |
+ (void)logFormHeader {
    MD_Log(@"", @"\n");
    NSString *header = @"| Element  | Required  | Type  | Size  | Description |";
    MD_Log(@"", @"%@",header);
    NSString *headerLine = @"| ----  | ----  | ----  | ----  | ----  |";
    MD_Log(@"", @"%@",headerLine);
}

+ (void)logFormALine:(NSArray<NSString *> *)list {
    NSMutableString *mutableString = [[NSMutableString alloc] initWithString:FormSaparator_Head];
    for (NSInteger i = 0; i < list.count; i ++) {
        [mutableString appendString:list[i]];
        [mutableString appendString:FormSaparator_Middle];
    }
    MD_Log(@"", @"%@",mutableString);
}

+ (void)logForm:(NSArray<NSArray *> *)list {
    for (NSInteger i = 0; i < list.count; i++) {
        [self logFormALine:list[i]];
    }
}
@end


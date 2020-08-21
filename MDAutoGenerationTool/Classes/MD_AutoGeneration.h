//
//  MD_AutoGeneration.h
//  MDAutoGenerationTool
//
//  Created by paxhz on 2020/8/21.
//  Copyright © 2020 yxg. All rights reserved.
//

#import <Foundation/Foundation.h>


#define K_TITLE @"title"
#define K_SUB_1 @"subTitle1"
#define K_CONT_1 @"content1"
#define K_SUB_2 @"subTitle2"
#define K_CONT_2 @"content2"





@interface MD_AutoGeneration : NSObject

+ (void)md_autoGenerationWithDictionary:(NSDictionary *)dictionary;

@end


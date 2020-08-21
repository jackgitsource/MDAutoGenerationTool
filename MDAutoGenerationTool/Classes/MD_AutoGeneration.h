//
//  MD_AutoGeneration.h
//  MDAutoGenerationTool
//
//  Created by paxhz on 2020/8/21.
//  Copyright © 2020 yxg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MD_AutoGeneration : NSObject

+ (void)autoGenerationWithTitle:(NSString *)title
                      subtitle1:(NSString *)subtitle1
                       content1:(NSString *)content1;

@end

NS_ASSUME_NONNULL_END

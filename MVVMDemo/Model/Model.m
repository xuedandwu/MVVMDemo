//
//  Model.m
//  MVVMDemo
//
//  Created by Xuedan on 2017/3/29.
//  Copyright © 2017年 Xuedan. All rights reserved.
//

#import "Model.h"

@implementation Model

+ (void)getTitlesListWithPage:(NSUInteger)apage SuccessBlock: (SuccessBlock)success FailBlock:(FailBlock)fail{
    
}

+ (NSDictionary *)getRequestData{
    
    NSDictionary *dic = @{@"data":@"success",
                          @"code":@"200"};
    
    return dic;
}

@end

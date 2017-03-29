//
//  Model.h
//  MVVMDemo
//
//  Created by Xuedan on 2017/3/29.
//  Copyright © 2017年 Xuedan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^SuccessBlock)(NSDictionary *responseObjectDict,NSError *error);
typedef void (^FailBlock)(NSDictionary *responseObjectDict,NSError *error);

@interface Model : NSObject

@property (nonatomic,copy) NSString *name;

@property (nonatomic,copy) NSString *address;

@property (nonatomic,strong) NSArray *titles;

@property (nonatomic,assign) NSInteger totalNum;


+ (void)getTitlesListWithPage:(NSUInteger)apage SuccessBlock: (SuccessBlock)success FailBlock:(FailBlock)fail;

+ (NSDictionary *)getRequestData;

@end

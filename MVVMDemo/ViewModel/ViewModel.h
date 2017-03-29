//
//  ViewModel.h
//  MVVMDemo
//
//  Created by Xuedan on 2017/3/29.
//  Copyright © 2017年 Xuedan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^requestSuccess)(NSDictionary *responseDict);
typedef void(^requestFailure)(NSError *error);

@interface ViewModel : NSObject

@property (nonatomic,strong) NSDictionary *data;
@property (nonatomic,strong) NSString *racMsg;

- (void)FetchDataWithSuccess:(requestSuccess)success failureWithFailure:(requestFailure)failure;

- (void)getTitlesList;
- (void)getNextTitlesList;
- (void)getPreTitlesList;


@end

//
//  ViewModel.m
//  MVVMDemo
//
//  Created by Xuedan on 2017/3/29.
//  Copyright © 2017年 Xuedan. All rights reserved.
//

#import "ViewModel.h"
#import "Model.h"

#define WS(weakSelf) __weak __typeof(&*self)weakSelf = self;

@interface ViewModel()

@property (nonatomic) NSInteger currentPage;

@end

@implementation ViewModel

- (instancetype)init{
    self = [super init];
    self.currentPage = 0;
    return self;
}

- (void)FetchDataWithSuccess:(requestSuccess)success failureWithFailure:(requestFailure)failure{
    NSDictionary *dict = [Model getRequestData];
    WS(ws)
    NSLog(@"dict:%@",dict);
    int code = [dict[@"code"] intValue];
    if (code == 200) {
        ws.data = dict;
        ws.racMsg = @"success";
        success(dict);
    }else{
        ws.data = nil;
        ws.racMsg = @"fail";
    }
    
}
- (void)getTitlesList{
    
    WS(ws)
    [Model getTitlesListWithPage:0 SuccessBlock:^(NSDictionary *responseObjectDict, NSError *error) {
        ws.data = responseObjectDict;
        ws.racMsg = @"success";
    }FailBlock:^(NSDictionary *responseObjectDict, NSError *error) {
        ws.data = nil;
        ws.racMsg = @"fail";
    }];
    
    NSDictionary *dict = [Model getRequestData];
    NSLog(@"dict:%@",dict);
    int code = [dict[@"code"] intValue];
    if (code == 200) {
        ws.data = dict;
        ws.racMsg = @"success";
    }else{
        ws.data = nil;
        ws.racMsg = @"fail";
    }
    
    
}
- (void)getNextTitlesList{
    self.currentPage ++;
    
    WS(ws)
//    [Model getTitlesListWithPage:self.currentPage SuccessBlock:^(NSDictionary *responseObjectDict, NSError *error) {
//        ws.data = responseObjectDict;
//        ws.racMsg = @"success";
//    }FailBlock:^(NSDictionary *responseObjectDict, NSError *error) {
//        ws.data = nil;
//        ws.racMsg = @"fail";
//    }];
    NSDictionary *dict = [Model getRequestData];
    NSLog(@"dict:%@",dict);
    int code = [dict[@"code"] intValue];
    if (code == 200) {
        ws.data = dict;
        ws.racMsg = @"success";
    }else{
        ws.data = nil;
        ws.racMsg = @"fail";
    }
    
}
- (void)getPreTitlesList{
    WS(ws)
//    [Model getTitlesListWithPage:self.currentPage == 0 ? 0 : self.currentPage-1 SuccessBlock:^(NSDictionary *responseObjectDict, NSError *error) {
//        ws.data = responseObjectDict;
//        ws.racMsg = @"success";
//    }FailBlock:^(NSDictionary *responseObjectDict, NSError *error) {
//        ws.data = nil;
//        ws.racMsg = @"fail";
//    }];
    NSDictionary *dict = [Model getRequestData];
    NSLog(@"dict:%@",dict);
    int code = [dict[@"code"] intValue];
    if (code == 200) {
        ws.data = dict;
        ws.racMsg = @"success";
    }else{
        ws.data = nil;
        ws.racMsg = @"fail";
    }
    
}

@end

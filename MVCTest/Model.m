//
//  Model.m
//  MVCTest
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "Model.h"

@implementation Model

//싱클톤 방식
static Model *instance;
+ (Model *)sharedModel {
    if (nil == instance) {
        instance = [[Model alloc] init];
    }
    return instance;
}

- (id)init {
    self = [super init];
    
    if (self) {
        self.data = [[NSMutableArray alloc] initWithObjects:@"iPhone", @"iPod", @"iPad", @"MacBook", @"MacBook Air", @"MacBook Pro", @"MacBook Pro Retina", nil];
    }
    return self;
}

//제품 정보 얻기
//편의상 index를 제품을 구분하는 식별자로 사용
- (id)productAt:(int)productId {
    return [self.data objectAtIndex:productId];
}

- (int)numberOfProducts {
    return [self.data count];
}

- (void)addProduct:(id)product {
    [self.data addObject:product];
}

- (void)removeProductAt:(int)index {
    [self.data removeObjectAtIndex:index];
}

@end

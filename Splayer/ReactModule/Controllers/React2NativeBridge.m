//
//  React2NativeBridge.m
//  Splayer
//
//  Created by Harry Tang on 2019/2/12.
//  Copyright © 2019 Harry Tang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(React2Native, NSObject)

RCT_EXTERN_METHOD(addEvent:(NSString *)name location:(NSString *)location date:(nonnull NSNumber *)date callback: (RCTResponseSenderBlock)callback);

@end

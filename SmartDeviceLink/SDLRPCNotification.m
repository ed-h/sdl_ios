//  SDLRPCNotification.m
//


#import "SDLRPCNotification.h"

#import "NSMutableDictionary+Store.h"
#import "SDLRPCParameterNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLRPCNotification

- (instancetype)initWithName:(NSString *)name {
    self = [super initWithName:name];
    if (!self) {
        return nil;
    }

    messageType = SDLRPCParameterNameNotification;
    [store setObject:function forKey:messageType];

    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dict {
    self = [super initWithDictionary:dict];
    if (!self) {
        return nil;
    }

    messageType = SDLRPCParameterNameNotification;
    [store setObject:function forKey:messageType];

    return self;
}

@end

NS_ASSUME_NONNULL_END

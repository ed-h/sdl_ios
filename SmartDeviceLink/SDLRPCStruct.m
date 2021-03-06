//
//  SDLRPCStruct.m


#import "SDLRPCStruct.h"

#import "SDLEnum.h"
#import "SDLRPCParameterNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLRPCStruct

- (id)initWithDictionary:(NSDictionary<NSString *, id> *)dict {
    if (self = [super init]) {
        if (dict != nil) {
            store = [dict mutableCopy];
        } else {
            store = [NSMutableDictionary dictionary];
        }
    }
    return self;
}

- (id)init {
    if (self = [super init]) {
        store = [NSMutableDictionary dictionary];
    }
    return self;
}

- (NSDictionary<NSString *, id> *)serializeAsDictionary:(Byte)version {
    if (version >= 2) {
        NSString *messageType = store.keyEnumerator.nextObject;
        NSMutableDictionary<NSString *, id> *function = store[messageType];
        if ([function isKindOfClass:NSMutableDictionary.class]) {
            NSMutableDictionary<NSString *, id> *parameters = function[SDLRPCParameterNameParameters];
            return [self.class sdl_serializeDictionary:parameters version:version];
        } else {
            return [self.class sdl_serializeDictionary:store version:version];
        }
    } else {
        return [self.class sdl_serializeDictionary:store version:version];
    }
}

- (NSString *)description {
    return [store description];
}

+ (NSDictionary<NSString *, id> *)sdl_serializeDictionary:(NSDictionary *)dict version:(Byte)version {
    NSMutableDictionary<NSString *, id> *ret = [NSMutableDictionary dictionaryWithCapacity:dict.count];
    for (NSString *key in dict.keyEnumerator) {
        NSObject *value = dict[key];
        if ([value isKindOfClass:SDLRPCStruct.class]) {
            ret[key] = [(SDLRPCStruct *)value serializeAsDictionary:version];
        } else if ([value isKindOfClass:NSDictionary.class]) {
            ret[key] = [self sdl_serializeDictionary:(NSDictionary *)value version:version];
        } else if ([value isKindOfClass:NSArray.class]) {
            NSArray<NSObject *> *arrayVal = (NSArray<NSObject *> *)value;
            
            if (arrayVal.count > 0 && ([arrayVal.firstObject isKindOfClass:SDLRPCStruct.class])) {
                NSMutableArray<NSDictionary<NSString *, id> *> *serializedList = [NSMutableArray arrayWithCapacity:arrayVal.count];
                for (SDLRPCStruct *serializeable in arrayVal) {
                    [serializedList addObject:[serializeable serializeAsDictionary:version]];
                }
                ret[key] = serializedList;
            } else {
                ret[key] = value;
            }
        } else {
            ret[key] = value;
        }
    }
    return ret;
}

- (id)copyWithZone:(nullable NSZone *)zone {
    SDLRPCStruct *newStruct = [[[self class] allocWithZone:zone] init];
    newStruct->store = [self->store mutableCopy];

    return newStruct;
}

- (BOOL)isEqualToRPC:(SDLRPCStruct *)rpc {
    return [rpc->store isEqualToDictionary:self->store];
}

- (BOOL)isEqual:(id)object {
    if (self == object) {
        return YES;
    }

    if (![object isMemberOfClass:self.class]) {
        return NO;
    }

    return [self isEqualToRPC:(SDLRPCStruct *)object];
}

@end

NS_ASSUME_NONNULL_END

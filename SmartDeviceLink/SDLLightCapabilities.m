//  SDLLightCapabilities.m
//

#import "SDLLightCapabilities.h"
#import "SDLRPCParameterNames.h"
#import "NSMutableDictionary+Store.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLLightCapabilities

- (instancetype)initWithName:(SDLLightName)name {
    self = [self init];
    if(!self) {
        return nil;
    }
    self.name = name;

    return self;
}

- (instancetype)initWithName:(SDLLightName)name densityAvailable:(BOOL)densityAvailable colorAvailable:(BOOL)colorAvailable statusAvailable:(BOOL)statusAvailable {
    self = [self init];
    if(!self) {
        return nil;
    }
    self.name = name;
    self.densityAvailable = @(densityAvailable);
    self.colorAvailable = @(colorAvailable);
    self.statusAvailable = @(statusAvailable);

    return self;
}

- (void)setName:(SDLLightName)name {
    [store sdl_setObject:name forName:SDLRPCParameterNameName];
}

- (SDLLightName)name {
    return [store sdl_objectForName:SDLRPCParameterNameName];
}

- (void)setDensityAvailable:(nullable NSNumber<SDLBool> *)densityAvailable {
    [store sdl_setObject:densityAvailable forName:SDLRPCParameterNameDensityAvailable];
}

- (nullable NSNumber<SDLBool> *)densityAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameDensityAvailable];
}

- (void)setColorAvailable:(nullable NSNumber<SDLBool> *)colorAvailable {
    [store sdl_setObject:colorAvailable forName:SDLRPCParameterNameRGBColorSpaceAvailable];
}

- (nullable NSNumber<SDLBool> *)colorAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameRGBColorSpaceAvailable];
}

- (void)setStatusAvailable:(nullable NSNumber<SDLBool> *)statusAvailable {
    [store sdl_setObject:statusAvailable forName:SDLRPCParameterNameStatusAvailable];
}

- (nullable NSNumber<SDLBool> *)statusAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameStatusAvailable];
}

@end

NS_ASSUME_NONNULL_END

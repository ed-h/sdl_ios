//  SDLHMISettingsControlCapabilities.m
//

#import "SDLHMISettingsControlCapabilities.h"
#import "SDLRPCParameterNames.h"
#import "NSMutableDictionary+Store.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLHMISettingsControlCapabilities

- (instancetype)initWithModuleName:(NSString *)moduleName {
    self = [self init];
    if(!self) {
        return nil;
    }
    self.moduleName = moduleName;

    return self;
}

- (instancetype)initWithModuleName:(NSString *)moduleName distanceUnitAvailable:(BOOL)distanceUnitAvailable temperatureUnitAvailable:(BOOL)temperatureUnitAvailable displayModeUnitAvailable:(BOOL)displayModeUnitAvailable {
    self = [self init];
    if(!self) {
        return nil;
    }
    self.moduleName = moduleName;
    self.distanceUnitAvailable = @(distanceUnitAvailable);
    self.temperatureUnitAvailable = @(temperatureUnitAvailable);
    self.displayModeUnitAvailable = @(displayModeUnitAvailable);

    return self;
}

- (void)setModuleName:(NSString *)moduleName {
    [store sdl_setObject:moduleName forName:SDLRPCParameterNameModuleName];
}

- (NSString *)moduleName {
    return [store sdl_objectForName:SDLRPCParameterNameModuleName];
}


- (void)setDistanceUnitAvailable:(nullable NSNumber<SDLBool> *)distanceUnitAvailable {
    [store sdl_setObject:distanceUnitAvailable forName:SDLRPCParameterNameDistanceUnitAvailable];
}

- (nullable NSNumber<SDLBool> *)distanceUnitAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameDistanceUnitAvailable];
}

- (void)setTemperatureUnitAvailable:(nullable NSNumber<SDLBool> *)temperatureUnitAvailable {
    [store sdl_setObject:temperatureUnitAvailable forName:SDLRPCParameterNameTemperatureUnitAvailable];
}

- (nullable NSNumber<SDLBool> *)temperatureUnitAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameTemperatureUnitAvailable];
}

- (void)setDisplayModeUnitAvailable:(nullable NSNumber<SDLBool> *)displayModeUnitAvailable {
    [store sdl_setObject:displayModeUnitAvailable forName:SDLRPCParameterNameDisplayModeUnitAvailable];
}

- (nullable NSNumber<SDLBool> *)displayModeUnitAvailable {
    return [store sdl_objectForName:SDLRPCParameterNameDisplayModeUnitAvailable];
}

@end

NS_ASSUME_NONNULL_END

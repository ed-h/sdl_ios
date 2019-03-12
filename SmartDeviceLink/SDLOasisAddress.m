//  SDLOasisAddress.m
//

#import "SDLOasisAddress.h"

#import "NSMutableDictionary+Store.h"
#import "SDLRPCParameterNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLOasisAddress

- (instancetype)initWithSubThoroughfare:(nullable NSString *)subThoroughfare thoroughfare:(nullable NSString *)thoroughfare locality:(nullable NSString *)locality administrativeArea:(nullable NSString *)administrativeArea postalCode:(nullable NSString *)postalCode countryCode:(nullable NSString *)countryCode {
    return [self initWithSubThoroughfare:subThoroughfare thoroughfare:thoroughfare locality:locality administrativeArea:administrativeArea postalCode:postalCode countryCode:countryCode countryName:nil subAdministrativeArea:nil subLocality:nil];
}

- (instancetype)initWithSubThoroughfare:(nullable NSString *)subThoroughfare thoroughfare:(nullable NSString *)thoroughfare locality:(nullable NSString *)locality administrativeArea:(nullable NSString *)administrativeArea postalCode:(nullable NSString *)postalCode countryCode:(nullable NSString *)countryCode countryName:(nullable NSString *)countryName subAdministrativeArea:(nullable NSString *)subAdministrativeArea subLocality:(nullable NSString *)subLocality {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.subThoroughfare = subThoroughfare;
    self.thoroughfare = thoroughfare;
    self.locality = locality;
    self.administrativeArea = administrativeArea;
    self.postalCode = postalCode;
    self.countryCode = countryCode;
    self.countryName = countryName;
    self.subAdministrativeArea = subAdministrativeArea;
    self.subLocality = subLocality;

    return self;
}

- (void)setCountryName:(nullable NSString *)countryName {
    [store sdl_setObject:countryName forName:SDLRPCParameterNameCountryName];
}

- (nullable NSString *)countryName {
    return [store sdl_objectForName:SDLRPCParameterNameCountryName];
}

- (void)setCountryCode:(nullable NSString *)countryCode {
    [store sdl_setObject:countryCode forName:SDLRPCParameterNameCountryCode];
}

- (nullable NSString *)countryCode {
    return [store sdl_objectForName:SDLRPCParameterNameCountryCode];
}

- (void)setPostalCode:(nullable NSString *)postalCode {
    [store sdl_setObject:postalCode forName:SDLRPCParameterNamePostalCode];
}

- (nullable NSString *)postalCode {
    return [store sdl_objectForName:SDLRPCParameterNamePostalCode];
}

- (void)setAdministrativeArea:(nullable NSString *)administrativeArea {
    [store sdl_setObject:administrativeArea forName:SDLRPCParameterNameAdministrativeArea];
}

- (nullable NSString *)administrativeArea {
    return [store sdl_objectForName:SDLRPCParameterNameAdministrativeArea];
}

- (void)setSubAdministrativeArea:(nullable NSString *)subAdministrativeArea {
    [store sdl_setObject:subAdministrativeArea forName:SDLRPCParameterNameSubAdministrativeArea];
}

- (nullable NSString *)subAdministrativeArea {
    return [store sdl_objectForName:SDLRPCParameterNameSubAdministrativeArea];
}

- (void)setLocality:(nullable NSString *)locality {
    [store sdl_setObject:locality forName:SDLRPCParameterNameLocality];
}

- (nullable NSString *)locality {
    return [store sdl_objectForName:SDLRPCParameterNameLocality];
}

- (void)setSubLocality:(nullable NSString *)subLocality {
    [store sdl_setObject:subLocality forName:SDLRPCParameterNameSubLocality];
}

- (nullable NSString *)subLocality {
    return [store sdl_objectForName:SDLRPCParameterNameSubLocality];
}

- (void)setThoroughfare:(nullable NSString *)thoroughfare {
    [store sdl_setObject:thoroughfare forName:SDLRPCParameterNameThoroughfare];
}

- (nullable NSString *)thoroughfare {
    return [store sdl_objectForName:SDLRPCParameterNameThoroughfare];
}

- (void)setSubThoroughfare:(nullable NSString *)subThoroughfare {
    [store sdl_setObject:subThoroughfare forName:SDLRPCParameterNameSubThoroughfare];
}

- (nullable NSString *)subThoroughfare {
    return [store sdl_objectForName:SDLRPCParameterNameSubThoroughfare];
}

@end

NS_ASSUME_NONNULL_END

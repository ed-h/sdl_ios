//
//  SDLPublishAppService.m
//  SmartDeviceLink
//
//  Created by Nicole on 1/25/19.
//  Copyright © 2019 smartdevicelink. All rights reserved.
//

#import "SDLPublishAppService.h"

#import "NSMutableDictionary+Store.h"
#import "SDLAppServiceManifest.h"
#import "SDLRPCParameterNames.h"
#import "SDLRPCFunctionNames.h"


NS_ASSUME_NONNULL_BEGIN

@implementation SDLPublishAppService

- (instancetype)init {
    if (self = [super initWithName:SDLRPCFunctionNamePublishAppService]) {
    }
    return self;
}

- (instancetype)initWithAppServiceManifest:(SDLAppServiceManifest *)appServiceManifest {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.appServiceManifest = appServiceManifest;

    return self;
}

- (void)setAppServiceManifest:(SDLAppServiceManifest *)appServiceManifest {
    [parameters sdl_setObject:appServiceManifest forName:SDLRPCParameterNameAppServiceManifest];
}

- (SDLAppServiceManifest *)appServiceManifest {
    NSError *error = nil;
    return [parameters sdl_objectForName:SDLRPCParameterNameAppServiceManifest ofClass:SDLAppServiceManifest.class error:&error];
}

@end

NS_ASSUME_NONNULL_END

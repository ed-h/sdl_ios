//  SDLGetVehicleData.m
//


#import "SDLGetVehicleData.h"

#import "NSMutableDictionary+Store.h"
#import "SDLRPCParameterNames.h"
#import "SDLRPCFunctionNames.h"

NS_ASSUME_NONNULL_BEGIN

@implementation SDLGetVehicleData

- (instancetype)init {
    if (self = [super initWithName:SDLRPCFunctionNameGetVehicleData]) {
    }
    return self;
}

- (instancetype)initWithAccelerationPedalPosition:(BOOL)accelerationPedalPosition airbagStatus:(BOOL)airbagStatus beltStatus:(BOOL)beltStatus bodyInformation:(BOOL)bodyInformation clusterModeStatus:(BOOL)clusterModeStatus deviceStatus:(BOOL)deviceStatus driverBraking:(BOOL)driverBraking eCallInfo:(BOOL)eCallInfo emergencyEvent:(BOOL)emergencyEvent engineTorque:(BOOL)engineTorque externalTemperature:(BOOL)externalTemperature fuelLevel:(BOOL)fuelLevel fuelLevelState:(BOOL)fuelLevelState gps:(BOOL)gps headLampStatus:(BOOL)headLampStatus instantFuelConsumption:(BOOL)instantFuelConsumption myKey:(BOOL)myKey odometer:(BOOL)odometer prndl:(BOOL)prndl rpm:(BOOL)rpm speed:(BOOL)speed steeringWheelAngle:(BOOL)steeringWheelAngle tirePressure:(BOOL)tirePressure vin:(BOOL)vin wiperStatus:(BOOL)wiperStatus {
    return [self initWithAccelerationPedalPosition:accelerationPedalPosition airbagStatus:airbagStatus beltStatus:beltStatus bodyInformation:bodyInformation clusterModeStatus:clusterModeStatus deviceStatus:deviceStatus driverBraking:driverBraking eCallInfo:eCallInfo electronicParkBrakeStatus:NO emergencyEvent:emergencyEvent engineOilLife:NO engineTorque:engineTorque externalTemperature:externalTemperature fuelLevel:fuelLevel fuelLevelState:fuelLevelState fuelRange:NO gps:gps headLampStatus:headLampStatus instantFuelConsumption:instantFuelConsumption myKey:myKey odometer:odometer prndl:prndl rpm:rpm speed:speed steeringWheelAngle:steeringWheelAngle tirePressure:tirePressure turnSignal:NO vin:vin wiperStatus:wiperStatus];
}

- (instancetype)initWithAccelerationPedalPosition:(BOOL)accelerationPedalPosition airbagStatus:(BOOL)airbagStatus beltStatus:(BOOL)beltStatus bodyInformation:(BOOL)bodyInformation clusterModeStatus:(BOOL)clusterModeStatus deviceStatus:(BOOL)deviceStatus driverBraking:(BOOL)driverBraking eCallInfo:(BOOL)eCallInfo electronicParkBrakeStatus:(BOOL)electronicParkBrakeStatus emergencyEvent:(BOOL)emergencyEvent engineOilLife:(BOOL)engineOilLife engineTorque:(BOOL)engineTorque externalTemperature:(BOOL)externalTemperature fuelLevel:(BOOL)fuelLevel fuelLevelState:(BOOL)fuelLevelState fuelRange:(BOOL)fuelRange gps:(BOOL)gps headLampStatus:(BOOL)headLampStatus instantFuelConsumption:(BOOL)instantFuelConsumption myKey:(BOOL)myKey odometer:(BOOL)odometer prndl:(BOOL)prndl rpm:(BOOL)rpm speed:(BOOL)speed steeringWheelAngle:(BOOL)steeringWheelAngle tirePressure:(BOOL)tirePressure turnSignal:(BOOL)turnSignal vin:(BOOL)vin wiperStatus:(BOOL)wiperStatus {
    return [self initWithAccelerationPedalPosition:accelerationPedalPosition airbagStatus:airbagStatus beltStatus:beltStatus bodyInformation:bodyInformation cloudAppVehicleID:NO clusterModeStatus:clusterModeStatus deviceStatus:deviceStatus driverBraking:driverBraking eCallInfo:eCallInfo electronicParkBrakeStatus:electronicParkBrakeStatus emergencyEvent:emergencyEvent engineOilLife:engineOilLife engineTorque:engineTorque externalTemperature:externalTemperature fuelLevel:fuelLevel fuelLevelState:fuelLevelState fuelRange:fuelRange gps:gps headLampStatus:headLampStatus instantFuelConsumption:instantFuelConsumption myKey:myKey odometer:odometer prndl:prndl rpm:rpm speed:speed steeringWheelAngle:steeringWheelAngle tirePressure:tirePressure turnSignal:turnSignal vin:vin wiperStatus:wiperStatus];
}

- (instancetype)initWithAccelerationPedalPosition:(BOOL)accelerationPedalPosition airbagStatus:(BOOL)airbagStatus beltStatus:(BOOL)beltStatus bodyInformation:(BOOL)bodyInformation cloudAppVehicleID:(BOOL)cloudAppVehicleID clusterModeStatus:(BOOL)clusterModeStatus deviceStatus:(BOOL)deviceStatus driverBraking:(BOOL)driverBraking eCallInfo:(BOOL)eCallInfo electronicParkBrakeStatus:(BOOL)electronicParkBrakeStatus emergencyEvent:(BOOL)emergencyEvent engineOilLife:(BOOL)engineOilLife engineTorque:(BOOL)engineTorque externalTemperature:(BOOL)externalTemperature fuelLevel:(BOOL)fuelLevel fuelLevelState:(BOOL)fuelLevelState fuelRange:(BOOL)fuelRange gps:(BOOL)gps headLampStatus:(BOOL)headLampStatus instantFuelConsumption:(BOOL)instantFuelConsumption myKey:(BOOL)myKey odometer:(BOOL)odometer prndl:(BOOL)prndl rpm:(BOOL)rpm speed:(BOOL)speed steeringWheelAngle:(BOOL)steeringWheelAngle tirePressure:(BOOL)tirePressure turnSignal:(BOOL)turnSignal vin:(BOOL)vin wiperStatus:(BOOL)wiperStatus {
    self = [self init];
    if (!self) {
        return nil;
    }

    self.accPedalPosition = @(accelerationPedalPosition);
    self.airbagStatus = @(airbagStatus);
    self.beltStatus = @(beltStatus);
    self.bodyInformation = @(bodyInformation);
    self.cloudAppVehicleID = @(cloudAppVehicleID);
    self.clusterModeStatus = @(clusterModeStatus);
    self.deviceStatus = @(deviceStatus);
    self.driverBraking = @(driverBraking);
    self.eCallInfo = @(eCallInfo);
    self.electronicParkBrakeStatus = @(electronicParkBrakeStatus);
    self.emergencyEvent = @(emergencyEvent);
    self.engineOilLife = @(engineOilLife);
    self.engineTorque = @(engineTorque);
    self.externalTemperature = @(externalTemperature);
    self.fuelLevel = @(fuelLevel);
    self.fuelLevel_State = @(fuelLevelState);
    self.fuelRange = @(fuelRange);
    self.myKey = @(myKey);
    self.odometer = @(odometer);
    self.gps = @(gps);
    self.headLampStatus = @(headLampStatus);
    self.instantFuelConsumption = @(instantFuelConsumption);
    self.prndl = @(prndl);
    self.rpm = @(rpm);
    self.speed = @(speed);
    self.steeringWheelAngle = @(steeringWheelAngle);
    self.tirePressure = @(tirePressure);
    self.turnSignal = @(turnSignal);
    self.vin = @(vin);
    self.wiperStatus = @(wiperStatus);

    return self;
}

- (void)setGps:(nullable NSNumber<SDLBool> *)gps {
    [parameters sdl_setObject:gps forName:SDLRPCParameterNameGPS];
}

- (nullable NSNumber<SDLBool> *)gps {
    return [parameters sdl_objectForName:SDLRPCParameterNameGPS];
}

- (void)setSpeed:(nullable NSNumber<SDLBool> *)speed {
    [parameters sdl_setObject:speed forName:SDLRPCParameterNameSpeed];
}

- (nullable NSNumber<SDLBool> *)speed {
    return [parameters sdl_objectForName:SDLRPCParameterNameSpeed];
}

- (void)setRpm:(nullable NSNumber<SDLBool> *)rpm {
    [parameters sdl_setObject:rpm forName:SDLRPCParameterNameRPM];
}

- (nullable NSNumber<SDLBool> *)rpm {
    return [parameters sdl_objectForName:SDLRPCParameterNameRPM];
}

- (void)setFuelLevel:(nullable NSNumber<SDLBool> *)fuelLevel {
    [parameters sdl_setObject:fuelLevel forName:SDLRPCParameterNameFuelLevel];
}

- (nullable NSNumber<SDLBool> *)fuelLevel {
    return [parameters sdl_objectForName:SDLRPCParameterNameFuelLevel];
}

- (void)setFuelLevel_State:(nullable NSNumber<SDLBool> *)fuelLevel_State {
    [parameters sdl_setObject:fuelLevel_State forName:SDLRPCParameterNameFuelLevelState];
}

- (nullable NSNumber<SDLBool> *)fuelLevel_State {
    return [parameters sdl_objectForName:SDLRPCParameterNameFuelLevelState];
}

- (void)setFuelRange:(nullable NSNumber<SDLBool> *)fuelRange {
    [parameters sdl_setObject:fuelRange forName:SDLRPCParameterNameFuelRange];
}

- (nullable NSNumber<SDLBool> *)fuelRange {
    return [parameters sdl_objectForName:SDLRPCParameterNameFuelRange];
}

- (void)setInstantFuelConsumption:(nullable NSNumber<SDLBool> *)instantFuelConsumption {
    [parameters sdl_setObject:instantFuelConsumption forName:SDLRPCParameterNameInstantFuelConsumption];
}

- (nullable NSNumber<SDLBool> *)instantFuelConsumption {
    return [parameters sdl_objectForName:SDLRPCParameterNameInstantFuelConsumption];
}

- (void)setExternalTemperature:(nullable NSNumber<SDLBool> *)externalTemperature {
    [parameters sdl_setObject:externalTemperature forName:SDLRPCParameterNameExternalTemperature];
}

- (nullable NSNumber<SDLBool> *)externalTemperature {
    return [parameters sdl_objectForName:SDLRPCParameterNameExternalTemperature];
}

- (void)setVin:(nullable NSNumber<SDLBool> *)vin {
    [parameters sdl_setObject:vin forName:SDLRPCParameterNameVIN];
}

- (nullable NSNumber<SDLBool> *)vin {
    return [parameters sdl_objectForName:SDLRPCParameterNameVIN];
}

- (void)setPrndl:(nullable NSNumber<SDLBool> *)prndl {
    [parameters sdl_setObject:prndl forName:SDLRPCParameterNamePRNDL];
}

- (nullable NSNumber<SDLBool> *)prndl {
    return [parameters sdl_objectForName:SDLRPCParameterNamePRNDL];
}

- (void)setTirePressure:(nullable NSNumber<SDLBool> *)tirePressure {
    [parameters sdl_setObject:tirePressure forName:SDLRPCParameterNameTirePressure];
}

- (nullable NSNumber<SDLBool> *)tirePressure {
    return [parameters sdl_objectForName:SDLRPCParameterNameTirePressure];
}

- (void)setOdometer:(nullable NSNumber<SDLBool> *)odometer {
    [parameters sdl_setObject:odometer forName:SDLRPCParameterNameOdometer];
}

- (nullable NSNumber<SDLBool> *)odometer {
    return [parameters sdl_objectForName:SDLRPCParameterNameOdometer];
}

- (void)setBeltStatus:(nullable NSNumber<SDLBool> *)beltStatus {
    [parameters sdl_setObject:beltStatus forName:SDLRPCParameterNameBeltStatus];
}

- (nullable NSNumber<SDLBool> *)beltStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameBeltStatus];
}

- (void)setBodyInformation:(nullable NSNumber<SDLBool> *)bodyInformation {
    [parameters sdl_setObject:bodyInformation forName:SDLRPCParameterNameBodyInformation];
}

- (nullable NSNumber<SDLBool> *)bodyInformation {
    return [parameters sdl_objectForName:SDLRPCParameterNameBodyInformation];
}

- (void)setDeviceStatus:(nullable NSNumber<SDLBool> *)deviceStatus {
    [parameters sdl_setObject:deviceStatus forName:SDLRPCParameterNameDeviceStatus];
}

- (nullable NSNumber<SDLBool> *)deviceStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameDeviceStatus];
}

- (void)setDriverBraking:(nullable NSNumber<SDLBool> *)driverBraking {
    [parameters sdl_setObject:driverBraking forName:SDLRPCParameterNameDriverBraking];
}

- (nullable NSNumber<SDLBool> *)driverBraking {
    return [parameters sdl_objectForName:SDLRPCParameterNameDriverBraking];
}

- (void)setWiperStatus:(nullable NSNumber<SDLBool> *)wiperStatus {
    [parameters sdl_setObject:wiperStatus forName:SDLRPCParameterNameWiperStatus];
}

- (nullable NSNumber<SDLBool> *)wiperStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameWiperStatus];
}

- (void)setHeadLampStatus:(nullable NSNumber<SDLBool> *)headLampStatus {
    [parameters sdl_setObject:headLampStatus forName:SDLRPCParameterNameHeadLampStatus];
}

- (nullable NSNumber<SDLBool> *)headLampStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameHeadLampStatus];
}

- (void)setEngineOilLife:(nullable NSNumber<SDLBool> *)engineOilLife {
    [parameters sdl_setObject:engineOilLife forName:SDLRPCParameterNameEngineOilLife];
}

- (nullable NSNumber<SDLBool> *)engineOilLife {
    return [parameters sdl_objectForName:SDLRPCParameterNameEngineOilLife];
}

- (void)setEngineTorque:(nullable NSNumber<SDLBool> *)engineTorque {
    [parameters sdl_setObject:engineTorque forName:SDLRPCParameterNameEngineTorque];
}

- (nullable NSNumber<SDLBool> *)engineTorque {
    return [parameters sdl_objectForName:SDLRPCParameterNameEngineTorque];
}

- (void)setAccPedalPosition:(nullable NSNumber<SDLBool> *)accPedalPosition {
    [parameters sdl_setObject:accPedalPosition forName:SDLRPCParameterNameAccelerationPedalPosition];
}

- (nullable NSNumber<SDLBool> *)accPedalPosition {
    return [parameters sdl_objectForName:SDLRPCParameterNameAccelerationPedalPosition];
}

- (void)setSteeringWheelAngle:(nullable NSNumber<SDLBool> *)steeringWheelAngle {
    [parameters sdl_setObject:steeringWheelAngle forName:SDLRPCParameterNameSteeringWheelAngle];
}

- (nullable NSNumber<SDLBool> *)steeringWheelAngle {
    return [parameters sdl_objectForName:SDLRPCParameterNameSteeringWheelAngle];
}

- (void)setECallInfo:(nullable NSNumber<SDLBool> *)eCallInfo {
    [parameters sdl_setObject:eCallInfo forName:SDLRPCParameterNameECallInfo];
}

- (nullable NSNumber<SDLBool> *)eCallInfo {
    return [parameters sdl_objectForName:SDLRPCParameterNameECallInfo];
}

- (void)setAirbagStatus:(nullable NSNumber<SDLBool> *)airbagStatus {
    [parameters sdl_setObject:airbagStatus forName:SDLRPCParameterNameAirbagStatus];
}

- (nullable NSNumber<SDLBool> *)airbagStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameAirbagStatus];
}

- (void)setEmergencyEvent:(nullable NSNumber<SDLBool> *)emergencyEvent {
    [parameters sdl_setObject:emergencyEvent forName:SDLRPCParameterNameEmergencyEvent];
}

- (nullable NSNumber<SDLBool> *)emergencyEvent {
    return [parameters sdl_objectForName:SDLRPCParameterNameEmergencyEvent];
}

- (void)setClusterModeStatus:(nullable NSNumber<SDLBool> *)clusterModeStatus {
    [parameters sdl_setObject:clusterModeStatus forName:SDLRPCParameterNameClusterModeStatus];
}

- (nullable NSNumber<SDLBool> *)clusterModeStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameClusterModeStatus];
}

- (void)setMyKey:(nullable NSNumber<SDLBool> *)myKey {
    [parameters sdl_setObject:myKey forName:SDLRPCParameterNameMyKey];
}

- (nullable NSNumber<SDLBool> *)myKey {
    return [parameters sdl_objectForName:SDLRPCParameterNameMyKey];
}

- (void)setElectronicParkBrakeStatus:(nullable NSNumber<SDLBool> *)electronicParkBrakeStatus {
    [parameters sdl_setObject:electronicParkBrakeStatus forName:SDLRPCParameterNameElectronicParkBrakeStatus];
}

- (nullable NSNumber<SDLBool> *)electronicParkBrakeStatus {
    return [parameters sdl_objectForName:SDLRPCParameterNameElectronicParkBrakeStatus];
}

- (void)setTurnSignal:(nullable NSNumber<SDLBool> *)turnSignal {
    [parameters sdl_setObject:turnSignal forName:SDLRPCParameterNameTurnSignal];
}

- (nullable NSNumber<SDLBool> *)turnSignal {
    return [parameters sdl_objectForName:SDLRPCParameterNameTurnSignal];
}

- (void)setCloudAppVehicleID:(nullable NSNumber<SDLBool> *)cloudAppVehicleID {
    [parameters sdl_setObject:cloudAppVehicleID forName:SDLNameCloudAppVehicleID];
}

- (nullable NSNumber<SDLBool> *)cloudAppVehicleID {
    return [parameters sdl_objectForName:SDLNameCloudAppVehicleID];
}

@end

NS_ASSUME_NONNULL_END

//  SDLGetWaypoints.m
//

#import "SDLRPCRequest.h"

#import "SDLWaypointType.h"

@interface SDLGetWaypoints : SDLRPCRequest

- (instancetype)initWithType:(SDLWaypointType)type;

/**
 * To request for either the destination
 * only or for all waypoints including destination
 *
 * Required
 */
@property (strong, nonatomic) SDLWaypointType waypointType;

@end

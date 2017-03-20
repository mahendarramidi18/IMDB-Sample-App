//
//  TYGoogleAutoCompleteResult.h
//  MapkitAPI
//
//  Created by remotetiger_user on 3/18/17.
//  Copyright © 2017 Mahendar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
@interface TYGoogleAutoCompleteResult : NSObject
@property (readonly) NSString *name;
@property (readonly) NSString *description;
@property (readonly) NSString *placeID;

@property (readonly) CLLocationCoordinate2D locationCoordinates;

-(instancetype)initWithJSONData:(NSDictionary *)jsonDictionary;
@end

//
//  TYGooglePlace.h
//  MapkitAPI
//
//  Created by remotetiger_user on 3/18/17.
//  Copyright © 2017 Mahendar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface TYGooglePlace : NSObject
@property (readonly) NSString *name;
@property (readonly) CLLocation *location;
@property (readonly) NSString *formatted_address;

-(instancetype)initWithJSONData:(NSDictionary *)jsonDictionary;
@end

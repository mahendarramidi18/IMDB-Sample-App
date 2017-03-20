//
//  TYGooglePlacesApiClient.h
//  MapkitAPI
//
//  Created by remotetiger_user on 3/18/17.
//  Copyright © 2017 Mahendar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TYGooglePlacesApiClient : NSObject
@property (strong, nonatomic) NSMutableArray *searchResults;

+ (instancetype)sharedInstance;

- (void)retrieveGooglePlaceInformation:(NSString *)searchWord withCompletion:(void (^)(BOOL isSuccess, NSError *error))completion;

- (void)retrieveJSONDetailsAbout:(NSString *)place withCompletion:(void (^)(NSDictionary *placeInformation, NSError *error))completion;
@end

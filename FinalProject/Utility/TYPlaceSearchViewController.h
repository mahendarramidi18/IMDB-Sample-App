//
//  TYPlaceSearchViewController.h
//  MapkitAPI
//
//  Created by remotetiger_user on 3/18/17.
//  Copyright © 2017 Mahendar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TYGooglePlace.h"
@class TYPlaceSearchViewController;

@protocol TYPlaceSearchViewControllerDelegate <NSObject>

-(void)searchViewController:(TYPlaceSearchViewController *)controller didReturnPlace:(TYGooglePlace *)place;


@end
@interface TYPlaceSearchViewController : UIViewController

@property (nonatomic) id<TYPlaceSearchViewControllerDelegate> delegate;

@end

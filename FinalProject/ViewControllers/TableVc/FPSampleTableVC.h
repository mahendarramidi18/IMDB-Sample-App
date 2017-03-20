//
//  FPSampleTableVC.h
//  FinalProject
//
//  Created by remotetiger_user on 3/16/17.
//  Copyright © 2017 Mahendar. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "EnumConstants.h"

@interface FPSampleTableVC : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) NSArray *nameDesc;

@property (assign, nonatomic) TableViewSection sectionOne;


@end

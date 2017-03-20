//
//  FPSampleTableVC.m
//  FinalProject
//
//  Created by remotetiger_user on 3/16/17.
//  Copyright © 2017 Mahendar. All rights reserved.
//


#import "FPSampleTableVC.h"
#import "SampleCell.h"

@interface FPSampleTableVC () <UITableViewDelegate, UITableViewDataSource >


@end

@implementation FPSampleTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self registerCells];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)registerCells {
    [self.tableView registerNib:[UINib nibWithNibName:@"SampleCell" bundle:nil] forCellReuseIdentifier:@"SampleCell"];
}

#pragma mark - UITableviewDatasource methods..

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //    NSMutableArray *mySubSpecificArray = [self.serviceSpecificTypeArray objectAtIndex:section];
    return [self.nameDesc count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SampleCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"SampleCell" forIndexPath:indexPath];
    cell.nameLabel.text = [self.nameDesc objectAtIndex:indexPath.row];
    if (indexPath.row == 0) {
        cell.backgroundColor = [UIColor colorWithRed:65/255 green:99/255 blue:108/255 alpha:0.3f];
    }
    return cell;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat rowHeight;
    if (indexPath.row == 0) {
        rowHeight = 50;
    } else {
        rowHeight = 200;
    }
    return rowHeight;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

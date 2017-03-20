//
//  HistoryTableViewController.m
//  FinalProject
//
//  Created by remotetiger_user on 3/19/17.
//  Copyright © 2017 Navya. All rights reserved.
//

#import "HistoryTableViewController.h"

@interface HistoryTableViewController ()

@end

@implementation HistoryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate= self;
    self.tableView.dataSource=self;
    self.arr= [[NSMutableArray alloc] init];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:@"http://www.omdbapi.com/?s=Star+Wars&plot=short&r=json"] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSDictionary *Search = [json objectForKey:@"Search"];
        for (NSDictionary * temp in Search) {
            NSDictionary * Search1 = [temp objectForKey:@"Title"];
            NSLog(@"%@", Search1);
            [self.arr addObject:Search1];
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.tableView reloadData];
        });
    }];
    [dataTask resume];
}



-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section
{
    return self.arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.arr objectAtIndex:indexPath.row];
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"plate" forIndexPath:indexPath];
    
    if(cell==nil){
        cell =[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"plate"];
        cell.selectionStyle = UITableViewCellStyleSubtitle;
        //cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    }
    cell.textLabel.text = [self.arr objectAtIndex:indexPath.row];
    
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    //cell.backgroundColor = [UIColor grayColor];
    return cell;
}

    
    @end

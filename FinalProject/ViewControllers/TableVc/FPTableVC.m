//
//  FPTableVC.m
//  FinalProject
//
//  Created by remotetiger_user on 3/16/17.
//  Copyright © 2017 Mahendar. All rights reserved.
//

#import "FPTableVC.h"
#import "FPTableViewCell.h"
#import "FPSampleTableVC.h"

@interface FPTableVC () <UITableViewDelegate,UITableViewDataSource> {
    NSArray *array;
    NSArray *firstArray;
    NSArray *seconArray;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (assign, nonatomic) TableViewSection section;


@end

@implementation FPTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self registerNibCells];
    [self loadFistSectionData];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)registerNibCells {
    [self.tableView registerNib:[UINib nibWithNibName:@"FPTableViewCell" bundle:nil] forCellReuseIdentifier:@"FPTableViewCell"];
    
}

- (NSInteger )numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FPTableViewCell *cell = (FPTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"FPTableViewCell" forIndexPath:indexPath];
    
    UIImage *image = nil;
    NSString *name = nil;
    
    if (indexPath.row % 2) {
        image = [UIImage imageNamed:@"Movie1"];
    }
    else {
        image = [UIImage imageNamed:@"Movie3"];
        name = @"Star SPA";
    }
    
    cell.dummyImageView.image = image;
//
//    cell.trendsLabel.text = [dataSource objectAtIndex:indexPath.row];
    return cell;
}

#pragma mark - UITableview Delegate methods..

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"indexPath = %@", indexPath);
    
    if (indexPath.row %2) {
        array = seconArray;
    }
    else {
        array = firstArray;
    }
    
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    FPSampleTableVC *controller = [storyboard instantiateViewControllerWithIdentifier:@"FPSampleTableVC"];
    controller.nameDesc = array;
    [self.navigationController pushViewController:controller animated:YES];


}

- (void)loadFistSectionData {
    firstArray = [NSArray arrayWithObjects:@"L O O P E R",@"Looper is a pleasurable trip into an interesting vision of the future, where we are treated to a thought-provoking series of questions and scenarios, set against wild sci-fi plot devices", nil];
    seconArray = [NSArray arrayWithObjects: @"LIVE. DIE. REPEAT",@"The film was released in theaters on the weekend of May 30, 2014 in 28 territories, including the United Kingdom, Brazil, Germany, Spain, and Indonesia. On the weekend of June 6, 2014 it was released in 36 additional territories, including North America (United States and Canada), Australia, China, and Russia. The film grossed over $370 million in theaters worldwide and received positive reviews from critics", nil];
}

@end

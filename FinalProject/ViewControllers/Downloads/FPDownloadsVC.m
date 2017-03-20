//
//  FPDownloadsVC.m
//  FinalProject
//
//  Created by remotetiger_user on 3/16/17.
//  Copyright © 2017 Mahendar. All rights reserved.
//


#import "FPDownloadsVC.h"
#import "DownloadsCells.h"

@interface FPDownloadsVC ()<UITableViewDelegate, UITableViewDataSource> {
    NSArray *nameArray, *descArray, *imgArray;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation FPDownloadsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self registerCells];
    [self loadDataSource];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadDataSource {
    nameArray = [[NSArray alloc]initWithObjects:@"MADMAX",
                 @"COMEDY",
                 @"L O O P E R",
                 @"EX_MACHINA",
                 @"COMEDY",
                 @"MADMAX",
                 @"LIVE . DIE. REPEAT",
                 @"ACTION ",
                 @"L O O P E R",
                 @"EX_MACHINA", nil];
    descArray = [[NSArray alloc]initWithObjects:@"realsed on may 13th,130.05 mb Watch now",
                 @"After you add your movies by title, barcode, from DVD/Blu-ray discs, or from files and folders on your computer Watch now ",
                 @"Downloaded is a documentary film directed by Alex Winter about the downloading generation ... Watch now",
                 @" Downloaded received mixed reviews from movie critics upon its release. At Metacritic ....",
                 @"network, Movienizer can download information ...",
                 @"All about audio description in movie theaters. ... and iTunes) is known to offer audio description with any of their movies available for downloading/streaming.",
                 @"realsed on may 13th,130.05 mb Watch now",
                 @"Downloaded is a documentary film directed by Alex Winter about the downloading generation ... Watch now ",
                 @"network, Movienizer can download information ...",
                 @"All about audio description in movie theaters. ... and iTunes) is known to offer audio description with any of their movies available for downloading/streaming.",
                 @"Downloaded is a documentary film directed by Alex Winter about the downloading generation ... Watch now", nil];
    
    imgArray = [[NSArray alloc]initWithObjects:@"Movie6",@"Movie2",@"Movie3",@"Movie4",@"Movie5",@"Movie6", @"Movie1",@"Movie2",@"Movie3",@"Movie4",nil];
}

- (void)registerCells {
    [self.tableView registerNib:[UINib nibWithNibName:@"DownloadsCells" bundle:nil] forCellReuseIdentifier:@"DownloadsCells"];
}

#pragma mark - UITableviewDatasource methods..

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [nameArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DownloadsCells *cell = [self.tableView dequeueReusableCellWithIdentifier:@"DownloadsCells" forIndexPath:indexPath];
    cell.movieName.text = [nameArray objectAtIndex:indexPath.row];
    cell.movieDesc.text = [descArray objectAtIndex:indexPath.row];
    [cell.movieImage setImage:[UIImage imageNamed:[imgArray objectAtIndex:indexPath.row]]];
    
    return cell;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat rowHeight;
        rowHeight = 250;
    return rowHeight;
}

@end

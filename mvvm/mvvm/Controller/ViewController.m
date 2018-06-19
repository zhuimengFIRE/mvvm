//
//  ViewController.m
//  mvvm
//
//  Created by Playboy on 2018/6/19.
//  Copyright © 2018年 Playboy. All rights reserved.
//

#import "ViewController.h"
#import "PBTableViewDelegate.h"
#import "TMRefreshHelper.h"
#import "PBMyViewModel.h"

@interface ViewController ()

@property (nonatomic, strong) UITableView            *tableView;
@property (nonatomic, strong) NSMutableArray         *dataSource;
@property (nonatomic, strong) PBTableViewDelegate    *tableViewDelegate;
@property (nonatomic, strong) PBMyViewModel          *viewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configure];
}

- (void)configure {
    self.title = @"mvvm";
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableViewDelegate = [[PBTableViewDelegate alloc] init];
    self.tableViewDelegate.jumpVC = self;
    self.tableView.delegate = self.tableViewDelegate;
    self.tableView.dataSource = self.tableViewDelegate;
    [self.view addSubview:self.tableView];
    
    self.viewModel = [[PBMyViewModel alloc] init];
    
    // 刷新
    [TMRefreshHelper headerRefresh:self.tableView withTarget:self action:@selector(headerRefreshMethod)];
    [TMRefreshHelper footerRefresh:self.tableView withTarget:self action:@selector(footerRefreshMethod)];
    
    [self headerRefreshMethod];
    
}

- (void)headerRefreshMethod {
    [self.viewModel headerRefreshWithCallback:^(NSArray *array) {
        self.dataSource = (NSMutableArray *)array;
        self.tableViewDelegate.array = self.dataSource;
        [self.tableView.mj_header endRefreshing];
        [self.tableView reloadData];
    }];
}


- (void)footerRefreshMethod {
    [self.viewModel fooerRefreshWithCallback:^(NSArray *array) {
        [self.dataSource addObjectsFromArray:array];
        self.tableViewDelegate.array = self.dataSource;
        [self.tableView.mj_footer endRefreshing];
        [self.tableView reloadData];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

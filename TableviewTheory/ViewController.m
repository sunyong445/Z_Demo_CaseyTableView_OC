//
//  ViewController.m
//  TableviewTheory
//
//  Created by Casey on 13/12/2018.
//  Copyright © 2018 Casey. All rights reserved.
//

#import "ViewController.h"
#import "DeleteStyle/DeleteStyleViewController.h"
#import "Theory/TheoryViewController.h"
#import "HeaderSuspend/HeaderSuspendViewController.h"



@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>{
    
    IBOutlet UITableView *_tableview;
    NSArray *titleArr;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    titleArr = @[@"Theory", @"headerSuspend", @"DeleteStyle"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return titleArr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    return 60;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = titleArr[indexPath.row];
    return cell;
    
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UIViewController *viewCtr = nil;
    if (indexPath.row == 0){
        viewCtr = [TheoryViewController new];
    }else if (indexPath.row == 1){
        viewCtr = [HeaderSuspendViewController new];
    }else {
        viewCtr = [DeleteStyleViewController new];
    }
    
    [self.navigationController pushViewController:viewCtr animated:YES];
}




@end

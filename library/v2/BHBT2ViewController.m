//
//  BHBlockTable2ViewController.m
//  blocktable2
//
//  Created by Ashemah Harrison on 3/07/2015.
//  Copyright (c) 2015 Ashemah Harrison. All rights reserved.
//

#import "BHBT2ViewController.h"
#import "BHBT2SimpleDataAdapter.h"

@interface BHBT2ViewController ()

@end

@implementation BHBT2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    id adapter = [BHBT2SimpleDataAdapter adapter];
    self.blockTable = [BHBlockTable2 blockTableWithTableView:self.collectionView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

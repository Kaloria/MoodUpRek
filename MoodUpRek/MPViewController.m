//
//  MPViewController.m
//  MoodUpRek
//
//  Created by Ewa Żebrowska on 22/01/15.
//  Copyright (c) 2015 Ewa Żebrowska. All rights reserved.
//

#import "MPViewController.h"
#import "MPTextTableViewCell.h"

@interface MPViewController ()

@end

@implementation MPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}

- (MPTextTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"";
    NSUInteger fibonaciNumber = [self fibonaci:indexPath.row];
    
    if (fibonaciNumber % 2) {
        cellIdentifier = @"fibonaciLeftCell";
    } else {
        cellIdentifier = @"fibonaciRightCell";
    }
    
    MPTextTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.fibonaciTextLabel.text = [NSString stringWithFormat:@"%i", (int)fibonaciNumber];
    
    return cell;
}

- (NSUInteger)fibonaci:(NSUInteger)n {
    /// 1 1 2 3 5 8 13
    if (n == 1 || n == 0) {
        return 1;
    } else {
       return ([self fibonaci:(n - 1)] + [self fibonaci:(n - 2)]);
    }
    
    //temp
    return n;
}

@end

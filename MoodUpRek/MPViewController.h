//
//  MPViewController.h
//  MoodUpRek
//
//  Created by Ewa Żebrowska on 22/01/15.
//  Copyright (c) 2015 Ewa Żebrowska. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MPViewController : UIViewController <
    UITableViewDataSource,
    UITableViewDelegate
>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end


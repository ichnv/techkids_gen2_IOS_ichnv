//
//  HomeViewController.h
//  Unit4_demoUIViews
//
//  Created by IchNV on 1/24/16.
//  Copyright © 2016 IchNV. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong) NSArray *students;
@property(nonatomic,weak) UITableView *tblstudent;


@end
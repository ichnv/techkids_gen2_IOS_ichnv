//
//  DetailViewController.m
//  Unit4_demoUIViews
//
//  Created by IchNV on 1/30/16.
//  Copyright © 2016 IchNV. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tblName.text = self.personIndex.name;
    self.tblAge.text = [NSString stringWithFormat:@"%d",self.personIndex.age];
    self.imgView.image = [UIImage imageNamed:self.personIndex.nameImg];
    self.tblAddres.text = self.personIndex.addres;
    self.tblPhone.text = self.personIndex.phone;
    
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

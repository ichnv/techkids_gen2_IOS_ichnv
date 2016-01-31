//
//  HomeViewController.m
//  Unit4_demoUIViews
//
//  Created by IchNV on 1/24/16.
//  Copyright © 2016 IchNV. All rights reserved.
//

#import "HomeViewController.h"
#import "CustomCell.h"
#import "Person.h"
#import "DetailViewController.h"
#define kCellClass @"CustomCell"

@interface HomeViewController ()

@end

@implementation HomeViewController{
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //[self.tblstudent registerNib:[U] forHeaderFooterViewReuseIdentifier:<#(nonnull NSString *)#>];
    
    // Do any additional setup after loading the view.
   // self.studentsName = [NSArray arrayWithObjects:@"Ninh Van Ich",@"Ich Van Ninh", nil];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    Person *student = [Person personWithName:@"Nguyen Van A" andAge:13 andAddres:@"Nam Dinh" andPhone:@"84976415118" andNameImg:@"creme_brelee.jpg"];
     Person *student1 = [Person personWithName:@"Nguyen Van B" andAge:13 andAddres:@"Ca Mau" andPhone:@"0976415118" andNameImg:@"images.jpeg"];
    
    
    self.students = [NSArray arrayWithObjects:student,student1, nil];
    //after and load 5s
    [self.tblstudent reloadData];
}


-(void)viewWillDisappear:(BOOL)animated{
    [super viewDidAppear:animated];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return [self.students count];
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
   // [tableView registerClass:[CustomCell class] forCellReuseIdentifier:@"CustomCell"];
    [tableView registerNib:[UINib nibWithNibName:kCellClass bundle:nil] forCellReuseIdentifier:@"CustomCell"];
    static NSString *cellId = @"CustomCell";
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if(cell==nil){
        cell = [[CustomCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId ];
    }
//    cell.textLabel.text = [self.studentsName objectAtIndex:indexPath.row];
//    cell.detailTextLabel.text = @"IOS class";
    
    Person *showPerson = [self.students objectAtIndex:indexPath.row];
    cell.tblName.text = showPerson.name;
    cell.tblAge.text = [NSString stringWithFormat:@"%d", showPerson.age];
    cell.imgView.image = [UIImage imageNamed:showPerson.nameImg];
    return cell;
}


#pragma mark - tableview delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Person *personIndex = [self.students objectAtIndex:indexPath.row];
    DetailViewController *detailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    detailViewController.title = @"Detail";
   // detailViewController.personId = [NSString stringWithFormat:@"%d", indexPath.row];
    [self.navigationController pushViewController:detailViewController animated:YES];
    detailViewController.personIndex = personIndex;
    
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

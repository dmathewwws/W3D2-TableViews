//
//  TableViewController.m
//  W3D2-TableView1
//
//  Created by Daniel Mathews on 2017-08-08.
//  Copyright © 2017 ToyBox Media. All rights reserved.
//

#import "TableViewController.h"
#import "Teacher.h"
#import "MyTableViewCell.h"
#import "SecondViewController.h"

@interface TableViewController ()

@property (nonatomic, strong) NSArray *teachers;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    Teacher *teacher1 = [[Teacher alloc] init];
    teacher1.name = @"Sam";
    
    Teacher *teacher2 = [[Teacher alloc] init];
    teacher2.name = @"Dan";
    
    Teacher *teacher3 = [[Teacher alloc] init];
    teacher3.name = @"Tom";
    
    Teacher *teacher4 = [[Teacher alloc] init];
    teacher4.name = @"Saba";
    
    Teacher *teacher5 = [[Teacher alloc] init];
    teacher5.name = @"Sofia";
    
    self.teachers = @[
                      @[teacher1, teacher2],
                      @[teacher3, teacher4, teacher5]
                    ];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.teachers.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSArray *teachers = self.teachers[section];
    return teachers.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"textCell" forIndexPath:indexPath];
    
    NSArray *teachersArray = self.teachers[indexPath.section];
    Teacher *teacher = teachersArray[indexPath.row];
    
    
    
//    Teacher *teacher = self.teachers[indexPath.section][indexPath.row];
    
    [cell.titleButton setTitle:teacher.name forState:UIControlStateNormal];
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if (section == 0){
        return @"Instructors";
    }else{
        return @"Mentors";
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Teacher *teacher = self.teachers[indexPath.section][indexPath.row];
    
    SecondViewController *sVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    sVC.teacher = teacher;
    
    [self.navigationController pushViewController:sVC animated:YES];

    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
//    if ([segue.identifier isEqualToString:@"toSecondViewController"]){
//        
//        UITableViewCell *cell = (UITableViewCell*)sender;
//        NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
//        
//        SecondViewController *sVC = segue.destinationViewController;
//        sVC.teacher = self.teachers[indexPath.section][indexPath.row];
//        
//    }
    
//    if ([segue.identifier isEqualToString:@"toSecondViewController"]){
//        
//        Teacher *teacher = (Teacher*)sender;
//        
//        SecondViewController *sVC = segue.destinationViewController;
//        sVC.teacher = teacher;
//        
//    }
    
}

@end

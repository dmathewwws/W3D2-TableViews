//
//  TableViewController.m
//  W3D2-TableView1
//
//  Created by Admin on 2016-09-20.
//  Copyright © 2016 ToyBox Media. All rights reserved.
//

#import "TableViewController.h"
#import "CustomTableViewCell.h"
#import "Teacher.h"
#import "SecondViewController.h"

@interface TableViewController ()

@property (nonatomic) NSArray *teachers;

@end

@implementation TableViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
//    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"listCell"];
    
    
    Teacher *teacher1 = [[Teacher alloc] init];
    teacher1.name = @"Dan";
    
    Teacher *teacher2 = [[Teacher alloc] init];
    teacher2.name = @"Cory";
    
    self.teachers = @[teacher1, teacher2];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return self.teachers.count;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.teachers.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
//    UITableViewCell *cell = [[UITableView alloc] init];
    
    
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"listCell" forIndexPath:indexPath];
    
    
    //A
    //NSArray *internalArray = self.teachers[indexPath.section];
    //NSString *teacher = internalArray[indexPath.row];
    
    //B
    Teacher *teacher = self.teachers[indexPath.row];
    

    cell.indexPathLabel.text = [NSString stringWithFormat:@"S: %ld R: %ld", (long)indexPath.section, (long)indexPath.row];
    
    cell.contentLabel.text = teacher.name;
    
    // Configure the cell...
    
    return cell;
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

/*
#pragma mark - Navigation

 

 
*/

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"toDetailTeacherVC"]){
        
        SecondViewController *sVC = segue.destinationViewController;
        
        CustomTableViewCell *cell = (CustomTableViewCell*)sender;
        NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
        
        sVC.teacher = self.teachers[indexPath.row];
        
        
    }
    

}


@end

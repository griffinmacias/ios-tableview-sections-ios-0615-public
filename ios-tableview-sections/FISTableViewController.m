//
//  FISTableViewController.m
//  ios-tableview-sections
//
//  Created by Tom OMalley on 5/28/15.
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISTableViewController.h"
#import "FISStudent.h"
@interface FISTableViewController ()

@end

@implementation FISTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FISStudent *studentA = [[FISStudent alloc] initWithName:@"Joey" FavoriteThings:@[@"pencils", @"chocolate", @"rats"]];
    FISStudent *studentB = [[FISStudent alloc] initWithName:@"Ron" FavoriteThings:@[@"white crayons", @"penguins", @"mountains"]];
    FISStudent *studentC = [[FISStudent alloc] initWithName:@"Zeus" FavoriteThings:@[@"monkeys",@"crystal balls", @"black pepper"]];
    
    self.students = @[studentA, studentB, studentC];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    
    return self.students.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    FISStudent *favoriteThing = self.students[section];
   
    return favoriteThing.favoriteThings.count;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    FISStudent *student = self.students[section];
    
    return [NSString stringWithFormat:@"%@", student.name];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"expandingCell" forIndexPath:indexPath];
    
    // Configure the cell...
    NSUInteger cellSection = indexPath.section;
    FISStudent *student = self.students[cellSection];
    NSUInteger cellRow = indexPath.row;
    NSString *favoriteThing = student.favoriteThings[cellRow];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", favoriteThing];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%li", cellRow];
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

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

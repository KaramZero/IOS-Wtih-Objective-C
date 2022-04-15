//
//  TableTableViewController.m
//  DemoDay2
//
//  Created by Iti on 4/7/22.
//  Copyright © 2022 jets. All rights reserved.
//

#import "TableTableViewController.h"

@interface TableTableViewController ()

@end

@implementation TableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _females = [NSMutableArray new];
    _males = [NSMutableArray new];
    
    [_females addObject:@"Mona"];
    [_males addObject:@"Ahmed"];
    [_males addObject:@"Ali"];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    switch (section) {
        case 0:
            return [_females count];
            break;
            
        case 1:
            return [_males count];
            break;
        default:
            return 0;
            break;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [_females objectAtIndex:indexPath.row];
            break;
        case 1:
            cell.textLabel.text = [_males objectAtIndex:indexPath.row];
            break;
        default:
            break;
    }
    cell.detailTextLabel.text = @"Details";
    cell.imageView.image = [UIImage imageNamed:@"mom.png"];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        switch (indexPath.section) {
            case 0:
                [_females removeObjectAtIndex:indexPath.row];
                break;
            case 1:
                [_males removeObjectAtIndex:indexPath.row];
                break;
            default:
                break;
        }
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


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

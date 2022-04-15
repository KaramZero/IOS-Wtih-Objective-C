//
//  TableViewController.m
//  Day2Lab2 Colleagues
//
//  Created by Karam Ibrahim on 4/7/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "TableViewController.h"
#import "MyColleagues.h"
#import "SelectedViewController.h"
@interface TableViewController ()

@end

@implementation TableViewController

MyColleagues *colleagues;
SelectedViewController *v;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _female = [NSMutableArray new];
    _male = [NSMutableArray new];
    
    MyColleagues *c = [MyColleagues new];
    c.name =@"mona";
    c.address=@"alex";
    c.email = @"mona@hotmail.com";
    c.age = 25;
    c.phone = @"123456789";
    
    MyColleagues *c1 = [MyColleagues new];
    c1.name =@"doaa";
    c1.address=@"alex";
    c1.email = @"doaa@hotmail.com";
    c1.age = 25;
    c1.phone = @"123456789";
    
    MyColleagues *c2 = [MyColleagues new];
    c2.name =@"yasmin";
    c2.address=@"alex";
    c2.email = @"yasmin@hotmail.com";
    c2.age = 25;
    c2.phone = @"123456789";
    
    MyColleagues *c3 = [MyColleagues new];
    c3.name =@"mahmoud";
    c3.address=@"alex";
    c3.email = @"mahmoud@hotmail.com";
    c3.age = 25;
    c3.phone = @"123456789";
    
    MyColleagues *c4 = [MyColleagues new];
    c4.name =@"moustafa";
    c4.address=@"alex";
    c4.email = @"moustafa@hotmail.com";
    c4.age = 25;
    c4.phone = @"123456789";
    
    [_female addObject:c];
    [_female addObject:c1];
    [_female addObject:c2];
    [_male addObject:c3];
    [_male addObject:c4];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    switch (section) {
        case 0:
            return [_female count];
            break;
            
        case 1:
            return [_male count];
            break;
        default: return 0;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    
    // Configure the cell...
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [[_female objectAtIndex:indexPath.row] name ];
            break;
        case 1:
            cell.textLabel.text = [[_male objectAtIndex:indexPath.row] name ];
            break;
    }
    
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

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath
            .section) {
        case 0:
            colleagues = [_female objectAtIndex:indexPath.row];
            break;
            
        case 1:
            colleagues = [_male objectAtIndex:indexPath.row];
            break;
    }
     
    printf("did selected \n");
    v.colleagues = colleagues;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    v = segue.destinationViewController;
    printf("prepareForSegue \n");
  
}


@end

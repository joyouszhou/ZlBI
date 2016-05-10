//
//  ZlPduclistTableViewController.m
//  ZlBI
//
//  Created by zhouhuan on 16/5/10.
//  Copyright © 2016年 zhouhuan. All rights reserved.
//

#import "ZlPduclistTableViewController.h"
#import "ZlTableViewCell.h"
#import "ZlCellItemModel.h"

@interface ZlPduclistTableViewController ()

@end

@implementation ZlPduclistTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置Nav
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = NO;
    self.modalPresentationCapturesStatusBarAppearance = NO;
    self.navigationController.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"我的产品";
    self.view.backgroundColor = [UIColor colorWithRed:223 green:223 blue:223 alpha:1];
    
    self.tableView.rowHeight = 90;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    static NSString * cellIdentifier =@"cell";
    
    ZlCellItemModel * model = [[ZlCellItemModel alloc] init];
    model.imageFile = @"test.png";
    model.textTitleName = @"test";
    model.accessType = ZlCellItemStyleTitle;
    
    
    
    
    ZlTableViewCell *cell = cell = [[ZlTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
     [cell setLeftUtilityButtons:[self leftButtons] WithButtonWidth:32.0f];
    
//    [cell setLeftUtilityButtons:[self leftButtons] WithButtonWidth:32.0f];
//    [cell setRightUtilityButtons:[self rightButtons] WithButtonWidth:58.0f];
//    cell.delegate = self;
//    
//    cell.label.text = [NSString stringWithFormat:@"Section: %ld, Seat: %ld", (long)indexPath.section, (long)indexPath.row];
//
    [cell setCellModel:model];
//    cell.textLabel.text = @"测试";
//    cell.textLabel.backgroundColor = [UIColor whiteColor];
//    cell.imageView.image = [UIImage imageNamed:@"test.png"];
//    cell.detailTextLabel.backgroundColor = [UIColor whiteColor];
//    cell.detailTextLabel.text = @"Some detail text";
    
    return cell;
}

- (NSArray *)leftButtons
{
    NSMutableArray *leftUtilityButtons = [NSMutableArray new];
    
    [leftUtilityButtons sw_addUtilityButtonWithColor:
     [UIColor colorWithRed:0.07 green:0.75f blue:0.16f alpha:1.0]
                                                icon:[UIImage imageNamed:@"check.png"]];
    [leftUtilityButtons sw_addUtilityButtonWithColor:
     [UIColor colorWithRed:1.0f green:1.0f blue:0.35f alpha:1.0]
                                                icon:[UIImage imageNamed:@"clock.png"]];
    [leftUtilityButtons sw_addUtilityButtonWithColor:
     [UIColor colorWithRed:1.0f green:0.231f blue:0.188f alpha:1.0]
                                                icon:[UIImage imageNamed:@"cross.png"]];
    [leftUtilityButtons sw_addUtilityButtonWithColor:
     [UIColor colorWithRed:0.55f green:0.27f blue:0.07f alpha:1.0]
                                                icon:[UIImage imageNamed:@"list.png"]];
    
    return leftUtilityButtons;
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
- (void)swipeableTableViewCell:(SWTableViewCell *)cell didTriggerLeftUtilityButtonWithIndex:(NSInteger)index
{
    
}
- (void)swipeableTableViewCell:(SWTableViewCell *)cell didTriggerRightUtilityButtonWithIndex:(NSInteger)index
{
    
}
- (void)swipeableTableViewCell:(SWTableViewCell *)cell scrollingToState:(SWCellState)state
{
    
}
- (BOOL)swipeableTableViewCellShouldHideUtilityButtonsOnSwipe:(SWTableViewCell *)cell
{
    return 1;
}
- (BOOL)swipeableTableViewCell:(SWTableViewCell *)cell canSwipeToState:(SWCellState)state
{
    return 1;
}
- (void)swipeableTableViewCellDidEndScrolling:(SWTableViewCell *)cell
{
    
}



@end

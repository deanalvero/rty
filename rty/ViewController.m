//
//  ViewController.m
//  rty
//
//  Created by Elementz on 5/15/15.
//  Copyright (c) 2015 qwe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    NSArray *data;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    data = [NSArray arrayWithObjects:@"Cupcake", @"Donut", @"Eclair", @"Froyo", @"Gingerbread", @"Honeycomb", @"Ice Cream Sandwich", @"Jelly Bean", @"KitKat", @"Lollipop", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [data count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *tableIdentifierAndroid = @"AndroidTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: tableIdentifierAndroid];
    
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableIdentifierAndroid];
    }
    
    cell.textLabel.text = [data objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"beastmaster.png"];
    return cell;
}

@end

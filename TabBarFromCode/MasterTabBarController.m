//
//  MasterTabBarController.m
//  TabBarFromCode
//
//  Created by Jay Versluis on 21/12/2013.
//  Copyright (c) 2013 Pinkstone Pictures LLC. All rights reserved.
//

#import "MasterTabBarController.h"
#import "ViewController.h"

@interface MasterTabBarController ()

@end

@implementation MasterTabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // let's create several View Controllers with different colours each
    ViewController *vc1 = [self createViewcontrollerWithColor:[UIColor redColor]];
    ViewController *vc2 = [self createViewcontrollerWithColor:[UIColor greenColor]];
    ViewController *vc3 = [self createViewcontrollerWithColor:[UIColor blueColor]];
    ViewController *vc4 = [self createViewcontrollerWithColor:[UIColor yellowColor]];
    
    vc1.title = @"One";
    vc2.title = @"Two";
    vc3.title = @"Three";
    vc4.title = @"Four";
    
    NSArray *controllers = @[vc1, vc2, vc3, vc4];
    
    
    // populate our tab bar controller with the above
    [self setViewControllers:controllers animated:YES];
    
    // wait five seconds then call selector
    [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(setLessViewcontrollers) userInfo:nil repeats:NO];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setLessViewcontrollers {
    
    // let's create several View Controllers with different colours each
    ViewController *vc1 = [self createViewcontrollerWithColor:[UIColor orangeColor]];
    ViewController *vc2 = [self createViewcontrollerWithColor:[UIColor magentaColor]];
    
    vc1.title = @"One";
    vc2.title = @"Two";
    
    NSArray *lessControllers = @[vc1, vc2];
    
    // switch to less controllers
    [self setViewControllers:lessControllers animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (ViewController *)createViewcontrollerWithColor:(UIColor *)color {

//    ViewController *newViewcontroller = [[ViewController alloc]init];
//    newViewcontroller.backgroundColor = color;

    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *newViewcontroller = [storyboard instantiateViewControllerWithIdentifier:@"PlainViewController"];
    newViewcontroller.backgroundColor = color;
    
    return newViewcontroller;
    
}

@end

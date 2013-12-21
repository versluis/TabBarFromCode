//
//  ViewController.m
//  TabBarFromCode
//
//  Created by Jay Versluis on 21/12/2013.
//  Copyright (c) 2013 Pinkstone Pictures LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (UIColor *)backgroundColor {
    if (!_backgroundColor) {
        _backgroundColor = [UIColor purpleColor];
    }
    return _backgroundColor;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = self.backgroundColor;
    self.label.text = self.title;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

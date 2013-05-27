//
//  TAViewController.m
//  TestApp
//
//  Created by Wen-Hao Lue on 2013-05-26.
//  Copyright (c) 2013 Wen-Hao Lue. All rights reserved.
//

#import "TAViewController.h"
#import "TATableViewController.h"


@interface TAViewController ()

@property (nonatomic, weak) IBOutlet UIButton *button;

- (NSInteger)squared:(NSInteger)number;

@end



@implementation TAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Button: %@", [self button]);

    [self.button addTarget:self
                    action:@selector(buttonPressed)
          forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)squared:(NSInteger)number
{
    return number * number;
}

- (IBAction)buttonPressed
{
    TATableViewController *viewController = [[TATableViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];

//    [UIView animateWithDuration:0.5 animations:^{
//        self.button.frame = CGRectMake(
//            10.0f, 10.0f,
//            self.button.frame.size.width, self.button.frame.size.height);
//    }];
}

- (IBAction)buttonMouseOver
{
    NSInteger results = 10;
    NSLog(@"Results: %d", results);
}


@end

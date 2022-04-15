//
//  ViewController.m
//  Day4Lab2 cocoapods
//
//  Created by Karam Ibrahim on 4/11/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "ViewController.h"
#import <SDWebImage/SDWebImage.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [_myImage sd_setImageWithURL:[NSURL URLWithString:@"https://learnenglish.britishcouncil.org/sites/podcasts/files/RS4956_182230177-low_0.jpg"]
                placeholderImage:[UIImage imageNamed:@"placeholder.png"]];

}


@end

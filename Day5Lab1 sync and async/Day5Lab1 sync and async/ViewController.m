//
//  ViewController.m
//  Day5Lab1 sync and async
//
//  Created by Karam Ibrahim on 4/12/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *myWebView;
- (IBAction)mySync:(UIButton *)sender;
- (IBAction)myAsync:(UIButton *)sender;


@property NSMutableData *data;
@property NSURL *url;
@end

@implementation ViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _data = [NSMutableData new ];
    _url = [NSURL URLWithString:@"https://www.google.com"];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    
    [[UIDevice currentDevice] setValue:@(UIInterfaceOrientationPortrait) forKey:@"orientation"];
}
- (IBAction)mySync:(UIButton *)sender {
    
    NSString *str = [[NSString alloc] initWithContentsOfURL:_url encoding:NSUTF8StringEncoding error:nil];
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    //printf("sync data is here  %d \n",[str length]);
 
    [_myWebView loadData: data MIMEType:@"text/html" textEncodingName:@"utf-8" baseURL:nil];
    
}

- (IBAction)myAsync:(UIButton *)sender {
    NSURLRequest *req = [NSURLRequest requestWithURL:_url];
    NSURLConnection *con = [[NSURLConnection alloc] initWithRequest:req delegate:self];
    
    [con start];
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
  //  printf("data is here\n");
    [_data appendData:data];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection{
  //  printf("async data finished \n");
    
    [_myWebView loadData:_data MIMEType:@"text/html" textEncodingName:@"utf-8" baseURL:nil];
    
}
@end

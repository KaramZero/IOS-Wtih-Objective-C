//
//  ViewController.m
//  Movies APP
//
//  Created by Karam Ibrahim on 4/12/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "ViewController.h"
#import "Movie.h"
#import "TableViewController.h"

@interface ViewController ()

@property NSMutableData *data;
@property NSURL *url;
@property NSMutableArray *movies;
@property TableViewController *v;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _movies = [NSMutableArray new];
    _data = [NSMutableData new ];
     _url = [NSURL URLWithString:@"https://api.androidhive.info/json/movies.json"];
    
    // api.androidhive.info/json/movies.json
    // api.androidhive.info/contacts/
    NSURLRequest *req = [NSURLRequest requestWithURL:_url];
       NSURLConnection *con = [[NSURLConnection alloc] initWithRequest:req delegate:self];
       
       [con start];
}


-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("data is here\n");
    [_data appendData:data];
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection{
    printf("async data finished %d  \n",[_data length]);
    
    NSString *str = [[NSString alloc]initWithData:_data encoding:NSUTF8StringEncoding];

    NSMutableDictionary *dict=[NSJSONSerialization JSONObjectWithData:[str dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:nil];

   // NSMutableArray *dataArr=[dict valueForKey:@"contacts"];
    for (NSDictionary *userData in dict) {
        Movie *m = [Movie new];
        m.title = [userData valueForKey:@"title"];
        m.image = [userData valueForKey:@"image"];
        m.releaseYear = [[userData valueForKey:@"releaseYear"] intValue];
        m.rating = [[userData valueForKey:@"rating"] intValue];
        m.genre = [userData valueForKey:@"genre"];
        
        [_movies addObject:m];
       // printf(" %s \n %s \n ", [m.title UTF8String] ,[m.image UTF8String]);
    }
    
    
}

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    _v = segue.destinationViewController;
    _v.movies = _movies;
    printf("prepareForSegue \n");
  
}


@end

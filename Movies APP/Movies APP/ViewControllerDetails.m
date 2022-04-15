//
//  ViewControllerDetails.m
//  Movies APP
//
//  Created by Karam Ibrahim on 4/12/22.
//  Copyright © 2022 Karam Ibrahim. All rights reserved.
//

#import "ViewControllerDetails.h"
#import "Movie.h"
#import <SDWebImage/SDWebImage.h>

@interface ViewControllerDetails ()

@property (weak, nonatomic) IBOutlet UIImageView *myImage;
@property (weak, nonatomic) IBOutlet UILabel *movieTitle;
@property (weak, nonatomic) IBOutlet UILabel *movieReleaseYear;
@property (weak, nonatomic) IBOutlet UILabel *movieRating;
@property (weak, nonatomic) IBOutlet UILabel *movieGenre;



@end

@implementation ViewControllerDetails

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    printf("viewWillAppear\n");

    [_myImage sd_setImageWithURL:[NSURL URLWithString:_movie.image]
                   placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    
    _movieTitle.text = _movie.title;
   _movieReleaseYear.text = [NSString stringWithFormat:@"%i",_movie.releaseYear];
    _movieRating.text = [NSString stringWithFormat:@"%i / 10",_movie.rating];
    _movieGenre.text =  [_movie.genre componentsJoinedByString:@" , "];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

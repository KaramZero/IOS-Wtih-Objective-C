

#import <Foundation/Foundation.h>
#import "Triangle.h"

@implementation Triangle
-(void) calcArea{
    printf("Area = %d\n", self.b*self.h);
}

-(void) printShapeName{
    printf("this is Triangle\n");
}

@end

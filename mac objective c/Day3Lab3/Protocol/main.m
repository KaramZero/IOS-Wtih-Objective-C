

#import <Cocoa/Cocoa.h>
#import "Rectangle.h"
#import "Triangle.h"
int main(int argc, const char * argv[]) {
    
    Rectangle *rect = [[Rectangle alloc]init];
    rect.w = 2;
    rect.h = 4;
    
    [rect calcArea];
    
    Triangle *tri = [[Triangle alloc]init];
    tri.b = 4;
    tri.h = 6;
    
    [tri printShapeName];
    [tri calcArea];

    return 0;
}

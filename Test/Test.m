//
//  Test.m
//  Test
//
//  Created by SHIMADATAKESHI on 2014/04/05.
//  Copyright (c) 2014年 bonzoo llc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BZRuntime.h"

@interface BZTestModel : NSObject
@property (nonatomic,strong) NSString *vstring;
@property (nonatomic,strong) NSMutableString *vmutableString;
@property (nonatomic,strong) NSNumber *vnumber;
@property (nonatomic,assign) NSInteger vinteger;
@property (nonatomic,assign) CGFloat vfloat;
@property (nonatomic,assign) CGRect vrect;
@property (nonatomic,assign) CGPoint vpoint;
@property (nonatomic,assign) CGSize vsize;
@property (nonatomic,assign) CGRect vnilrect;
@property (nonatomic,strong) UIColor *vcolor;
@property (nonatomic,assign) BOOL vbool;
@property (nonatomic,assign) double vdoulbe;
@property (nonatomic,strong) NSSet *vSet;
@property (nonatomic,strong) NSArray *vArray;
@property (nonatomic,strong) NSDictionary *vdictionary;
@property (nonatomic,strong) NSOrderedSet *vOrderedSet;
@property (nonatomic,strong) NSMutableSet *vmutableSet;
@property (nonatomic,strong) NSMutableArray *vmutableArray;
@property (nonatomic,strong) NSNull *vnull;
@property (nonatomic,strong) NSMutableDictionary *vmutabledictionary;
@property (nonatomic,strong) NSMutableOrderedSet *vmutableOrderedSet;
@property (nonatomic,strong) NSURL *vurl;
@property (nonatomic,strong) UIImage *vimage;
@property (nonatomic,strong) NSData *vdata;
@end
@implementation BZTestModel
@end


@interface Test : XCTestCase

@end

@implementation Test

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testTestModel
{
    BZRuntime *runtime = [BZRuntime runtimeWithClass:[BZTestModel class]];
    XCTAssertTrue(runtime.propertyList.count == 24, @"number of properties error");
    
    BZRuntimeProperty *property0 = runtime.propertyList[0];
    XCTAssertTrue([property0.name isEqualToString:@"vstring"], @"property name error");
    XCTAssertTrue(property0.clazz == [NSString class], @"class error");
}

@end

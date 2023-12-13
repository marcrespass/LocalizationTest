//
//  Main2VC.m
//  LocalizationTest
//
//  Created by Marc Respass on 2023-11-17.
//

#import "Main2VC.h"

@interface Main2VC ()
@property (weak) IBOutlet NSTextField *localizedField1;
@property (weak) IBOutlet NSTextField *localizedField2;
@property (weak) IBOutlet NSTextField *localizedField3;
@property (weak) IBOutlet NSTextField *localizedField4;
@property (weak) IBOutlet NSTextField *localizedField5;

@end

@implementation Main2VC

- (instancetype)init;
{
    if(self = [super initWithNibName:nil bundle:nil])
    {
        return self;
    }
    return nil;
}

- (NSNibName)nibName;
{
    return @"MainVC";
}

- (void)viewDidLoad;
{
    [super viewDidLoad];
    NSInteger many = 3;
    NSInteger one = 1;

    NSString *string1 = [NSString localizedStringWithFormat:NSLocalizedString(@"%lld Strawberry", @""), (long long)many];
    self.localizedField1.stringValue = string1;

    NSString *string2 = [NSString localizedStringWithFormat:NSLocalizedString(@"%lld Strawberry", @""), (long long)one];
    self.localizedField2.stringValue = string2;

    NSString *string3 = [NSString localizedStringWithFormat:NSLocalizedString(@"%lld Strawberry, %lld Apple", @""), (long long)many, (long long)many];
    self.localizedField3.stringValue = string3;

    NSString *string4 = [NSString localizedStringWithFormat:NSLocalizedString(@"%lld Strawberry, %lld Apple", @""), (long long)one, (long long)one];
    self.localizedField4.stringValue = string4;

    NSString *string5 = [NSString localizedStringWithFormat:NSLocalizedString(@"%lld Strawberry, %lld Apple", @""), (long long)one, (long long)many];
    self.localizedField5.stringValue = string5;
}

@end

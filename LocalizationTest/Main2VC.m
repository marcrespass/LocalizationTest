//
//  Main2VC.m
//  LocalizationTest
//
//  Created by Marc Respass on 2023-11-17.
//

#import "Main2VC.h"

@interface Main2VC ()
@property (weak) IBOutlet NSTextField *titleField;
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

    self.titleField.stringValue = NSLocalizedString(@"Strawberries and blueberries", @"");
//    self.titleField.stringValue = @"Strawberries and blueberries";
//    self.titleField.stringValue = [NSString stringWithFormat:@"Strawberries and blueberries"];

    long long many = 3;
    long long one = 1;

    NSString *string1 = [NSString stringWithFormat:NSLocalizedString(@"There are %lld strawberries", @""), many];
    self.localizedField1.stringValue = string1;

    NSString *string2 = [NSString stringWithFormat:NSLocalizedString(@"There are %lld strawberries", @""), one];
    self.localizedField2.stringValue = string2;

    NSString *string3 = [NSString stringWithFormat:NSLocalizedString(@"There are %lld strawberries and %lld blueberries", @""), many, many];
    self.localizedField3.stringValue = string3;

    NSString *string4 = [NSString stringWithFormat:NSLocalizedString(@"There are %lld strawberries and %lld blueberries", @""), one, one];
    self.localizedField4.stringValue = string4;

    NSString *string5 = [NSString localizedStringWithFormat:NSLocalizedString(@"There are %lld strawberries and %lld blueberries", @""), one, many];
    self.localizedField5.stringValue = string5;
}

@end

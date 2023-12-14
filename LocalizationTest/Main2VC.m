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

//    self.titleField.stringValue = @"fruit1 and fruit2"; // DOES NOT WORK
//    self.titleField.stringValue = [NSString localizedStringWithFormat:@"fruit1 and fruit2"]; // DOES NOT WORK
    self.titleField.stringValue = NSLocalizedString(@"fruit1 and fruit2", @""); // Works

    long long many = 3;
    long long one = 1;

    NSString *string1 = [NSString stringWithFormat:NSLocalizedString(@"There are %lld fruit1", @""), many];
    self.localizedField1.stringValue = string1;

    NSString *string2 = [NSString stringWithFormat:NSLocalizedString(@"There are %lld fruit1", @""), one];
    self.localizedField2.stringValue = string2;

    NSString *string3 = [NSString stringWithFormat:NSLocalizedString(@"There are %lld fruit1 and %lld fruit2", @""), many, many];
    self.localizedField3.stringValue = string3;

    NSString *string4 = [NSString stringWithFormat:NSLocalizedString(@"There are %lld fruit1 and %lld fruit2", @""), one, one];
    self.localizedField4.stringValue = string4;

    NSString *string5 = [NSString localizedStringWithFormat:NSLocalizedString(@"There are %lld fruit1 and %lld fruit2", @""), one, many];
    self.localizedField5.stringValue = string5;
}

@end
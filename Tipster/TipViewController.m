//
//  TipViewController.m
//  Tipster
//
//  Created by Airei Fukuzawa on 6/14/22.
//

#import "TipViewController.h"

@interface TipViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipSegCtrl;


@end

@implementation TipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)onTap:(id)sender {
    NSLog(@"Tapped");
    [self.view endEditing:true];
}
- (IBAction)updateTotal:(id)sender {
    // Set the labels to sample strings
    double tipPercentages[] = {0.15, 0.18, 0.20};
    double selectedTipPercent = tipPercentages[self.tipSegCtrl.selectedSegmentIndex];
    double bill = [self.billField.text doubleValue];

    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", bill*selectedTipPercent];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", bill+bill*selectedTipPercent];
    

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

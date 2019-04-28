//
//  GHSpecItemCell.m
//  DynamicCollectionCell
//
//  Created by LinChe-Ching on 2019/4/27.
//  Copyright © 2019 Che-ching Lin. All rights reserved.
//

#import "GHSpecItemCell.h"

@interface GHSpecItemCell ()
@property (nonatomic, strong) UILabel *label;
@end
@implementation GHSpecItemCell

- (void)awakeFromNib {
    [super awakeFromNib];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.backgroundColor = [UIColor yellowColor];
    self.layer.borderColor = [UIColor redColor].CGColor;
    self.layer.cornerRadius = 2.0;
    self.layer.borderWidth = 1.0;
    label.numberOfLines = 2;
    [self.contentView addSubview:label];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    NSLayoutConstraint *top =
    [label.topAnchor constraintEqualToAnchor:self.contentView.layoutMarginsGuide.topAnchor constant:5];
    [top setActive:YES];
    NSLayoutConstraint *left =
    [label.leftAnchor constraintEqualToAnchor:self.contentView.layoutMarginsGuide.leftAnchor constant:15];
    [left setActive:YES];
    NSLayoutConstraint *right=
    [label.rightAnchor constraintEqualToAnchor:self.contentView.layoutMarginsGuide.rightAnchor constant:-15];
    [right setActive:YES];
    NSLayoutConstraint *bot =
    [label.bottomAnchor constraintEqualToAnchor:self.contentView.layoutMarginsGuide.bottomAnchor constant:-5];
    [bot setActive:YES];
    _label = label;
}

- (void)setText:(NSString *)text {
    _text = text;
    _label.text = text;
    [self layoutIfNeeded];
}

- (UICollectionViewLayoutAttributes*)preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes {
    CGSize size = [self.contentView systemLayoutSizeFittingSize:layoutAttributes.size];
    
    NSLog(@"size: %f, %f", size.width, size.height);
    layoutAttributes.size = size;
    return layoutAttributes;
}
@end

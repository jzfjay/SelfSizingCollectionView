//
//  SecondCollectionViewCell.m
//  NewSelfSizingCollectionView
//
//  Created by 贾卓峰 on 2017/5/27.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "SecondCollectionViewCell.h"
#import "Masonry.h"

@interface SecondCollectionViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *myImageView;


@property (weak, nonatomic) IBOutlet NSLayoutConstraint *imageViewHcons;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *nameLabelTopCons;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *addressLabelTopCons;

@end


@implementation SecondCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.width.mas_greaterThanOrEqualTo(10);
        make.width.mas_lessThanOrEqualTo([UIScreen mainScreen].bounds.size.width);
    }];

}

-(void)configureData:(SecondModel *)model{

    if (model) {
        
        if (model.image.integerValue == 1) {
            
            self.imageViewHcons.constant = [UIScreen mainScreen].bounds.size.width;
            [self.myImageView setImage:[UIImage imageNamed:@"1234"]];
            
        }else{
        
          self.imageViewHcons.constant = 0;
        }
        
        
        
        self.nameLabel.text = model.name;
        if (model.name.length >0) {
            
            self.nameLabelTopCons.constant = 19;
            
        }else{
        
            self.nameLabelTopCons.constant = 0;

        }
       
        
        
        self.addressLabel.text = model.address;
        if (model.address.length >0) {
            
            self.addressLabelTopCons.constant = 21;

        }else{
            
            self.addressLabelTopCons.constant = 0;

        }
        
    }
    
    
}
/*
 
    size 
 */

#pragma - mark These methods are here just to place breakpoints

// method called when using auto sizing cells
- (UICollectionViewLayoutAttributes *)preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes {
    
    
    NSLog(@"__%s__",__FUNCTION__);
//    self.textLabel.preferredMaxLayoutWidth = layoutAttributes.size.width;
    UICollectionViewLayoutAttributes *size = [super preferredLayoutAttributesFittingAttributes:layoutAttributes];
    
    // computed size can be changed here, but should not be necessary
    
    return size;
}

// called for cells with autolayout
- (CGSize)systemLayoutSizeFittingSize:(CGSize)targetSize {
    CGSize size = [super systemLayoutSizeFittingSize:targetSize];
    
    NSLog(@"__%s__",__FUNCTION__);
    
    return size;
}

// called if no autolayout is used
- (CGSize)sizeThatFits:(CGSize)targetSize {
    CGSize size = [super sizeThatFits:targetSize];
    
    return size;
}


@end

//
//  ThirdCollectionViewCell.h
//  NewSelfSizingCollectionView
//
//  Created by 贾卓峰 on 2017/6/2.
//  Copyright © 2017年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThirdModel.h"

@protocol ThirdCollectionViewCellDelegate <NSObject>

-(void)clickMore;

@end

@interface ThirdCollectionViewCell : UICollectionViewCell

@property(nonatomic,strong)UILabel * firstLabel;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property(nonatomic,assign)id<ThirdCollectionViewCellDelegate>delegate;

-(void)configureData:(ThirdModel *)model;


@end

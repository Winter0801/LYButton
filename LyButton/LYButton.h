//
//  LYButton.h
//  新浪微博
//
//  Created by LyforMac on 17/2/13.
//  Copyright © 2017年 playTeam. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger,LYButtonType){
    
    LYButtonImageUpType = 1,
    
    LYButtonImageLeftType,
    LYButtonImageRightType,
    LYButtonTitleRightType,
    
};

@interface LYButton : UIButton

@property (nonatomic,strong)NSNumber *type;
@property (nonatomic,assign)LYButtonType imageLocationType;
@property (nonatomic,assign)CGFloat pading;
@end

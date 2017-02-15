//
//  LYButton.m
//  新浪微博
//
//  Created by LyforMac on 17/2/13.
//  Copyright © 2017年 playTeam. All rights reserved.
//

#import "LYButton.h"

@implementation LYButton

- (instancetype)init {
    self = [super init];
    if (self) {
        [self globalConfig];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self globalConfig];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self globalConfig];
    }
    return self;
}

+ (instancetype)buttonWithType:(UIButtonType)buttonType {
    LYButton *button = [super buttonWithType:buttonType];
    if (button) {
        [button globalConfig];
    }
    return button;
}

+ (instancetype)new {
    LYButton *button = [LYButton new];
    if (button) {
        [button globalConfig];
    }
    return button;
}

- (void)awakeFromNib {
    [self globalConfig];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    if (self.imageLocationType == LYButtonImageUpType) {
        
        // Center image
        CGPoint center = self.imageView.center;
        center.x = self.frame.size.width/2;
        center.y = self.imageView.frame.size.height/2;
        
        CGFloat height = (self.imageView.frame.size.height + self.titleLabel.frame.size.height + 14);
        
        self.imageView.center = CGPointMake(self.frame.size.width/2, (self.frame.size.height - height)/2.0 + self.imageView.frame.size.height/2.0);
        
        //Center text
        CGRect newFrame = [self titleLabel].frame;
        newFrame.origin.x = 0;
        newFrame.origin.y = self.imageView.frame.size.height + 5;
        newFrame.size.width = self.frame.size.width;
        
        self.titleLabel.frame = newFrame;
        self.titleLabel.center = CGPointMake(self.imageView.center.x, self.imageView.frame.size.height + self.imageView.frame.origin.y + self.titleLabel.frame.size.height/2.0 + 14);
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }else if (self.imageLocationType == LYButtonImageLeftType){
        // Center image
        CGPoint center = self.imageView.center;
        center.x = self.frame.size.width/2;
        center.y = self.imageView.frame.size.height/2;
        self.imageView.center = CGPointMake(self.imageView.frame.size.width/2.0, self.frame.size.height/2.0);
        
        //Center text
        CGRect newFrame = [self titleLabel].frame;
        newFrame.origin.x = 0;
        newFrame.origin.y = self.imageView.frame.size.height + 5;
        newFrame.size.width = self.frame.size.width;
        
        self.titleLabel.frame = newFrame;
        self.titleLabel.center = CGPointMake(self.imageView.frame.size.width + 5 + self.titleLabel.frame.size.width/2.0, self.imageView.center.y);
        self.titleLabel.textAlignment = NSTextAlignmentLeft;
    }else if (self.imageLocationType == LYButtonImageRightType){
        self.titleLabel.center = CGPointMake(self.titleLabel.frame.size.width/2.0, self.frame.size.height/2.0);
        self.imageView.center = CGPointMake(self.titleLabel.frame.size.width + 2 + self.titleLabel.frame.size.width/2.0, self.frame.size.height/2.0);
    }else if (self.imageLocationType == LYButtonTitleRightType){
        self.titleLabel.center = CGPointMake(self.frame.size.width - self.titleLabel.frame.size.width/2.0, self.frame.size.height/2.0);
    }
}

- (void)globalConfig
{
    self.pading = 6;
}


@end

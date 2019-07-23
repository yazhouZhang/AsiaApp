//
//  ARFaceVC.m
//  ARPlayMagic
//
//  Created by zhangyazhou on 2019/7/23.
//  Copyright © 2019 zhifu360. All rights reserved.
//

#import "ARFaceVC.h"

@interface ARFaceVC ()<ARSCNViewDelegate>
//ARKit框架中用于3D显示的预览视图
@property (nonatomic, strong) IBOutlet ARSCNView *sceneView;

@end

@implementation ARFaceVC

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    // Create a session configuration
    //创建一个追踪设备配置（ARWorldTrackingSessionConfiguration主要负责传感器追踪手机的移动和旋转）
    ARWorldTrackingConfiguration *configuration = [ARWorldTrackingConfiguration new];
    // Run the view's session
    // 开始启动ARSession会话（启动AR）
    [self.sceneView.session runWithConfiguration:configuration];
   
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    // Pause the view's session
    // 暂停ARSession会话
    [self.sceneView.session pause];
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

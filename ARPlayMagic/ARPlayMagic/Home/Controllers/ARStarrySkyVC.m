//
//  ARStarrySkyVC.m
//  ARPlayMagic
//
//  Created by zhangyazhou on 2019/7/23.
//  Copyright © 2019 zhifu360. All rights reserved.
//

#import "ARStarrySkyVC.h"

@interface ARStarrySkyVC ()
@property (weak, nonatomic) IBOutlet ARSCNView *sceneView;

@end

@implementation ARStarrySkyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setUpSceneView];
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

-(void)setUpSceneView{
    // Set the view's delegate
    //设置代理
    self.sceneView.delegate = self;
    
    // Show statistics such as fps and timing information
    //ARKit统计信息
    self.sceneView.showsStatistics = YES;
    
    // Create a new scene
    //使用模型创建节点（scn格式文件是一个基于3D建模的文件，使用3DMax软件可以创建，这里系统有一个默认的3D飞机）
    SCNScene *scene = [SCNScene sceneNamed:@"art.scnassets/ship.scn"];
    
    // Set the scene to the view
    //设置ARKit的场景为SceneKit的当前场景（SCNScene是Scenekit中的场景，类似于UIView）
    self.sceneView.scene = scene;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    // Pause the view's session
    // 暂停ARSession会话
    [self.sceneView.session pause];
}

@end

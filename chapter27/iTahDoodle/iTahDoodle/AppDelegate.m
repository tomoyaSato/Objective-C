//
//  AppDelegate.m
//  iTahDoodle
//
//  Created by Minami Kyohei on 2016/06/03.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end


NSString *docPath(void)
{
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [[pathList objectAtIndex:0] stringByAppendingPathComponent:@"data.td"];
}

@implementation AppDelegate

//ここに追加
#pragma mark - table View management
-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section
{
    //tasks配列の要素数と同じ
    return [tasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //性能を向上させながら、常に新しいセルを生成するのではなく
    //スクロールで消えたメモリから新しいセルを再構成して返す
    //再利用可能なセルか確認する
    UITableViewCell *c = [taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (!c) {
        //再利用可能なものがなければセルを割り当てる
        c = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault
                                   reuseIdentifier:@"Cell"];
    }
    NSString *item = [tasks objectAtIndex:[indexPath row]];
    [[c textLabel] setText:item];
    
    //テーブルビューに返す
    return c;
}



#pragma mark - Application delegate callbacks

- (BOOL)application:(UIApplication *)
application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSArray *plist =[NSArray arrayWithContentsOfFile:docPath()];
    if(plist){
        //データが存在するなら、インスタンス変数にコピーする
        tasks = [plist mutableCopy];
    }else{
        //そうでなければ、からの配列を生成する
        tasks = [[NSMutableArray alloc] init];
    }
    
    //to-doリストが空か？
    if([tasks count] == 0){
        [tasks addObject:@"Walk the dogs"];
        [tasks addObject:@"Feed the hogs"];
        [tasks addObject:@"Chop the logs"];
    }
    
    //UIWindowインスタンスを生成して構成する
    //CGRectは原点(x,y)と大きさ(width,height)を持つ構造体
    CGRect windowFrame = [[UIScreen mainScreen]bounds];
    UIWindow *theWindow = [[UIWindow alloc] initWithFrame:windowFrame];
    [self setWindow:theWindow];
    
    //3つのUI要素のためのフレーム矩形領域を定義する
    //CGRectMake()は(x, y , width, height)からCGRectを生成する
    CGRect tableFrame = CGRectMake(0,80,320,380);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    //テーブルビューを生成して構成する
    taskTable = [[UITableView alloc] initWithFrame:tableFrame
                                             style:UITableViewStylePlain];
    [taskTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    //このオブジェクトをテーブルビューのデータソースに設定する
    [taskTable setDataSource:self];
    
    //テキストフィールドを生成して構成する（新しいタスクの入力）
    taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    [taskField setBorderStyle:UITextBorderStyleRoundedRect];
    [taskField setFrame:buttonFrame];
    
    //がどの丸いInsertボタンを生成して構成する
    insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [insertButton setFrame:buttonFrame];
    
    //ボタンはターゲット/アクションコールバックを使う
    //Insertボタンが押されたらこのオブジェクトのaddTaskメソッドを呼ぶように構成する
    [insertButton addTarget:self
                     action:@selector(addTask:)
           forControlEvents:UIControlEventTouchUpInside];
    
    //ボタンにタイトルを設定する
    [insertButton setTitle:@"Insert" forState:UIControlStateNormal];
    
    //3つのUI要素をウインドに追加する
    [[self window] addSubview:taskTable];
    [[self window] addSubview:taskField];
    [[self window] addSubview:insertButton];
    
    //ウインドを完了させて、画面に表示する
    [[self window] setBackgroundColor:[UIColor whiteColor]];//色の設定
    [[self window] makeKeyAndVisible];//可視化処理
    
    return YES;
}

- (void)addTask:(id)sender
{
    NSString *t = [taskField text];
    //taskFieldが空ならば終了
    if ([t length] == 0) {
        return;
    }
    
    [tasks addObject:t];
    [taskTable reloadData];
    [taskField setText:@""];
    [taskField resignFirstResponder];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

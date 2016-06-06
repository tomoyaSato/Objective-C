//
//  Appliance.h
//  Appliances
//
//  Created by Minami Kyohei on 2016/06/06.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject
{
    //NSString *productName;
    //int voltage;
}


@property (copy) NSString *productName;

//プロパティにreadwriteまたはreadonlyのどちらかを指定できる
//デフォルトはreadwrite
//setterメソッドを生成したくない場合はreadonlyを指定する
@property int voltage;
- (id) initWithProductname:(NSString *)pn;


/* week strong test
__strong NSString *strongString = [[NSString alloc] initWithFormat:@"テスト"];
__weak   NSString *weakString   = strongString;
NSLog(@"strong: %@ , weak: %@", strongString, weakString); // strong: テスト , weak: テスト
// 「テスト」が解放される
strongString = [[NSString alloc] initWithFormat:@"あいう"];
NSLog(@"strong: %@ , weak: %@", strongString, weakString); // strong: あいう , weak: nil


__weak NSString *weakString2 = [[NSString alloc] initWithFormat:@"あいう"];
NSLog(@"%@", weakString2); // 代入した瞬間に解放されるので、nilが出力される
*/

@end

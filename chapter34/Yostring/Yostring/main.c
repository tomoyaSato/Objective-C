//
//  main.c
//  Yostring
//
//  Created by Minami Kyohei on 2016/06/07.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h> //malloc, free
#include <string.h> //strlen

int main(int argc, const char * argv[]) {
    //char x = 0x21; //　"!"
    char x = '!';
    
    //while (x <= 0x7e) {
    while (x <= '~') { //"~"
        printf("%x is %c\n",x, x);
        x++;
    }
    
    const char *str ="Love";
    //強制クラッシュ用の記述
    //str[2] = 'z';
    
    /*
    //C言語文字列とNSStringとの相互交換
    char *greeting = "Hello";
    NSString *x = [NSString stringWithCString:greeting encoding:NSUTF8StringEncoding];
    
    NSString *greeting = @"Hello";
    const char *x = NULL;
    if([greeting canBeConvertedToEncoding:NSUTF8StringEncoding]){
        x = [greeting cStringUsingEncoding:NSUTF8StringEncoding];
    }
    */
    
    //ヒープ上に5バイトのメモリを確保し、そのポインタを取得
    //char *str = malloc(5);
    
    /*
    //最初のバイトにLを設定
    *str = 'L';

    //２番目にoを設定
    *(str + 1) = 'o';
    
    //3番目にvを設定
    *(str + 2) = 'v';
    
    //4番目にeを設定
    *(str + 3) = 'e';
    
    //5番目にnull(0x00)を設定
    *(str + 4) = '\0';
    */
    
    /*
    //短縮記法を使う
    str[0] = 'L';
    str[1] = 'o';
    str[2] = 'v';
    str[3] = 'e';
    str[4] = '\0';
    */
    
    printf("%s has %zu characters \n",str, strlen(str));
    
    /*
    //メモリの解放
    free(str);
    str = NULL;
    */
    
    return 0;
}

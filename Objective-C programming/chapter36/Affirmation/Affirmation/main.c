//
//  main.c
//  Affirmation
//
//  Created by Minami Kyohei on 2016/06/07.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h> //atoi()

int main(int argc, const char * argv[]) {
  /*
    for (int i = 0; i < argc; i++){
        printf("rg %d = %s\n", i, argv[i]);
    }
   */
    
    if (argc != 3) {
        fprintf(stderr, "Usage: Affirmation <name> <number>\n");
        return 1;
    }
    
    int count = atoi(argv[2]);
    for (int j = 0; j < count; j++) {
        printf("%s is cool.\n", argv[1]);
    }
    
    return 0;
}

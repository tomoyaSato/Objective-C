//
//  main.c
//  ClassCertificates
//
//  Created by Minami Kyohei on 2016/06/01.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>



void congratulateStudent(char *student, char *course, int numDays){
    printf("%s has done as nuch %s Programming as I could fit into %d days.\n", student, course, numDays);
}

int main(int argc, const char * argv[]) {
    
    congratulateStudent("Mark","Cocoa",5);
    congratulateStudent("Bo","Objective-C" ,2);
    congratulateStudent("Mike", "Python", 5);
    congratulateStudent("Ted", "iOS", 5);
    
    return 0;
}

//
//  main.c
//  heightInMeters
//
//  Created by Minami Kyohei on 2016/06/01.
//  Copyright © 2016年 Minami Kyohei. All rights reserved.
//

#include <stdio.h>

//構造体の宣言
typedef struct{
    float heightInMeters;
    int weightInkilos;
}Person;

float bodyMassIndex(Person p){
    return p.weightInkilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[]) {
   
    Person person;
    person.weightInkilos = 96;
    person.heightInMeters = 1.8;
    float bmi = bodyMassIndex(person);
    printf("person has a BMI of %f\n", bmi);
    
    return 0;
}

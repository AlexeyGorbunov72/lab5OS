#include<iostream>
#include<fstream>
#include <stdio.h>
#include <stdlib.h>
int main(){
    std::ofstream report;
    report.open("/Users/Retard/Desktop/report.txt");
    unsigned feq = 100000;
    unsigned long limit = 160000000000 * 6;
    unsigned long eatByStep = 100;
    unsigned long counter = 0;
    while(true){
        counter += malloc(eatByStep) != nullptr;
        if(counter % feq == 0){
            report << counter;
            report << '\n';
            //system("/Users/Retard/Desktop/collectData.sh");
        }
 
    }
    report.close();
    return 0;
}

#include <stdio.h>
#include <math.h>

#define max(a,b) (a > b) ? a : b

using namespace std;

int main(int argc, char *argv[]) {
    FILE *fin = fopen (argv[1], "r");
    double Dn = -1;
    double Dn_ = -1;
    double now;
    for (float i = 0; i < 30; i++) {
        fscanf(fin, "%f", &now);
    
        Dn = max(Dn, fabsf((i + 1)/30 - now));
        Dn_ = max(Dn_, fabsf(i/30 - now));
    }
    
    float D = max(Dn, Dn_);
    
    cout << D << endl;
    return 0;
}
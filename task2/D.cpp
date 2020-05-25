// Example program
#include <iostream>
#include <string>
#include <cmath> 

using namespace std;

double uniform(double t) {
    if (t >= 0 && t <= 1)
        return t;
    if (t < 0)
        return 0;
    
    return 1;
}

int indicator_sum(double t, double* arr, int size) {
    int counter = 0;
    for (int i = 0; i < size; i++) {
        if (arr[i] <= t)
        counter++;
    }

    return counter;
}

int main() {
    double a[] = {0.352, 0.437, 0.190, 0.987, 0.350, 0.386, 0.524, 0.515, 0.792, 0.121,
    0.486, 0.114, 0.495, 0.049, 0.520, 0.794, 0.244, 0.472, 0.710, 0.655,
    0.650, 0.775, 0.446, 0.631, 0.083, 0.067, 0.255, 0.106, 0.937, 0.405};
    
    double sup = -1, tmp, sup_val, index;
    for (int i = 0; i < 30; i++) {
        tmp = abs(indicator_sum(a[i], a, 30) / 30. - uniform(a[i]));
        
        if (tmp > sup) {
            sup = tmp;
            sup_val = a[i];
            index = i;
        }
    }

    cout << "Dn = " << sup << endl;
    cout << "Dn * sqrt(30) = " << sup * sqrt(30) << endl;
    cout << "Value = " << sup_val << endl;
    cout << "Index in source = " <<  index << endl;
    return 0;
}

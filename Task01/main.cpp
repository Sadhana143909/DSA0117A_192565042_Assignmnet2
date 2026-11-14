#include <iostream>
using namespace std;

void applyByValue(long long fee, int percent)
{
    fee = fee - (fee * percent / 100);
}

void applyByReference(long long &fee, int percent)
{
    fee = fee - (fee * percent / 100);
}

void applyByPointer(long long *fee, int percent)
{
    *fee = *fee - (*fee * percent / 100);
}

int main()
{
    long long fee = 45000;

    applyByValue(fee, 10);
    cout << "After value: " << fee << endl;

    applyByReference(fee, 10);
    cout << "After reference: " << fee << endl;

    applyByPointer(&fee, 10);
    cout << "After pointer: " << fee << endl;

    return 0;
}
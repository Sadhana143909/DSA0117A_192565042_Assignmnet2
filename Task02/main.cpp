
#include <iostream>
using namespace std;

int& highestMark(int marks[], int n)
{
    int maxIndex = 0;

    for(int i = 1; i < n; i++)
    {
        if(marks[i] > marks[maxIndex])
        {
            maxIndex = i;
        }
    }

    return marks[maxIndex];
}

int main()
{
    int marks[5] = {75, 89, 92, 80, 85};

    cout << "Highest mark: " << highestMark(marks, 5) << endl;

    highestMark(marks, 5) += 2;

    cout << "After moderation: ";

    for(int i = 0; i < 5; i++)
    {
        cout << marks[i] << " ";
    }

    return 0;
}

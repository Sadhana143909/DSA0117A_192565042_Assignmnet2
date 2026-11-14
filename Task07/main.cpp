#include <iostream> 
using namespace std; 
 
class SavingsAccount 
{ 
private: 
    double transactions[50]; 
    int start; 
    int count; 
 
public: 
    SavingsAccount() 
    { 
        start = 0; 
        count = 0; 
    } 
 
    void addTransaction(double amount) 
    { 
        if(count < 50) 
        { 
            int next = (start + count) % 50; 
 
            transactions[next] = amount; 
            count++; 
        } 
        else 
        { 
            transactions[start] = amount; 
            start = (start + 1) % 50; 
        } 
    } 
 
    void miniStatement() 
    { 
        cout << "Last Transactions:" << endl; 
 
        for(int i = 0; i < count; i++) 
        { 
            int position = (start + i) % 50; 
 
            cout << transactions[position] << endl; 
        } 
    } 
}; 
 
int main() 
{ 
    SavingsAccount account; 
 
    for(int i = 1; i <= 55; i++) 
    { 
        account.addTransaction(i * 100); 
    } 
 
    account.miniStatement(); 
 
    return 0; 
}

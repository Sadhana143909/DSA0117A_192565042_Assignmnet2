#include <iostream> 
using namespace std; 
 
class SavingsAccount 
{ 
private: 
    int accountNumber; 
    double balance; 
    double transactions[10]; 
    int count; 
 
public: 
    SavingsAccount(int acc, double bal) 
    { 
        accountNumber = acc; 
        balance = bal; 
        count = 0; 
    } 
 
    void deposit(double amount) 
    { 
        balance += amount; 
        addTransaction(amount); 
    } 
 
    void withdraw(double amount) 
    { 
        if(amount <= balance) 
        { 
            balance -= amount; 
            addTransaction(-amount); 
        } 
        else 
        { 
            cout << "Insufficient balance" << endl; 
        } 
    } 
 
    void addTransaction(double amount) 
    { 
        if(count == 10) 
        { 
            for(int i = 0; i < 9; i++) 
            { 
                transactions[i] = transactions[i + 1]; 
            } 
            count = 9; 
        } 
 
        transactions[count] = amount; 
        count++; 
    } 
 
    void miniStatement(); 
}; 
 
void SavingsAccount::miniStatement() 
{ 
    cout << "Account Number: " << accountNumber << endl; 
    cout << "Balance: " << balance << endl; 
    cout << "Transactions: " << endl; 
 
    for(int i = 0; i < count; i++) 
    { 
        cout << transactions[i] << endl; 
    } 
} 
 
int main() 
{ 
    SavingsAccount s(101, 10000); 
 
    s.deposit(2000); 
    s.withdraw(1000); 
    s.deposit(500); 
 
    s.miniStatement(); 
 
    return 0; 
}

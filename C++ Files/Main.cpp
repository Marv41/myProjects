#include <iostream>
using namespace std;

int main()
{
    cout << "Hello World!" << endl;

    int num;

    for (int i = 0; i <= 10; i++)
    {
        cout << i << endl;
    }

    string name;
    int age;

    cin >> name >> age;
    cout << "Name : " << name << endl;
    cout << "Age : " << age << endl;

    return 0;
}

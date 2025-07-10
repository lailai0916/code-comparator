#include <bits/stdc++.h>
using namespace std;

random_device rd;
mt19937 gen(rd());
int Rand(int x,int y)
{
	uniform_int_distribution<int> dist(x,y);
	return dist(gen);
}
int main()
{
	// do sth
	return 0;
}

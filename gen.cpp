#include <bits/stdc++.h>
using namespace std;

const int N=100000;
random_device rd;
mt19937 gen(rd());
int Rand(int x,int y)
{
	uniform_int_distribution<int> dist(x,y);
	return dist(gen);
}
int main()
{
	int n=Rand(1,N);
	cout<<n<<'\n';
	for(int i=1;i<=n;i++)
	{
		cout<<Rand(1,1000000)<<' ';
	}
	return 0;
}

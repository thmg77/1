#include<iostream.h>
#include<fstrteam.h>
#include<string.h>
#include<cinio.h>
#include<process.h>
void main()
{
	char list[50],fname1[20],fname2[20];
	int ch,n,i,j;
	cout<<"enter your choice";
	cout<<" 1.for std input/output\n";
	cout<<"2.for file input/output\n";
	cin>>ch;
	switch(ch)
	{
		case 1:cout<<" enter the number of names you want to reverse:";
		cin>>n;
		for(i=1;i<=n;1++0)
		cout<<" enter the name:"<<i<<":";
		cin>>list;
		len=strlen[list];
		cout<<"reverse name:"<<i<<":";
		for(j=len-1;j>=0;j--)
		{
			cout<<list[j];
		}
		cout<<endl;
	}
	break;
	case 2: cout<<"enter the input file\n";
	cin>>fname1;
	cout<<" enter the output file\n";
	cin>>fname2;
	f1.open("fname1,ios::in")
	f2.open("fname2.ios::out")
	while(1)
	{
	
	f1.get(list,15,'\n');
	if(f1.fail())
	break;
	len=strlen[list]
	for(i=0;i>=len-2;i--)
	{
		f2<<list[i];
	}
	f2<<endl;
}
{
	f1.close();
	f2.close();
	break;
}
getch();

}

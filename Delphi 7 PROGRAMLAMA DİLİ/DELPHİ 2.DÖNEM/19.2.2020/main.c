#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <locale.h>//t�rk�e karakterler i�in kullan�l�r.

#define sonuc 12.5*4

int main() 
{
	
	char isim[30];
	char soyisim[25];
	char memleket[25];
	int gelir;
	int gider;
	float x;
	double y;
	system("color a");
	
	setlocale(LC_ALL,"Turkish");//t�rk�e karakter yapmak i�in
	printf("��RENC�N�N ADI NED�R :");
	scanf("%s",&isim);
	
		printf("��RENC�N�N SOYADI NED�R :");
		scanf("%s",&soyisim);
	getchar();
	
	puts("MEMLEKET NED�R  :");
	gets(memleket);
	
	printf("ogrenci %s %s %s dir.\n",isim,soyisim,memleket);
	
	printf("GELIR NEDIR :"); scanf("%d",&gelir);
	printf("geliriniz : %d\n",gelir);
	
	printf("x nedir :") ; scanf("%f",&x);
	printf("y nedir :") ; scanf("%lf",&y);
	printf("x : %.f , y : %.1f\n",x,y);
	
	
	
	printf("%.2f",sonuc);
	




	
	
	getch();//pascaldaki readln ayn�s�.
	//system("exit");//��kmak i�in kullan�l�r
 	//exit(0);  //��kmak i�in kullan�l�r.
	//system("pause");// sistemi durdurur.
	
}

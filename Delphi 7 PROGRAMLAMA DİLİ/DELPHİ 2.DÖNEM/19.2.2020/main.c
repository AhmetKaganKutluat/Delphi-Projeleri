#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <locale.h>//türkçe karakterler için kullanýlýr.

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
	
	setlocale(LC_ALL,"Turkish");//türkçe karakter yapmak için
	printf("ÖÐRENCÝNÝN ADI NEDÝR :");
	scanf("%s",&isim);
	
		printf("ÖÐRENCÝNÝN SOYADI NEDÝR :");
		scanf("%s",&soyisim);
	getchar();
	
	puts("MEMLEKET NEDÝR  :");
	gets(memleket);
	
	printf("ogrenci %s %s %s dir.\n",isim,soyisim,memleket);
	
	printf("GELIR NEDIR :"); scanf("%d",&gelir);
	printf("geliriniz : %d\n",gelir);
	
	printf("x nedir :") ; scanf("%f",&x);
	printf("y nedir :") ; scanf("%lf",&y);
	printf("x : %.f , y : %.1f\n",x,y);
	
	
	
	printf("%.2f",sonuc);
	




	
	
	getch();//pascaldaki readln aynýsý.
	//system("exit");//çýkmak için kullanýlýr
 	//exit(0);  //çýkmak için kullanýlýr.
	//system("pause");// sistemi durdurur.
	
}

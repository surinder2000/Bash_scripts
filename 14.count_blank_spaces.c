#include<stdio.h>
#include<stdlib.h>
int main(){
	FILE *fp;
	char filename[50];
	printf("\nEnter file name with absolute path:");
	scanf("%s",filename);
	fp=fopen(filename,"r");
	char ch;
	int count=0;
	while(1){
		ch=getc(fp);
		if(ch==' '){
			count++;
		}
		if(ch==EOF)
			break;
		printf("%c",ch);
	}
	printf("\nThe no. of blank spaces are:%d\n",count);
	fclose(fp);
	return 0;
}

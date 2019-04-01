#include<stdio.h>
#include<stdlib.h>
int main(){
	FILE *fp;
	char filename[50];
	printf("\nEnter file name with absolute path:");
	scanf("%s",filename);
	fp=fopen(filename,"r");
	char ch;
	int count_words=0,count_lines=0,count_char=0;
	while(1){
		ch=getc(fp);
		if(ch)
			count_char++;
			if(ch==' ' || ch=='\n')
				count_words++;
			if(ch=='\n')
				count_lines++;
		if(ch==EOF)
			break;
		printf("%c",ch);
	}
	printf("\nThe no. of characters:%d\n",count_char);
        printf("\nThe no. of words are:%d\n",count_words);
        printf("\nThe no. of lines are:%d\n",count_lines);
	fclose(fp);
	return 0;
}

#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<fcntl.h>
#include<sys/stat.h>
#define BUFFER_SIZE 1024
int main(){
  int fd1,fd2;
  int n;
  char buff[BUFFER_SIZE];
  char filename1[20],filename2[20];
  printf("Enter source filename:");
  scanf("%s",filename1);
  printf("Enter new/destination filename:");
  scanf("%s",filename2);
  fd1=open(filename1,O_RDONLY);
  fd2=open(filename2,O_WRONLY | O_CREAT | O_TRUNC,S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
  while((n=read(fd1,buff,BUFFER_SIZE))>0){
    write(fd2,buff,n);
  }
  close(fd1);
  close(fd2);
  return 0;
}

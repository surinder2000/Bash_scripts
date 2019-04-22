#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<fcntl.h>
#include<sys/stat.h>
#define BUFFER_SIZE 1024
int main(int argc,char *argv[]){
  int fd1,fd2;
  int n;
  char buff[BUFFER_SIZE];
    fd1=open(argv[1],O_RDONLY);
    fd2=open(argv[2],O_WRONLY | O_CREAT | O_TRUNC,S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
   while((n=read(fd1,buff,BUFFER_SIZE))>0){
   write(fd2,buff,n);
   }
  remove(argv[1]);
  close(fd1);
  close(fd2);
  return 0;
}

#include<fcntl.h>
#include<stdio.h>
#include<unistd.h>
#include<sys/stat.h>
#include<sys/types.h>
int main(){
  int fd1,size;
  char buf;
  char filename[20];
  printf("Enter filename:");
  scanf("%s",filename);
  fd1=open(filename,O_RDONLY);
  size=lseek(fd1,-1,SEEK_END);
  while(size-- >= 0){
    read(fd1,&buf,1);
     write(STDOUT_FILENO,&buf,1);
     lseek(fd1,-2,SEEK_CUR);
  }
  printf("\n");
  close(fd1);
  return 0;
  
}

#include<unistd.h>
#include<sys/types.h>
#include<fcntl.h>
#include<sys/stat.h>
#define BUFFER_SIZE 1024
int main(int argc,char *argv[]){
  int fd1;
  int n;
  char buff[BUFFER_SIZE];
  fd1=open(argv[1],O_RDONLY);
  while((n=read(fd1,buff,BUFFER_SIZE))>0){
    write(STDOUT_FILENO,buff,n);
  }
  close(fd1);
  return 0;
}

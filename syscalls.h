#include "fsconfig.h"

int my_sys_mknod(const char * path, file_type itype,  mode_t mode);
int my_sys_mkdir(const char * path, mode_t mode);
int my_sys_unlink(const char * path);
int my_sys_rmdir(const char * path);
int my_sys_mkroot();
uint64_t my_sys_open(const char* path, int flags, mode_t mode);
int my_sys_read(uint64_t fd, char *buf, size_t size, off_t offset);
int my_sys_write(uint64_t fd, const char *buf, size_t size, off_t offset);
int my_sys_access(const char* path, int mask);



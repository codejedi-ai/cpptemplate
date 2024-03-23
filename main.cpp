#include <string>
#include <cstring>
#include <limits.h>

#include <iostream>
// https://stackoverflow.com/questions/41628325/linux-c-what-does-the-s-ixxxx-permission-flags-s-and-i-actually-mean

#include <sys/stat.h>
#include <fcntl.h> /* Definition of AT_* constants */
#include <sys/stat.h>

extern "C" {    // another way
#include "foo.h"
};

int main()
{
    printf("Hello World, %d\n", f(1, 2));
    return 0;
}
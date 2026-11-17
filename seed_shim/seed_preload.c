#include <stdlib.h>
#include <time.h>
#include <unistd.h>

__attribute__((constructor)) static void seed_rand(void)
{
    srand(time(NULL) ^ getpid());
}

/* standart*/

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <math.h>
#include <float.h>
#include <limits.h>
#include <time.h>

/* define thinks*/

#define POOL_MAX 1500
#define POOL_MIN 10
#define CUBE 10 + 10 + 10 + 10 + 10 + 10
#define CUBE_2D 10 + 10 + 10 + 10
#define SIZE 1000
#define SOKOL_IMPL
#define SOKOL_GLCORE

/* librarys */
///////////
#include "raylib.h"
#include <SDL2/SDL.h>
#include "sokol_app.h"
#include "sokol_gfx.h"   /* Library for games*/
#include "sokol_glue.h"
#include <GLFW/glfw3.h>
//////////
#include <fcntl.h>
#include <linux/fb.h> /* low level*/
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <windows.h>
#include <unistd.h>
////////////
#include <unistd.h>
#include <pthread.h>
#include <sys/socket.h>
#include <netinet/in.h> /* POSIX, UNIX, MACOS, LINUX, FREEBSD*/
#include <sys/mman.h>
#include <ncurses.h>
#include <X11/Xlib.h>
#include <stdio.h>
//////////////
#include <stdio.h>
#include <gsl/gsl_integration.h> /* Lib for math*/
#include <cglm/cglm.h>
#include <gmp.h>
////////////

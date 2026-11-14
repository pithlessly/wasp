#include <virtine.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

virtine int vt_mul(int, int);

virtine int vt_square(int val) {
	return vt_mul(val, val);
}

int main(void) {
	printf("running smoke test. If this program does not panic, wasp works as expected.\n");
	int val = vt_square(3);
	printf("val=%d\n", val);
	assert(val == 9);
	printf("If you see this, it didn't panic!\n");
	return 0;
}

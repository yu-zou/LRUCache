#include "cache.h"
#include <hls_stream.h>
#include <iostream>

using namespace std;

int main() {
	data_t *dram;

	dram = (data_t*)malloc(1024 * sizeof(data_t));
	for (int i = 0; i < 1024; i++) {
		dram[i] = i;
	}

	data_t res;

	res = PLRUCache(0, 0xdeadbeaf, true, dram);
	cout << hex << res << endl;
	res = PLRUCache(2, 0xdeadbeaf, false, dram);
	cout << hex << res << endl;
	res = PLRUCache(0, 0xdeadbeaf, false, dram);
	cout << hex << res << endl;
	res = PLRUCache(16, 0xdeadbeaf, false, dram);
	cout << hex << res << endl;

	return 0;
}

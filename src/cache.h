#ifndef CACHE_H
#define CACHE_H

#include "ap_int.h"
#include <hls_stream.h>

#define ADDR_WIDTH		32
#define INDEX_WIDTH 	8
#define TAG_WIDTH 		(ADDR_WIDTH - INDEX_WIDTH)
#define NUM_WAYS 		8
#define NUM_INDICES 	(1 << INDEX_WIDTH)

typedef ap_uint<512> 	data_t;
typedef ap_uint<32> 	addr_t;

data_t PLRUCache(
		addr_t	i_addr,
		data_t	i_data,
		bool	i_op,

		data_t *dram);

#endif

#include "cache.h"
#include <hls_stream.h>

data_t ReadMiss(
		addr_t	i_addr,
		data_t	i_wdata,
		bool	i_op,

		data_t *dram,

		ap_uint<NUM_WAYS>	valid,
		ap_uint<TAG_WIDTH>	tag[NUM_WAYS],

		ap_uint<NUM_WAYS> 			validArray[NUM_INDICES],
		ap_uint<TAG_WIDTH> 			tagArray[NUM_INDICES][NUM_WAYS],
		ap_uint<512> 				dataArray[NUM_INDICES][NUM_WAYS],
		ap_uint<NUM_WAYS> 			mruArray[NUM_INDICES]){
#pragma HLS INLINE off
	ap_uint<INDEX_WIDTH> indexReg 	= i_addr(0, INDEX_WIDTH-1);
	ap_uint<TAG_WIDTH> tagReg 		= i_addr(INDEX_WIDTH, INDEX_WIDTH+TAG_WIDTH-1);

	//read mru
	ap_uint<NUM_WAYS> tempMru = mruArray[indexReg];

	//on read miss, find the way to evict
	int evictWay; bool isEvict;
	if (valid.and_reduce() == false) {
		for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
			if (valid(i, i) == false) {
				evictWay = i;
				isEvict = false;
				break;
			}
		}
	} else {
		for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
			if (tempMru(i, i) == false) {
				evictWay = i;
				isEvict = true;
				break;
			}
		}
	}

	//read data from DRAM
	data_t i_dramBlockR = dram[i_addr];

	//write back victim
	if (isEvict == true) {
		dram[(tag[evictWay], indexReg)] = dataArray[indexReg][evictWay];
	}

	//update cache
	tagArray[indexReg][evictWay] 				= tagReg;
	dataArray[indexReg][evictWay] 				= i_dramBlockR;
//	validArray[indexReg](evictWay, evictWay) 	= true;
	ap_uint<NUM_WAYS> tempValid = valid; tempValid(evictWay, evictWay) = true;
	validArray[indexReg] = tempValid;
	tempMru(evictWay, evictWay) 				= true;

	//update mru
	if (tempMru.and_reduce() == true) {
		for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
			tempMru(i, i) = (i == indexReg);
		}
		mruArray[indexReg] = tempMru;
	}

	return i_dramBlockR;
}

void WriteMiss(
		addr_t	i_addr,
		data_t	i_wdata,
		bool	i_op,

		data_t *dram,

		ap_uint<NUM_WAYS>	valid,
		ap_uint<TAG_WIDTH> 	tag[NUM_WAYS],

		ap_uint<NUM_WAYS> 			validArray[NUM_INDICES],
		ap_uint<TAG_WIDTH> 			tagArray[NUM_INDICES][NUM_WAYS],
		ap_uint<512> 				dataArray[NUM_INDICES][NUM_WAYS],
		ap_uint<NUM_WAYS> 			mruArray[NUM_INDICES]){
#pragma HLS INLINE off
	ap_uint<INDEX_WIDTH> indexReg 	= i_addr(0, INDEX_WIDTH-1);
	ap_uint<TAG_WIDTH> tagReg 		= i_addr(INDEX_WIDTH, INDEX_WIDTH+TAG_WIDTH-1);

	//read mru
	ap_uint<NUM_WAYS> tempMru = mruArray[indexReg];

	//on write miss, find the way to evict
	int evictWay; bool isEvict;
	if (valid.and_reduce() == false) {
		for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
			if (valid(i, i) == false) {
				evictWay = i;
				isEvict = false;
				break;
			}
		}
	} else {
		for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
			if (tempMru(i, i) == false) {
				evictWay = i;
				isEvict = true;
				break;
			}
		}
	}

	//write back victim
	if (isEvict == true) {
		dram[(tag[evictWay], indexReg)] = dataArray[indexReg][evictWay];
	}

	//write cache
	tagArray[indexReg][evictWay] 				= tagReg;
	dataArray[indexReg][evictWay] 				= i_wdata;
//	validArray[indexReg](evictWay, evictWay) 	= true;
	ap_uint<NUM_WAYS> tempValid = valid; tempValid(evictWay, evictWay) = true;
	validArray[indexReg] = tempValid;
	tempMru(evictWay, evictWay) 				= true;

	//update mru
	if (tempMru.and_reduce() == true) {
		for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
			tempMru(i, i) = (i == indexReg);
		}
		mruArray[indexReg] = tempMru;
	}
}

void WriteHit(
		addr_t	i_addr,
		data_t	i_wdata,
		bool	i_op,

		data_t *dram,

		ap_uint<NUM_WAYS>	valid,
		ap_uint<TAG_WIDTH>	tag[NUM_WAYS],

		ap_uint<NUM_WAYS> 			validArray[NUM_INDICES],
		ap_uint<TAG_WIDTH> 			tagArray[NUM_INDICES][NUM_WAYS],
		ap_uint<512> 				dataArray[NUM_INDICES][NUM_WAYS],
		ap_uint<NUM_WAYS> 			mruArray[NUM_INDICES]){
#pragma HLS INLINE off
	ap_uint<INDEX_WIDTH> indexReg 	= i_addr(0, INDEX_WIDTH-1);
	ap_uint<TAG_WIDTH> tagReg 		= i_addr(INDEX_WIDTH, INDEX_WIDTH+TAG_WIDTH-1);

	//read mru
	ap_uint<NUM_WAYS> tempMru = mruArray[indexReg];

	//on write hit, find the way to update
	int evictWay;
	for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
		if (valid(i, i) == true && tag[i] == tagReg) {
			evictWay = i;
			break;
		}
	}

	//write cache
	//no need to update tagArray
//	tagArray[indexReg][evictWay] 				= tagReg;
	dataArray[indexReg][evictWay] 				= i_wdata;
	//no need to update validArray
//	validArray[indexReg](evictWay, evictWay) 	= true;
	tempMru(evictWay, evictWay) 				= true;

	//update mru
	if (tempMru.and_reduce() == true) {
		for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
			tempMru(i, i) = (i == indexReg);
		}
		mruArray[indexReg] = tempMru;
	}
}

data_t ReadHit(
		addr_t 	i_addr,
		data_t 	i_wdata,
		bool	i_op,

		data_t *dram,

		ap_uint<NUM_WAYS>	valid,
		ap_uint<TAG_WIDTH>	tag[NUM_WAYS],

		ap_uint<NUM_WAYS> 			validArray[NUM_INDICES],
		ap_uint<TAG_WIDTH> 			tagArray[NUM_INDICES][NUM_WAYS],
		ap_uint<512> 				dataArray[NUM_INDICES][NUM_WAYS],
		ap_uint<NUM_WAYS> 			mruArray[NUM_INDICES]){
#pragma HLS INLINE off
	ap_uint<INDEX_WIDTH> indexReg 	= i_addr(0, INDEX_WIDTH-1);
	ap_uint<TAG_WIDTH> tagReg 		= i_addr(INDEX_WIDTH, INDEX_WIDTH+TAG_WIDTH-1);

	//read mru
	ap_uint<NUM_WAYS> tempMru = mruArray[indexReg];

	//on read hit, find the way to update
	int evictWay;
	for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
		if (valid(i, i) == true && tag[i] == tagReg) {
			evictWay = i;
			break;
		}
	}

	//read cache
	data_t res = dataArray[indexReg][evictWay];

	//update mru
	if (tempMru.and_reduce() == true) {
		for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
			tempMru(i, i) = (i == indexReg);
		}
		mruArray[indexReg] = tempMru;
	}

	return res;
}

data_t PLRUCache(
		addr_t 	i_addr,
		data_t	i_wdata,
		bool 	i_op,

		data_t *dram) {
#pragma HLS INTERFACE m_axi depth=100 port=dram offset=direct bundle=dram
	static ap_uint<NUM_WAYS> 			validArray[NUM_INDICES] = {0};
	static ap_uint<TAG_WIDTH> 			tagArray[NUM_INDICES][NUM_WAYS] = {0};
#pragma HLS ARRAY_PARTITION variable=tagArray complete dim=2
	static ap_uint<512> 				dataArray[NUM_INDICES][NUM_WAYS] = {0};
#pragma HLS ARRAY_PARTITION variable=dataArray complete dim=2
	static ap_uint<NUM_WAYS> 			mruArray[NUM_INDICES] = {0};

	ap_uint<NUM_WAYS> valid;
	ap_uint<TAG_WIDTH> tag[NUM_WAYS];
#pragma HLS ARRAY_PARTITION variable=tag complete dim=0

	for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
		valid(i, i) = validArray[i_addr(0, INDEX_WIDTH-1)](i, i);
		tag[i] = tagArray[i_addr(0, INDEX_WIDTH-1)][i];
	}

	ap_uint<NUM_WAYS> isHit = false;
	for (int i = 0; i < NUM_WAYS; i++) {
#pragma HLS UNROLL
		isHit(i, i) = valid(i, i) && tag[i] == i_addr(INDEX_WIDTH, INDEX_WIDTH+TAG_WIDTH-1);
	}

	data_t res = 0;

	if (isHit.or_reduce() && i_op == false) {
		//read hit
		res = ReadHit(i_addr, i_wdata, i_op, dram, valid, tag, validArray, tagArray, dataArray, mruArray);
	} else if (isHit.or_reduce() && i_op == true) {
		//write hit
		WriteHit(i_addr, i_wdata, i_op, dram, valid, tag, validArray, tagArray, dataArray, mruArray);
	} else if ((~isHit.or_reduce()) && i_op == false) {
		//read miss
		res = ReadMiss(i_addr, i_wdata, i_op, dram, valid, tag, validArray, tagArray, dataArray, mruArray);
	} else if ((~isHit.or_reduce()) && i_op == true) {
		//write miss
		WriteMiss(i_addr, i_wdata, i_op, dram, valid, tag, validArray, tagArray, dataArray, mruArray);
	}

	return res;
}

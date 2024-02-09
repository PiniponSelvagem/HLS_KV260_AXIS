#include "hls_stream.h"
#include <ap_axi_sdata.h>
#include <ap_int.h>

#define STRM_SIZE	64
typedef ap_axis<STRM_SIZE, 0, 0, 0> in_pkt;
typedef ap_axis<STRM_SIZE, 0, 0, 0> out_pkt;

typedef ap_uint<STRM_SIZE/2> value_t;

#define SIZE		2
#define ARRAY_SIZE	SIZE*2

hls::stream<in_pkt> strm_in;
hls::stream<out_pkt> strm_out;

void axis(
	hls::stream<in_pkt> &strm_in,
	hls::stream<out_pkt> &strm_out
);

void write(value_t* input) {
	in_pkt tmp;
	for (int i=0, r=0; r < SIZE; ++r) {
		tmp.data.range(STRM_SIZE/2-1, 0)         = input[i++].range(STRM_SIZE/2-1, 0);
		tmp.data.range(STRM_SIZE-1, STRM_SIZE/2) = input[i++].range(STRM_SIZE/2-1, 0);
		if (r+1 >= SIZE)
			tmp.last = 1;
		else
			tmp.last = 0;
		strm_in.write(tmp);
	}
	printf("\n");
}
void read(value_t* output) {
	out_pkt tmpo;
	for (int i=0, r=0; r < SIZE; ++r) {
		tmpo = strm_out.read();
		output[i++].range(STRM_SIZE/2-1, 0) = tmpo.data.range(STRM_SIZE/2-1, 0);
		output[i++].range(STRM_SIZE/2-1, 0) = tmpo.data.range(STRM_SIZE-1, STRM_SIZE/2);
	}
}

int main() {
	value_t input[ARRAY_SIZE] = { 1,3, 5,7 };
	value_t output[ARRAY_SIZE];

	for (int i = 0; i < ARRAY_SIZE; ++i) {
		printf("input[%d] = %x\n", i, input[i]);
	}

	write(input);
	axis(strm_in, strm_out);
	read(output);

	for (int i = 0; i < ARRAY_SIZE; ++i) {
		printf("output[%d] = %x\n", i, output[i]);
	}

	return 0;
}

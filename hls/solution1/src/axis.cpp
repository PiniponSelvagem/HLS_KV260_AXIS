#include <ap_int.h>
#include <ap_fixed.h>
#include <ap_axi_sdata.h>
#include "hls_stream.h"

#define STRM_SIZE	64
typedef ap_axis<STRM_SIZE, 0, 0, 0> in_pkt;
typedef ap_axis<STRM_SIZE, 0, 0, 0> out_pkt;

typedef ap_uint<STRM_SIZE/2> value_t;

#define SIZE		2
#define ARRAY_SIZE	SIZE*2
value_t input[ARRAY_SIZE];
value_t output[ARRAY_SIZE];

void axis(
	hls::stream<in_pkt> &strm_in,
	hls::stream<out_pkt> &strm_out
) {
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=strm_in
#pragma HLS INTERFACE axis port=strm_out

    in_pkt tmp;
    out_pkt tmpo;

    READ_IN: for (int i=0, r=0; r < SIZE; ++r) {
		tmp = strm_in.read();
		input[i++].range(STRM_SIZE/2-1, 0) = (int)tmp.data.range(STRM_SIZE/2-1, 0);
		input[i++].range(STRM_SIZE/2-1, 0) = (int)tmp.data.range(STRM_SIZE-1, STRM_SIZE/2);
	}

    PROCESS_DATA: for (int i = 0; i < ARRAY_SIZE; ++i) {
    	output[i] = input[i]+1;
    }

    WRITE_OUT: for (int i=0, r=0; r < SIZE; ++r) {
		tmpo.data.range(STRM_SIZE/2-1, 0)         = output[i++].range(STRM_SIZE/2-1, 0);
		tmpo.data.range(STRM_SIZE-1, STRM_SIZE/2) = output[i++].range(STRM_SIZE/2-1, 0);
		if (r+1 >= SIZE)
			tmpo.last = 1;
		else
			tmpo.last = 0;
		strm_out.write(tmpo);
    }
}

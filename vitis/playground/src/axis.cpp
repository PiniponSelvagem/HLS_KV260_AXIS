#include <stdio.h>
#include <stdlib.h>
#include "xaxidma.h"
#include "xparameters.h"

#define DMA_DEV_ID_STREAM	XPAR_AXIDMA_0_DEVICE_ID
XAxiDma AxiDma;

#define ARRAY_SIZE				4

#define INPUT_SIZE_IN_BYTES		(ARRAY_SIZE*4)
#define OUTPUT_SIZE_IN_BYTES	(ARRAY_SIZE*4)

#define RX_ADDR	0x10000000
#define TX_ADDR 0x20000000

void HW_stream(unsigned int *input, unsigned int *output) {
	printf("START: HW_stream\r\n");

	int status;
	unsigned int *rxBufferPtr = (unsigned int*)RX_ADDR;
	unsigned int *txBufferPtr = (unsigned int*)TX_ADDR;


	/* receive OUTPUT */
	// configure receive before core starts working
	//rxBufferPtr = (unsigned int*)output;
	status = XAxiDma_SimpleTransfer(&AxiDma,(UINTPTR)rxBufferPtr, OUTPUT_SIZE_IN_BYTES, XAXIDMA_DEVICE_TO_DMA);
	if (status != XST_SUCCESS) {
		printf("Error: %d | Failed sending: output\n", status);
		return;
	}

	/* send INPUT */
	//utxBufferPtr = (unsigned int*)input;
	status = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)txBufferPtr, INPUT_SIZE_IN_BYTES, XAXIDMA_DMA_TO_DEVICE);
	if (status != XST_SUCCESS) {
		printf("Error: %d | Failed sending: input\n", status);
		return;
	}

	printf("Wait for Tx...\r\n");
	while (XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE)) { /* Wait for Tx*/ }	// TODO: Locking here

	printf("Wait for Rx...\r\n");
	while (XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) { /* Wait for Rx*/	}


	Xil_DCacheInvalidateRange((INTPTR)(output), (unsigned)(OUTPUT_SIZE_IN_BYTES));

	/* return the received OUTPUT */
	/*
	for (int i=0; i < 4; ++i) {
		output[i] = fixed2float((signed char)(output[i] & 0x000000FF), 6);
	}
	*/
	printf("END: HW_stream\r\n");
}


// Initialize DMA stream device
int init_XAxiDma_stream_SimplePollMode(u16 deviceID) {
	XAxiDma_Config* cfgPtr;
	int status;

	cfgPtr = XAxiDma_LookupConfig(deviceID);
	if (!cfgPtr) {
		printf("No config found for device %d\r\n", deviceID);
		return XST_FAILURE;
	}

	status = XAxiDma_CfgInitialize(&AxiDma, cfgPtr);
	if (status != XST_SUCCESS) {
		printf("Initialization failed with status %d\r\n", status);
		return XST_FAILURE;
	}

	if (XAxiDma_HasSg(&AxiDma)) {
		/**
		 * 1st test - it entered here.
		 * In vivado disable in the DMA: "Enable Scatter Gather Engine"
		 */
		printf("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}

	/* Disable interrupts, we use polling mode	 */
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

	return XST_SUCCESS;
}

int main() {
	int status;
	status = init_XAxiDma_stream_SimplePollMode(DMA_DEV_ID_STREAM);
	if (status != XST_SUCCESS) {
		printf("init_XAxiDma_stream_SimplePollMode: Failed\r\n");
		return XST_FAILURE;
	}

	unsigned int input[ARRAY_SIZE] = {1,3, 5,7};
	unsigned int output[ARRAY_SIZE];

	HW_stream(input, output);

	for (int i = 0; i < ARRAY_SIZE; ++i) {
		printf("output[%d] = %d\r\n", i, output[i]);
	}

	return 0;
}

#include <stdio.h>
#include <stdlib.h>
#include "cuda_runtime.h"
#include "device_launch_parameters.h"

__global__ void hello_kernel()
{
	printf("Hello World from Thread %d\n", threadIdx.x);
}


int main(int argc, char *argv[])
{

	//set the CUDA device to the default CUDA GPU (device 0)
	cudaError result = cudaSetDevice(0);
	if (result != cudaSuccess ){
		printf("Error setting default GPU device.\n");
	}
	
	//call a CUDA kernel
	dim3 blocksPerGrid(1, 1, 1);
	dim3 threadsPerBlock(10, 1, 1);
	hello_kernel<<<blocksPerGrid, threadsPerBlock>>>();
	
	//synchronise
	cudaDeviceSynchronize();
	
	return 0;
}
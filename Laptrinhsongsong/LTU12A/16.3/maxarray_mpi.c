/*Viet CT MPI tim tong , max cua mot mang N phan tu
1. Khai bao N=20 NP=5 A[N] 
	Khoi tao mang A *(A+)=i^2 -5*i +10
2. Chia mien
3. Phan tan du lieu
4. Tim tong ,max
	- Cac CPU tim NP tong con gui ve CPU0 de tinh tong toan bo
	- Cac CPU tim max cuc bo, gui ve CPU0 gan thanh mang moi co NP phan tu
	Tim max toan cuc tren mang moi nay 
5. In ra tong max*/
#include <stdio.h>
#include <stdlib.h>
#include <mpi.h>
#include <malloc.h>

#define N 20

int main(int argc,char **argv){
	int NP,*A,i, max, rank, Mc;
	int tong =0;

	MPI_Init(&argc,&argv );
	MPI_Comm_size(MPI_COMM_WORLD,&NP);
	MPI_Comm_rank(MPI_COMM_WORLD,&rank);
	MPI_Status thongbao;
	int *Ac;
	Mc = N/NP;

	Ac = (int *)malloc(Mc*sizeof(int));
	A = (int *)malloc(N*sizeof(int));

	//phan tan du lieu

	MPI_Scatter(A,Mc,MPI_INT,Ac,Mc,MPI_INT,0, MPI_COMM_WORLD);


	for(int i =0;i<N;i++){
		*(A+i) = (-(i*i)-5*i +10);
		tong += *(A+i);
	}
	// MPI_Send(Ac,1,MPI_INT,0,rank,MPI_COMM_WORLD);
	max = *(A+0);
	for(int i=0;i<N;i++){
		if(*(A+i)>max) max = *(A+i);
	}





	printf("tong: %d\n" , tong);
	printf("max: %d\n" , max);
	return 0;
}
#!/bin/bash
#SBATCH --job-name=gpu_performance
#SBATCH --partition=tupi
#SBATCH --nodelist=tupi3
#SBATCH --time=06:00:00  
#SBATCH --output=tupi3_gpu_performance.ou
#SBATCH --error=tupi3_gpu_performance.err
cd cmp270
. set_env.sh
make
HOSTNAME=$(hostname)
echo 'NCPU,NGPU,N,NB,t' > experiments/tupi3_gpu_performance_1.csv
echo 'Test 3/7 with block size 1024' && 	    	  ./main 24 1 65536 1024 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 2/7 with block size 1024' && 	    	  ./main 24 1 65536 1024 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 1/7 with block size 256' && 	    	  ./main 24 1 65536 256 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 1/7 with block size 2048' && 	    	  ./main 32 1 65536 2048 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 5/7 with block size 2048' && 	    	  ./main 32 1 65536 2048 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 4/7 with block size 4096' && 	    	  ./main 24 1 65536 4096 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 5/7 with block size 512' && 	    	  ./main 32 1 65536 512 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 4/7 with block size 4096' && 	    	  ./main 32 1 65536 4096 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 3/7 with block size 512' && 	    	  ./main 32 1 65536 512 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 7/7 with block size 128' && 	    	  ./main 32 1 65536 128 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 3/7 with block size 4096' && 	    	  ./main 32 1 65536 4096 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 5/7 with block size 1024' && 	    	  ./main 32 1 65536 1024 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 1/7 with block size 256' && 	    	  ./main 32 1 65536 256 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 5/7 with block size 128' && 	    	  ./main 32 1 65536 128 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 7/7 with block size 256' && 	    	  ./main 24 1 65536 256 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 2/7 with block size 128' && 	    	  ./main 24 1 65536 128 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 2/7 with block size 1024' && 	    	  ./main 32 1 65536 1024 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 2/7 with block size 4096' && 	    	  ./main 24 1 65536 4096 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 2/7 with block size 512' && 	    	  ./main 32 1 65536 512 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 7/7 with block size 4096' && 	    	  ./main 24 1 65536 4096 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 4/7 with block size 1024' && 	    	  ./main 32 1 65536 1024 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 7/7 with block size 512' && 	    	  ./main 24 1 65536 512 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 2/7 with block size 2048' && 	    	  ./main 24 1 65536 2048 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 1/7 with block size 1024' && 	    	  ./main 24 1 65536 1024 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 4/7 with block size 256' && 	    	  ./main 32 1 65536 256 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 2/7 with block size 4096' && 	    	  ./main 32 1 65536 4096 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 5/7 with block size 2048' && 	    	  ./main 24 1 65536 2048 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 2/7 with block size 2048' && 	    	  ./main 32 1 65536 2048 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 3/7 with block size 256' && 	    	  ./main 24 1 65536 256 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 1/7 with block size 128' && 	    	  ./main 32 1 65536 128 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 7/7 with block size 1024' && 	    	  ./main 24 1 65536 1024 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 7/7 with block size 512' && 	    	  ./main 32 1 65536 512 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 5/7 with block size 4096' && 	    	  ./main 24 1 65536 4096 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 6/7 with block size 128' && 	    	  ./main 32 1 65536 128 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 6/7 with block size 2048' && 	    	  ./main 24 1 65536 2048 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 1/7 with block size 2048' && 	    	  ./main 24 1 65536 2048 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 7/7 with block size 128' && 	    	  ./main 24 1 65536 128 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 6/7 with block size 4096' && 	    	  ./main 32 1 65536 4096 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 7/7 with block size 256' && 	    	  ./main 32 1 65536 256 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 1/7 with block size 1024' && 	    	  ./main 32 1 65536 1024 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 4/7 with block size 512' && 	    	  ./main 24 1 65536 512 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 1/7 with block size 128' && 	    	  ./main 24 1 65536 128 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 2/7 with block size 512' && 	    	  ./main 24 1 65536 512 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 2/7 with block size 256' && 	    	  ./main 24 1 65536 256 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 3/7 with block size 4096' && 	    	  ./main 24 1 65536 4096 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 5/7 with block size 256' && 	    	  ./main 24 1 65536 256 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 4/7 with block size 1024' && 	    	  ./main 24 1 65536 1024 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 4/7 with block size 128' && 	    	  ./main 32 1 65536 128 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 5/7 with block size 256' && 	    	  ./main 32 1 65536 256 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 5/7 with block size 4096' && 	    	  ./main 32 1 65536 4096 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 3/7 with block size 2048' && 	    	  ./main 24 1 65536 2048 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 1/7 with block size 512' && 	    	  ./main 32 1 65536 512 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 1/7 with block size 512' && 	    	  ./main 24 1 65536 512 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 2/7 with block size 256' && 	    	  ./main 32 1 65536 256 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 3/7 with block size 128' && 	    	  ./main 24 1 65536 128 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 6/7 with block size 2048' && 	    	  ./main 32 1 65536 2048 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 5/7 with block size 1024' && 	    	  ./main 24 1 65536 1024 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 4/7 with block size 128' && 	    	  ./main 24 1 65536 128 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 3/7 with block size 128' && 	    	  ./main 32 1 65536 128 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 6/7 with block size 1024' && 	    	  ./main 32 1 65536 1024 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 6/7 with block size 256' && 	    	  ./main 24 1 65536 256 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 7/7 with block size 1024' && 	    	  ./main 32 1 65536 1024 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 6/7 with block size 512' && 	    	  ./main 24 1 65536 512 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 4/7 with block size 256' && 	    	  ./main 24 1 65536 256 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 3/7 with block size 512' && 	    	  ./main 24 1 65536 512 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 3/7 with block size 2048' && 	    	  ./main 32 1 65536 2048 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 6/7 with block size 256' && 	    	  ./main 32 1 65536 256 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 5/7 with block size 128' && 	    	  ./main 24 1 65536 128 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 6/7 with block size 4096' && 	    	  ./main 24 1 65536 4096 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 6/7 with block size 128' && 	    	  ./main 24 1 65536 128 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 4/7 with block size 2048' && 	    	  ./main 24 1 65536 2048 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 5/7 with block size 512' && 	    	  ./main 24 1 65536 512 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 1/7 with block size 4096' && 	    	  ./main 24 1 65536 4096 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 2/7 with block size 128' && 	    	  ./main 32 1 65536 128 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 7/7 with block size 4096' && 	    	  ./main 32 1 65536 4096 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 6/7 with block size 512' && 	    	  ./main 32 1 65536 512 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 3/7 with block size 1024' && 	    	  ./main 32 1 65536 1024 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 6/7 with block size 1024' && 	    	  ./main 24 1 65536 1024 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 1/7 with block size 4096' && 	    	  ./main 32 1 65536 4096 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 3/7 with block size 256' && 	    	  ./main 32 1 65536 256 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 7/7 with block size 2048' && 	    	  ./main 32 1 65536 2048 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 4/7 with block size 512' && 	    	  ./main 32 1 65536 512 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 4/7 with block size 2048' && 	    	  ./main 32 1 65536 2048 >> experiments/tupi3_gpu_performance_1.csv
echo 'Test 7/7 with block size 2048' && 	    	  ./main 24 1 65536 2048 >> experiments/tupi3_gpu_performance_1.csv

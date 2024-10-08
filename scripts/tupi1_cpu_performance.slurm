#!/bin/bash
#SBATCH --job-name=cpu_performance
#SBATCH --partition=tupi
#SBATCH --nodelist=tupi1
#SBATCH --time=05:00:00  
#SBATCH --output=tupi1_cpu_performance.ou
#SBATCH --error=tupi1_cpu_performance.err
cd cmp270
. set_env.sh
make
HOSTNAME=$(hostname)
echo 'NCPU,NGPU,N,NB,t' > experiments/tupi1_cpu_performance_1.csv
echo 'Test 3/5 with block size 128' && 	    	  ./main 16 0 65536 128 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 1/5 with block size 1024' && 	    	  ./main 8 0 65536 1024 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 5/5 with block size 512' && 	    	  ./main 8 0 65536 512 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 2/5 with block size 2048' && 	    	  ./main 8 0 65536 2048 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 3/5 with block size 2048' && 	    	  ./main 8 0 65536 2048 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 3/5 with block size 128' && 	    	  ./main 8 0 65536 128 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 1/5 with block size 128' && 	    	  ./main 8 0 65536 128 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 2/5 with block size 4096' && 	    	  ./main 8 0 65536 4096 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 2/5 with block size 2048' && 	    	  ./main 16 0 65536 2048 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 3/5 with block size 1024' && 	    	  ./main 16 0 65536 1024 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 1/5 with block size 512' && 	    	  ./main 16 0 65536 512 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 2/5 with block size 512' && 	    	  ./main 16 0 65536 512 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 4/5 with block size 1024' && 	    	  ./main 16 0 65536 1024 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 4/5 with block size 1024' && 	    	  ./main 8 0 65536 1024 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 1/5 with block size 2048' && 	    	  ./main 16 0 65536 2048 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 4/5 with block size 256' && 	    	  ./main 8 0 65536 256 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 1/5 with block size 4096' && 	    	  ./main 8 0 65536 4096 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 2/5 with block size 1024' && 	    	  ./main 16 0 65536 1024 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 3/5 with block size 512' && 	    	  ./main 8 0 65536 512 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 5/5 with block size 512' && 	    	  ./main 16 0 65536 512 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 1/5 with block size 512' && 	    	  ./main 8 0 65536 512 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 3/5 with block size 4096' && 	    	  ./main 16 0 65536 4096 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 4/5 with block size 4096' && 	    	  ./main 8 0 65536 4096 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 3/5 with block size 1024' && 	    	  ./main 8 0 65536 1024 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 5/5 with block size 4096' && 	    	  ./main 16 0 65536 4096 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 3/5 with block size 256' && 	    	  ./main 16 0 65536 256 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 1/5 with block size 256' && 	    	  ./main 16 0 65536 256 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 5/5 with block size 256' && 	    	  ./main 16 0 65536 256 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 2/5 with block size 256' && 	    	  ./main 16 0 65536 256 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 5/5 with block size 1024' && 	    	  ./main 16 0 65536 1024 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 1/5 with block size 2048' && 	    	  ./main 8 0 65536 2048 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 1/5 with block size 4096' && 	    	  ./main 16 0 65536 4096 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 2/5 with block size 256' && 	    	  ./main 8 0 65536 256 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 5/5 with block size 4096' && 	    	  ./main 8 0 65536 4096 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 2/5 with block size 128' && 	    	  ./main 16 0 65536 128 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 5/5 with block size 1024' && 	    	  ./main 8 0 65536 1024 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 3/5 with block size 256' && 	    	  ./main 8 0 65536 256 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 3/5 with block size 4096' && 	    	  ./main 8 0 65536 4096 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 2/5 with block size 4096' && 	    	  ./main 16 0 65536 4096 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 2/5 with block size 128' && 	    	  ./main 8 0 65536 128 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 4/5 with block size 128' && 	    	  ./main 8 0 65536 128 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 4/5 with block size 4096' && 	    	  ./main 16 0 65536 4096 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 4/5 with block size 128' && 	    	  ./main 16 0 65536 128 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 5/5 with block size 2048' && 	    	  ./main 8 0 65536 2048 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 5/5 with block size 128' && 	    	  ./main 16 0 65536 128 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 1/5 with block size 1024' && 	    	  ./main 16 0 65536 1024 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 4/5 with block size 512' && 	    	  ./main 8 0 65536 512 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 4/5 with block size 512' && 	    	  ./main 16 0 65536 512 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 5/5 with block size 128' && 	    	  ./main 8 0 65536 128 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 1/5 with block size 128' && 	    	  ./main 16 0 65536 128 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 4/5 with block size 256' && 	    	  ./main 16 0 65536 256 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 3/5 with block size 512' && 	    	  ./main 16 0 65536 512 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 5/5 with block size 256' && 	    	  ./main 8 0 65536 256 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 5/5 with block size 2048' && 	    	  ./main 16 0 65536 2048 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 4/5 with block size 2048' && 	    	  ./main 16 0 65536 2048 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 2/5 with block size 1024' && 	    	  ./main 8 0 65536 1024 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 2/5 with block size 512' && 	    	  ./main 8 0 65536 512 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 1/5 with block size 256' && 	    	  ./main 8 0 65536 256 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 4/5 with block size 2048' && 	    	  ./main 8 0 65536 2048 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 3/5 with block size 2048' && 	    	  ./main 16 0 65536 2048 >> experiments/tupi1_cpu_performance_1.csv

#!/bin/bash
SBATCH --job-name=cpu_performance
SBATCH --partition=tupi
SBATCH -w=tupi1
SBATCH --time=02:00:00  
SBATCH --output=tupi1_cpu_performance.ou
SBATCH --error=tupi1_cpu_performance.err
HOSTNAME=$(hostname)
echo 'NCPU,NGPU,N,NB,t' > experiments/tupi1_cpu_performance_1.csv
echo 'Test 3/5 with block size 64' && 	    	  ./main 8 0 65536 64 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 5/5 with block size 64' && 	    	  ./main 8 0 65536 64 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 1/5 with block size 64' && 	    	  ./main 8 0 65536 64 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 4/5 with block size 64' && 	    	  ./main 8 0 65536 64 >> experiments/tupi1_cpu_performance_1.csv
echo 'Test 2/5 with block size 64' && 	    	  ./main 8 0 65536 64 >> experiments/tupi1_cpu_performance_1.csv

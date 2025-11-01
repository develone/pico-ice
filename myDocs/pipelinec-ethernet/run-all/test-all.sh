#!/bin/bash
date > test.logs
txbytes=0
rxbytes=0
mycat=0

#need to program the catboard since it is not programmed after power-up.

if [ mycat ] ; then
	sudo config_cat gateware.bin
fi
date 
for (( i=0; i<5; i++ )); do
  
	echo "a0:b1:c2:d3:e4:f5" >> test.logs
	sudo ./work_test-a0 >>  test.logs
	((txbytes+=8))
	echo  "$txytes : $txbytes " >> test.logs
	((rxbytes+=4))  
	echo  "$rxytes : $rxbytes " >> test.logs
	echo "a7:b1:c2:d3:e4:f5" >> test.logs
	sudo ./work_test-a7 >>  test.logs
	echo "a8:b1:c2:d3:e4:f5" >> test.logs
	sudo ./work_test-a8 >>  test.logs
	echo "a9:b1:c2:d3:e4:f5" >> test.logs
	sudo ./work_test-a9 >>  test.logs

  echo "Iteration number: $i" >> test.logs
done
	echo  "txytes : $txbytes " >> test.logs
	echo  "txytes : $txbytes " 
	echo  "rxytes : $rxbytes " >> test.logs
	echo  "rxytes : $rxbytes " 
date

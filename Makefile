#############################Makefile################################## 
# $(shell pwd) would invoke a shell to execute pwd command to get current folder path 
MODULE_DIR := $(shell pwd)     
KERNEL_DIR := /root/root/LINUX/mini6410/linux-2.6.38
obj-m += leddriver.o

module:
	make -C $(KERNEL_DIR) M=$(MODULE_DIR) modules
clean:
	rm *.mod.c *.o *.ko


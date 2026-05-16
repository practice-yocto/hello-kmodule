# Makefile for hello-kmodule

# This Makefile is used to build the hello-kmodule kernel module.
# It assumes that the kernel source is located at $(KERNEL_SRC) and
# that the current directory contains the source code for the module.
obj-m := hello-kmodule.o
SRC := $(shell pwd)

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules

modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install

clean:
	rm -rf *.o
	rm -rf Module.makers Modules.symvers modules.order
	rm -rf .tmp_versions Modules.symvers
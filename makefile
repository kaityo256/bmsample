#------------------------------------------------------
# Makefile for C/C++ Program
#------------------------------------------------------


TARGET=bm

LIB=
INC=

#------------------------------------------------------
# Default Parameters
#------------------------------------------------------

CC=g++
OPT=

#------------------------------------------------------
# Compile Option
#------------------------------------------------------

-include makefile.opt

#------------------------------------------------------
# Definition
#------------------------------------------------------

.SUFFIXES: .c .cc .h. .o

#---
# Source Files
#---

SRC=$(shell ls *.cc)
HED=$(shell ls *.h)
OBJ=$(SRC:.cc=.o)

#------------------------------------------------------
# rules
#------------------------------------------------------

all: $(TARGET)
$(TARGET): $(OBJ)
	$(CC) $(OPT) -o $(TARGET) $(OBJ) $(LIB)

.c.o:
	$(CC) $(OPT) -c $< $(MPI)
.cc.o:
	$(CC) $(OPT) -c $< $(MPI)

dep:
	g++ -MM -MG $(SRC) >makefile.depend

clean:
	rm -f $(TARGET) $(TARGET).exe *.o 

tar:
	tar cvzf $(TARGET).tar.gz $(SRC) $(HED) makefile makefile.depend

#--------------------------------------------------
-include makefile.depend

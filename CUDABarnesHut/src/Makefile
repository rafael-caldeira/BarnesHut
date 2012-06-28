
RM= rm -f 


default: all

all: BarnesHut

BarnesHut: BarnesHut.cu
	nvcc $^ -arch sm_20 -o $@

clean:
	$(RM) BarnesHut

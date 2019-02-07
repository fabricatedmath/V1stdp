all: build

build: stdp

stdp: stdp.cpp
	g++ -I include/ -I eigen-git-mirror/ -O3 -std=c++14 stdp.cpp -o stdp

run: build
	rm -f data/*
	./stdp learn

clean:
	rm stdp
	rm data/*

all: build

build: stdp

stdp: stdp.cpp
	g++ -I eigen-git-mirror/ -O3 -std=c++11 stdp.cpp -o stdp

run: build
	rm -f data/*
	./stdp learn

clean:
	rm stdp
	rm data/*

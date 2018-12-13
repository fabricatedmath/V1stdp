all: build

build: stdp

run:
	g++ -I eigen-git-mirror/ -O3 -std=c++11 stdp.cpp -o stdp
	./stdp learn

clean:
	rm stdp
	rm data/*

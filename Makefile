all: build

build: stdp

stdp: stdp.cpp
	g++ -Iinclude/ -Ieigen-git-mirror/ -O3 -std=c++14 stdp.cpp -o stdp -lboost_serialization

run: build
	rm -f data/*
	./stdp learn

clean:
	rm stdp
	rm data/*

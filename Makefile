all: rssi

rssi: rssi.c
	gcc -Wall -O -o rssi rssi.c -lbluetooth

clean:
	rm -f rssi

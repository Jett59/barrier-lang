all:
	echo please specify windows/osx/linux

windows: gc_windows.lib barrier.exe
osx: gc_osx.a barrier.app
linux: gc_linux.a barrier.out

gc_windows.lib:
	wget https://github.com/Jett59/garbage-collector/releases/download/0.0.1/gc_windows.lib
gc_osx.a:
	wget https://github.com/Jett59/garbage-collector/releases/download/0.0.1/gc_osx.a
gc_linux.a:
	wget https://github.com/Jett59/garbage-collector/releases/download/0.0.1/gc_linux.a

barrier.exe:
	rm -f *.exe
	gcc -o barrier.exe gc_windows.lib *.c
barrier.app:
	rm -f *.app
	gcc -o barrier.app gc_osx.a *.c
barrier.out:
	rm -f *.out
	gcc -o barrier.out gc_linux.a *.c

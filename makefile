# Generated with github.com/da0x/mmpp
# Binary:
git-remove: .obj .obj/main.cpp.o
	g++ -std=c++20 .obj/main.cpp.o -o git-remove

.obj:
	mkdir .obj

.obj/main.cpp.o: main.cpp
	g++ -std=c++20 -o .obj/main.cpp.o -c main.cpp

run: git-remove
	./git-remove

clean:
	rm -rfv .obj

install: git-remove
	sudo cp -v git-remove /usr/local/bin/

uninstall:
	sudo rm -v /usr/local/bin/git-remove

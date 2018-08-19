.PHONY: all
all: clean build

build:
	-flatpak-builder --force-clean -v build-dir com.bitwig.BitwigStudio.yaml
	-flatpak-builder --force-clean -v --repo=repo repo-build com.bitwig.BitwigStudio.yaml

clean:
	-rm -fr build-dir
	-rm -fr repo
	-rm -fr repo-build

clean-all:
	-rm -fr build-dir
	-rm -fr repo
	-rm -fr repo-build
	-rm -fr .flatpak-builder

install:
	-flatpak install bitwig com.bitwig.BitwigStudio

run:
	-flatpak-builder --run build-dir/ com.bitwig.BitwigStudio.yaml com.bitwig.BitwigStudio

run-debug:
	-flatpak-builder --run build-dir/ com.bitwig.BitwigStudio.yaml sh

uninstall:
	-flatpak remove com.bitwig.BitwigStudio


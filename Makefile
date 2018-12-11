.PHONY: all
all: clean build

build:
	-flatpak-builder --install-deps-from=flathub --force-clean -v build com.bitwig.BitwigStudio.yaml
	-flatpak-builder --install-deps-from=flathub --force-clean -v --repo=repo repo-build com.bitwig.BitwigStudio.yaml

clean:
	-rm -fr build
	-rm -fr repo
	-rm -fr repo-build

clean-all:
	-rm -fr build
	-rm -fr repo
	-rm -fr repo-build
	-rm -fr .flatpak-builder

install:
	-flatpak-builder --install --force-clean build com.bitwig.BitwigStudio.yaml

run:
	-flatpak-builder --run --log-session-bus --log-system-bus build/ com.bitwig.BitwigStudio.yaml com.bitwig.BitwigStudio

run-installed:
	-flatpak run --log-session-bus --log-system-bus com.bitwig.BitwigStudio

debug-shell:
	-flatpak-builder --run build/ com.bitwig.BitwigStudio.yaml sh

uninstall:
	-flatpak remove -y com.bitwig.BitwigStudio


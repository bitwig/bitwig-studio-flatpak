build: com.bitwig.BitwigStudio.yaml
	flatpak-builder --force-clean -v build com.bitwig.BitwigStudio.yaml
	flatpak-builder --force-clean -v --repo=repo repo-build com.bitwig.BitwigStudio.yaml

install: build
	flatpak-builder --user --install --force-clean build com.bitwig.BitwigStudio.yaml

clean:
	rm -fr build
	rm -fr repo
	rm -fr repo-build
	rm -fr .flatpak-builder/builds

clean-all: clean
	rm -fr .flatpak-builder

run: build
	flatpak-builder --run --log-session-bus --log-system-bus build/ com.bitwig.BitwigStudio.yaml bitwig-studio

run-installed: install
	flatpak run --log-session-bus --log-system-bus com.bitwig.BitwigStudio

debug-shell: build
	flatpak-builder --run build/ com.bitwig.BitwigStudio.yaml sh

uninstall:
	flatpak remove -y com.bitwig.BitwigStudio

get-sum:
	curl -sL $(url) | sha512sum

all: clean-all build install

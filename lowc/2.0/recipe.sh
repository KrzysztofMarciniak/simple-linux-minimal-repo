ARK_SOURCE_URL="https://github.com/KrzysztofMarciniak/lowC/archive/refs/tags/2.0.tar.gz"
ARK_SOURCE_SHA256="517e3d952dfd6452c72a23d8227b0645b59573561819ab1ff6e8448d4a3b5ece"
ARK_TYPE="source"
ARK_DEPENDS=""
ARK_BINARIES="build/lowc"

build() {
	make
	mkdir -p ~/.ark/bin
	cp $ARK_BINARIES ~/.ark/bin/.
    
	install -d "/usr/local/share/lowc/public"
	install -m 0644 stdlib/public/args.lowc "/usr/local/share/lowc/public/args.lowc"
	install -m 0644 stdlib/public/file.lowc "/usr/local/share/lowc/public/file.lowc"
	install -m 0644 stdlib/public/hashmap.lowc "/usr/local/share/lowc/public/hashmap.lowc"
	install -m 0644 stdlib/public/http.lowc "/usr/local/share/lowc/public/http.lowc"
	install -m 0644 stdlib/public/memory.lowc "/usr/local/share/lowc/public/memory.lowc"
	install -m 0644 stdlib/public/network.lowc "/usr/local/share/lowc/public/network.lowc"
	install -m 0644 stdlib/public/print.lowc "/usr/local/share/lowc/public/print.lowc"
	install -m 0644 stdlib/public/string.lowc "/usr/local/share/lowc/public/string.lowc"
	install -d "/usr/local/share/lowc/internal/file"
	install -m 0644 stdlib/internal/file/main.lowc "/usr/local/share/lowc/internal/file/main.lowc"
	install -d "/usr/local/share/lowc/internal/memory"
	install -m 0644 stdlib/internal/memory/main.lowc "/usr/local/share/lowc/internal/memory/main.lowc"
	install -d "/usr/local/share/lowc/internal/network"
	install -m 0644 stdlib/internal/network/main.lowc "/usr/local/share/lowc/internal/network/main.lowc"
	install -d "/usr/local/share/lowc/internal/print"
	install -m 0644 stdlib/internal/print/main.lowc "/usr/local/share/lowc/internal/print/main.lowc"
	install -d "/usr/local/share/lowc/internal/string"
	install -m 0644 stdlib/internal/string/main.lowc "/usr/local/share/lowc/internal/string/main.lowc"
}

remove() {
    rm -f "$HOME/.ark/bin/lowc"
    rm -rf /usr/local/share/lowc
}

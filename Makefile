all:
	ocamlbuild stream_s.cma stream_s.cmxa

install:
	ocamlfind install staged-streams META	\
	_build/lib/stream_combinators.cmm	\
	_build/lib/stream_combinators.cmi	\
	_build/lib/stream_s.cmx			\
	_build/lib/stream_s.a			\
	_build/lib/stream_s.cmi			\
	_build/lib/stream_s.cmxa		\
	_build/lib/stream_s.cmm			\
	_build/lib/stream_combinators.cmx	\
	_build/lib/stream_s.cma

uninstall:
	ocamlfind remove staged-streams

test:
	ocamlbuild test_stream.native
	./test_stream.native

clean:
	ocamlbuild -clean

.PHONY: all install uninstall test clean

{ mkDerivation, aeson, ansi-terminal, array, base
, base64-bytestring, binary, blaze-html, blaze-markup, bytestring
, cmark, containers, data-default, deepseq, Diff, directory
, executable-path, extensible-exceptions, filemanip, filepath
, ghc-prim, haddock-library, highlighting-kate, hslua, HTTP
, http-client, http-client-tls, http-types, HUnit, JuicyPixels, mtl
, network, network-uri, old-time, pandoc-types, parsec, process
, QuickCheck, random, scientific, SHA, stdenv, syb, tagsoup
, temporary, test-framework, test-framework-hunit
, test-framework-quickcheck2, texmath, text, time
, unordered-containers, vector, xml, yaml, zip-archive, zlib
}:
mkDerivation {
  pname = "pandoc";
  version = "1.17.1";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  doCheck = false;
  libraryHaskellDepends = [
    aeson array base base64-bytestring binary blaze-html blaze-markup
    bytestring cmark containers data-default deepseq directory
    extensible-exceptions filemanip filepath ghc-prim haddock-library
    highlighting-kate hslua HTTP http-client http-client-tls http-types
    JuicyPixels mtl network network-uri old-time pandoc-types parsec
    process random scientific SHA syb tagsoup temporary texmath text
    time unordered-containers vector xml yaml zip-archive zlib
  ];
  executableHaskellDepends = [
    aeson base bytestring containers directory extensible-exceptions
    filepath highlighting-kate HTTP network network-uri pandoc-types
    text yaml
  ];
  testHaskellDepends = [
    ansi-terminal base bytestring containers Diff directory
    executable-path filepath highlighting-kate HUnit pandoc-types
    process QuickCheck syb test-framework test-framework-hunit
    test-framework-quickcheck2 text zip-archive
  ];
  homepage = "http://pandoc.org";
  description = "Conversion between markup formats";
  license = "GPL";
}

package: defaults-femtofitter
version: v1
env:
  CXXFLAGS: "-fPIC -Os -std=c++14"
  CFLAGS: "-fPIC -Os"
  CMAKE_BUILD_TYPE: "Release"
disable:
  - DPMJET
  - GEANT3
  - GEANT4
  - GEANT4_VMC
  - arrow
  - fastjet
  - RooUnfold
overrides:
  Python:
    tag: "v3.8.1"
  ROOT:
    tag: "v6-16-00"
    requires:
      # - arrow
      - AliEn-Runtime
      - GSL
      - Python-modules
      - GCC-Toolchain
      - libpng
      - lzma
      - lz4
      - libxml2
      - OpenSSL
      - XRootD
  AliRoot:
    version: "%(tag_basename)s_ROOT6"
    tag: v5-09-51
    requires:
      - ROOT
      - AliEn-ROOT-Legacy
      - Vc
  AliPhysics:
    version: "%(tag_basename)s_ROOT6"
    tag: v5-09-51-01
    requires:
      - ROOT
      - AliRoot
      - KFParticle
      - treelite
---

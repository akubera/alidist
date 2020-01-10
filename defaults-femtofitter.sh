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
  Python-modules-list:
    env:
      PIP_REQUIREMENTS: |
        requests==2.22.0
        ipykernel==5.1.3
        ipython==7.4.0
        ipywidgets==7.5.1
        metakernel==0.20.14
        mock==2.0.0
        notebook==5.7.8
        numpy==1.17.3
        pandas==0.25.3
        PyYAML==5.1
        scipy==1.4.1
        uproot==3.10.12
        matplotlib==3.1.2
      # Remove machine-learing packages from default
      PIP36_REQUIREMENTS: |
        seaborn==0.9.0
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
    tag: v5-09-52a
    requires:
      - ROOT
      - AliEn-ROOT-Legacy
      - Vc
  AliPhysics:
    version: "%(tag_basename)s_ROOT6"
    tag: v5-09-52a-01
    requires:
      - ROOT
      - AliRoot
      - KFParticle
      - treelite
---

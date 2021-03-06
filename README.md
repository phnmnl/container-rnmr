
![Logo](rNMR_logo.gif)

# rNMR
Version: 1.0.0

## Short Description

Open source software for identifying and quantifying metabolites in NMR spectra.

## Description

Containerized rNMR: open source software for identifying and quantifying metabolites in NMR spectra, developed by the team around Ian A. Lewis (University of Calgary), see http://http://rnmr.nmrfam.wisc.edu/.

rNMR is an open source software package for visualizing and interpreting one and two dimensional NMR data. In contrast to most existing 2D NMR software, rNMR is specifically designed for high-throughput assignment and quantification of small molecules. As a result, rNMR supports extensive batch manipulation of plotting parameters and has numerous tools for expediting repetitive resonance assignment and quantification tasks.

The most powerful features of rNMR are built around the region of interest (ROI) concept. ROIs are user-defined chemical shift ranges that can be used to visualize and analyze hundreds of NMR signals from multiple spectra simultaneously. Unlike peak tables, ROIs are dynamic representations of the underlying NMR data. Users can actively manipulate the chemical shift ranges of ROIs while simultaneously visualizing the impact these changes will have on resonance assignments and quantification of signals.

## Key features

- NMR Processing

## Functionality

- Annotation / NMR
- Post-processing

## Approaches

- Metabolomics / Targeted
  
## Instrument Data Types

- NMR / 1D NMR
- NMR / 2D NMR / 2D TOCSY
- NMR / 1H NMR

## Screenshots

Screen shots obtained from the original rNMR page.
![screenshot](screenshots/s1.jpg)

## Tool Authors

- Ian A. Lewis (University of Calgary)
- Seth C. Schommer (Wisconsin-Madison University and Sunquest Information Systems)

## Container Contributors

- [Kristian Peters](https://github.com/korseby) (IPB Halle)

## Website

- http://rnmr.nmrfam.wisc.edu/


## Git Repository

- https://github.com/phnmnl/container-rnmr.git

## Installation 

For local individual installation:

```bash
docker pull docker-registry.phenomenal-h2020.eu/phnmnl/rnmr
```

## Usage Instructions

For direct docker usage:

```bash
docker run docker-registry.phenomenal-h2020.eu/phnmnl/rnmr ...
```

## Publications

<!-- Guidance:
Use AMA style publications as a list (you can export AMA from PubMed, on the Formats: Citation link when looking at the entry).
IMPORTANT: Publications sectio must be placed at the end and cannot be emptied!
-->

- Lewis IA, Schommer SC, Markley JL. rNMR: open source software for identifying and quantifying metabolites in NMR spectra. Magnetic Resonance in Chemistry . 2009;47(S1):S123-S126. doi:10.1002/mrc.2526.

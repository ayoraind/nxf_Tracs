## TRACS.
### Usage

```

=======================================================================
  TRACS: TAPIR Pipeline version 1.0dev
=======================================================================
 The typical command for running the pipeline is as follows:
        nextflow run main.nf --reads "PathToReadFile(s)" --output_dir "PathToOutputDir"  --db "PathToDB"

        Mandatory arguments:
         --reads                        Query fastq.gz file of sequences you wish to supply as input (e.g., "/MIGE/01_DATA/01_FASTQ/T055-8-*.fastq.gz")
         --output_dir                   Output directory to place output (e.g., "/MIGE/01_DATA/03_ASSEMBLY")
	 --db				Filepath to reference db
         
        Optional arguments:
         --help                         This usage statement.
         --version                      Version statement

```


## Introduction
This pipeline implements tracm for separating strains from mock communities. To learn more about TRACS, check out the original author's [Github page](https://github.com/gtonkinhill/tracs/tree/main). Kindly create and activate the tracm conda environment before running this pipeline. Further details on the installation of tracm can be found [here](https://github.com/gtonkinhill/tracs/tree/main?tab=readme-ov-file#conda).  


## Sample command
An example of a command to run this pipeline is:

```
nextflow run main.nf --reads "Sample_files/*.fastq.gz" --output_dir "test2" --db "FilePathToDB"
```

Follow the instructions [here](https://gtonkinhill.github.io/tracs/#/database?id=creating-a-database) to discover how to build a custom database acceptable by tracs.

## Word of Note
This is an ongoing project at the Microbial Genome Analysis Group, Institute for Infection Prevention and Hospital Epidemiology, Üniversitätsklinikum, Freiburg. The project is funded by BMBF, Germany, and is led by [Dr. Sandra Reuter](https://www.uniklinik-freiburg.de/institute-for-infection-prevention-and-control/microbial-genome-analysis.html).


## Authors and acknowledgment
The TAPIR (Track Acquisition of Pathogens In Real-time) team.

# BIO196 Week 6 Git Project

**Author:** Ava James

## Purpose

This repository demonstrates a small RNA-seq sample metadata quality-control (QC) workflow. It uses synthetic sample metadata and a short R script to check the metadata before downstream analysis.

## Project Structure

- `data/` – Contains `sample_metadata.csv`, a synthetic metadata table listing each sample's ID, experimental condition (control or treated), and replicate number.
- `scripts/` – Contains `qc_check.R`, an R script that performs quality-control checks on the sample metadata.
- `README.md` – Project documentation (this file).
- `.gitignore` – Lists files and folders that Git should not track.

## How to Run

From the repository root (the top-level `bio196-week6-git-ajames08` folder), run:

```bash
Rscript scripts/qc_check.R
```

The script must be run from the repository root because it reads the metadata using the relative path `data/sample_metadata.csv`.

## Expected Result

The script checks the sample identifiers. It confirms that the required columns (`sample_id`, `condition`, `replicate`) are present and that no `sample_id` values are duplicated. If either check fails, the script stops with an error.

If both checks pass, the script prints the full metadata table and then the number of samples in each condition (2 control and 2 treated).

## Data Policy

The following must **not** be committed to this repository:

- Raw sequencing data (for example, FASTQ or BAM files)
- Private, human-subject, or controlled-access data
- Credentials of any kind, including passwords, API tokens, and SSH keys
- Large generated files, such as results, reference genomes, and intermediate outputs

Only the small synthetic metadata file included here belongs in version control. The `.gitignore` file excludes `raw_data/`, `results/`, logs, temporary files, and editor settings to help enforce this policy.
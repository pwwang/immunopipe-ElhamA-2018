# immunopipe-ElhamA-2018

Reanalysis of the scRNA-seq and scTCR-seq data from [Azizi, Elham, et al. 2018](https://www.cell.com/cell/fulltext/S0092-8674(18)30723-2) using [immunopipe](https://github.com/pwwang/immunopipe).

> [Azizi, Elham, et al. "Single-cell map of diverse immune phenotypes in the breast tumor microenvironment." Cell 174.5 (2018): 1293-1308.](https://www.cell.com/cell/fulltext/S0092-8674(18)30723-2)

## Data preparation

The data was downloaded from [GSE114724](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE114724), where 5 samples from 3 patients (BC9, BC10 and BC11) were sequenced with scRNA-seq and scTCR-seq.

See `prepare-data.sh` for details.

## Configuration

> [!NOTE]
> This is not a replication of the original paper, primarily due to the irreproducibility of the clustering results. This is a reanalysis of the data using [`immunopipe`](https://github.com/pwwang/immunopipe), showing the potential of the pipeline similar analyses listed in the paper.
>

The original paper used diffusion map components that are associated with Activation, Hypoxia and Terminal Differentiation to study the T-cell characteristics. The reduction was done on 8 samples (BC1-8), which were not provided in the GEO dataset. We are not able to replicate the exact scores for the diffusion map components. However, `immunopipe` can still calculate the diffusion map components for the samples in the dataset, with the only 3 patients in this dataset. The diffusion map components may not be comparable to the original paper, but used to show the potential of `immunopipe` in similar analyses.

## Results/Reports

You can find the results in the `Immunopipe-output` directory.

The report can be found at [https://imp-elhama-2018.pwwang.com/REPORTS](https://imp-elhama-2018.pwwang.com/REPORTS).

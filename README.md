# Aaedes_midgut_scRNA-Seq

Analysis scripts for the article:<br>
**A cell atlas of the adult female Aedes aegypti midgut revealed by single-cell RNA sequencing**

## Description of main documents

### Directories
- `1.scdata_rep1`: folder for single-cell analysis results of replicate 1.
- `2.scdata_rep2`: folder for single-cell analysis results of replicate 2.
- `3.merge_rep`: folder for results of single-cell integration analyses combining replicate 1 and replicate 2.
- `4.merge_subset`: folder for subclassification results of clusters 1, 2 and 3 after single-cell integration fractionation.
- `5.replot`: folder for final clustering results, specifically expressed gene results, etc. after integrating single-cell data.

### Sub-directories
- `mark_doublet`: folder for marking the doublets. It is a subfolder of `1.scdata_rep1` and `2.scdata_rep2`.
- `plots`: folders for result plots for QC, clustering, etc. It is a subfolder of `replot`.
- `umap_plots`: folder for plots of expression results of marker genes in two replicates. It is a subfolder of `replot`.

### Main jupyter notebook analysis scripts
- `scanpy.ipynb`: single-cell analysis script for each replicate. Can be found in `1.scdata_rep1` and `2.scdata_rep2`.
- `DoubletFinder.ipynb`: script for labelling doublets. Can be found in `1.scdata_rep1/mark_doublet` and `2.scdata_rep2/mark_doublet`.
- `merge.ipynb`: single-cell analysis script for integrating replicate 1 and replicate 2. Can be found in `3.merge_rep`.
- `subset.ipynb`: single-cell analysis scripts for subclassification of integrated data. Can be found in `4.merge_subset`.
- `replot.ipynb`: script for plotting the final result. Can be found in `5.replot`.

## A brief description of the analysis process
- Firstly, the single-cell clustering results for each replicate were analysed separately using `scanpy.ipynb`;
- Also, the doublets of each repetition were labelled using `DoubletFinder.ipynb`;
- The results of the single-cell analyses for each replicate were combined using `merge.ipynb`;
- The sub-classifications of clusters 1, 2, and 3 of the integrated data were further analysed using `subset.ipynb`;
- The final results were plotted using `replot.ipynb` based on the results of the integrated data and the sub-classification results.

---
Tips: big data '5.replot/ann.h5ad' can be found at https://doi.org/10.5281/zenodo.14729222

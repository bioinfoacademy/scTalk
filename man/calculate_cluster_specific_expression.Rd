% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graph_internal.R
\name{calculate_cluster_specific_expression}
\alias{calculate_cluster_specific_expression}
\title{Calculate expression metrics across clusters for a set of genes}
\usage{
calculate_cluster_specific_expression(
  geneList,
  seurat.object,
  exp.threshold = 0,
  threshold = 0.1,
  cluster.set = NULL
)
}
\arguments{
\item{geneList}{a list of genes}

\item{exp.threshold}{expression threshold for considering a gene expressed in a cell}

\item{threshold}{Threshold of percentage of cells expressing the gene in a cluster
for it to be considered expressed}

\item{seurat.obect}{a Seurat object with cluster identities}

\item{option}{set of clusters (default: all in the Seurat object)}
}
\value{
a data-frame of results
}
\description{
For a provided set of genes, go through each cluster and calculate the
average log2-expression of each gene in the cluster, the percentage of cells
expressing the gene in the cluster and the log2 FC difference between the cluster
and the remaining clusters. Return a data-frame of the results
}

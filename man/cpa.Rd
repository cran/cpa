\name{cpa}
\alias{cpa}
\title{
  Confirmatory Path Analysis
}
\description{
  \code{cpa} performs a confiratory path analysis on causal hypotheses
  expressed as directed acyclic graphs (DAGs) through the use of d-sep
  tests.  
}
\usage{
cpa()
}
\details{
  The function builds a graphical user interface to load the
  necessary files and perform the analyses.  The
  user is asked to supply a data matrix, a list with the direct
  interactions implied by a given DAG and the list of variables included in
  the DAG.  The data matrix and the list of the direct interactions should
  be comma-separated text files.  Each direct interaction is coded as a
  vector of two elements, the first of which is the causal parent (the
  cause) and the second one the causal child (the effect).  Once the
  files are loaded, it is possible to plot the DAG and start the
  analyses.  

  The script, sequentially, builds the basis set, performs the
  conditional independence tests and the Fisher's C test, calculates the
  Akaike's Information Criterium according to Shipley (2013), and
  performs the structural regressions implied by the given DAG.  For an 
  in-depth description of the code, the algorithms and the calculations
  refer to Bellino and co-workers (2015).  
  
}
\value{
  The function returns an environment containing (if any) a set of
  user-defined environments.  The user is asked to discard or save the
  results of each analysis, which will be then stored in an environment
  containing the following objects: 
  
  \item{C}{Value of the Fisher's C statistics}
  \item{P}{Null probability of the Fisher's C test}
  \item{AIC}{Akaike's Information Criterium}
  \item{Bu}{Table with the conditional independence claims and
    the null probability associated}
  \item{Ti}{List containing the conditional independence tests}
  \item{Ti_summary}{List containing the summaries of the conditional
    independence tests}
  \item{dctests}{List containing the linear models that fit the
    structural equations implied by the DAG. The names
    of its elements are the corresponding dependent variables of each
    model}
  \item{dctests_summary}{List containing the summaries of the linear
    models contained in 'dctests'}  
}
\references{
  Bellino A, Baldantoni D, De Nicola F, Iovieno P, Zaccardelli M, Alfani
  A. (2015) Compost amendments in agricultural ecosystems: confirmatory
  path analysis to clarify the effects on soil chemical and biological
  properties. \emph{Journal of Agricultural Science} \bold{253},282--295

  Shipley B. (2013) The AIC model selection method applied to path analytic models compared using a d-separation test. \emph{Ecology} \bold{94 (3)}, 560--564. 
}
\author{
  Alessandro Bellino and Daniela Baldantoni
}
\seealso{
  \code{basisSet} and \code{shipley.test} functions of package \code{ggm} for an
  alternative way to perform the Fisher's C test
}
\examples{
## Start the GUI and save the results of the analyses in an environment

x <- cpa()

## Inspect the content of the environment, it will contain every
## user-defined environment in which the results of each performed
## analysis are stored.

ls(x)
}

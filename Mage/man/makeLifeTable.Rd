% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makeLifeTable.R
\name{makeLifeTable}
\alias{makeLifeTable}
\title{A function to produce a life table from a matrix population model}
\usage{
makeLifeTable(matU, matF = NULL, matC = NULL, startLife = 1,
  nSteps = 1000)
}
\arguments{
\item{matU}{The U matrix - survival-dependent transitions (e.g. changes in
size/ageing/development)}

\item{matF}{The F matrix - sexual reproduction}

\item{matC}{The C matrix - clonal reproduction}

\item{startLife}{The stage of of the life cycle that structures the matrix
population model where life is considered to begin. This is usually 1 (i.e.
the first stage), but in species with a permanent propagule bank (e.g.
seedbank, or similar), users may wish to use the first non-permanent
propagule bank stage along the life cycle.}

\item{nSteps}{Number of time steps for which the life table be constructed.
This is on the same units as the matrix population model - see
MatrixPeriodicity in metadata of COMPADRE/COMADRE.}
}
\value{
A `data.frame` with between 2 and 4 columns. If just `matU` is
provided, the `data.frame` has columns `x` (age), `lx` (survivorship).  If
`matF` is provided (in addition to `matU`), `mx` (age-specific sexual
reproduction) is included in the output `data.frame`. Likewise, if `matC` is
provided, an addition column, `cx` (age-specific clonal reproduction) is
included.
}
\description{
This function uses age-from-stage decompositions to calculate a life table
from a matrix population model
}
\details{
A detailed description of these methods can be found in section 5.3 of
Caswell (2001) and the supplementary information of Jones et al. (2014).
}
\note{
%% ~~further notes~~
}
\examples{


matU <- matrix(c(0, 0, 0, 0, 0.5, 0, 0, 0, 0, 0.3, 0, 0, 0, 0, 0.1, 0.1), nrow = 4, byrow = T)
matF <- matrix(c(0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.), nrow = 4, byrow = T)
matC <- matrix(c(0, 0, 0, 0, 0, 1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0), nrow = 4, byrow = T)

makeLifeTable(matU, matF, matC, startLife = 1, nSteps = 100)

}
\references{
Caswell, H. (2001) Matrix Population Models: Construction, Analysis, and
Interpretation. Sinauer Associates; 2nd edition. ISBN: 978-0878930968

Caswell, H. (2006) Applications of Markov chains in demography. pp. 319-334
in A.N. Langville and W.J. Stewart (editors) MAM2006: Markov Anniversary
Meeting. Boson Books, Raleigh, North Caroline, USA

Jones, O.R. et al. (2014) Diversity of ageing across the tree of life.
Nature, 505(7482), 169–173
}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\author{
Roberto Salguero-Gómez <rob.salguero@sheffield.ac.uk>

Hal Caswell <h.caswell@uva.nl>

Owen R. Jones <jones@biology.sdu.dk>
}
\keyword{~kwd1}
\keyword{~kwd2}

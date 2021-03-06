% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convert2flat.R
\name{convert2flat}
\alias{convert2flat}
\title{A function to convert from the list structured database object to a flat
sheet.}
\usage{
convert2flat(db, Aonly = TRUE)
}
\arguments{
\item{db}{The COMPADRE or COMADRE matrix database object}

\item{Aonly}{A logical value (TRUE/FALSE) indicatting whether ONLY the A
matrix be included in the output.}
}
\value{
A `data.frame` with the same columns as are present in the metadata
part of the COMPADRE/COMADRE object, followed by the string-form matrix
stage information and the matrices themselves.
}
\description{
The function converts from the list structured database object to a flat
sheet by converting each matrix to a string.
}
\details{
%% ~~ If necessary, more details than the description above ~~
}
\examples{

\dontrun{
newDB<-convert2flat(compadre,Aonly=FALSE)
}

}
\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\author{
Owen R. Jones <jones@biology.sdu.dk>
}

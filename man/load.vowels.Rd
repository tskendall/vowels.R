\name{load.vowels}
\alias{load.vowels}
\title{ Load a Vowel File }
\description{
  A simple wrapper for reading a tab-delimited text file into a data frame.
}
\usage{
load.vowels(file=NA, type="Hertz")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{ if passed, the name of the file to open.  If not passed, file.choose() is called. }
  \item{type}{ the current units of the formant data.  Defaults to "Hertz", set to "Bark" or "ERB" if the data are already in Bark or ERB scales. }
}
\details{
A simple wrapper for reading a tab-delimited text file into a data frame.
}
\value{ A data frame containing the vowel data from the input file }
\section{Warning }{The development of the library and this function are ongoing.  The arguments to the function may change in future version.}
\author{ Kendall, Tyler <tsk@uoregon.edu> }
\seealso{ \code{\link{file.choose}}, \code{\link{read.table}} }
\keyword{ IO }

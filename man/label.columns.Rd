\name{label.columns}
\alias{label.columns}
\title{ Label the Columns of a Vowel Data Frame }
\description{
  A simple function that labels the first nine columns of a data frame.
}
\usage{
label.columns(vowels)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{vowels}{ a data frame containing vowel data }
}
\details{
Labels the columns of the data frame according to the unit type (Hertz, Bark, ERB) of the data and whether or not the values are mean values.
}
\value{ A data frame containing the vowel data with the columns labeled: Speaker, Vowel, Context/N, F1, F2, F3, F1.gl, F2.gl, F3.gl }
\section{Warning }{The development of the library and this function are ongoing.  The arguments to the function may change in future version.}
\author{ Kendall, Tyler <tsk@uoregon.edu> }
\seealso{ \code{\link{load.vowels}} }
%\examples{ }
\keyword{ IO }

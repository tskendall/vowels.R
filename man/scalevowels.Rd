\name{scalevowels}
\alias{scalevowels}
\title{ Scale Normalized Vowels to Appear Hz-Like }
\description{
  Converts normalized values (such as those created by the Lobanov and Nearey methods) to Hertz-like values.
}
\usage{
scalevowels(normed.vowels)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{normed.vowels}{ a required data frame of normalized vowel data with or without columns for normalized F3. This should be in the format: speaker_id, vowel_id, context or vowel_N, F1', F2', (F3',) F1_glide', F2_glide', (F3_glide'), where parenthesized items are optional.  If there are no F3s, this should be indicated with attribute "no.f3s" set to TRUE. }
}
\details{
Scaling is necessary to convert the output from some normalization methods to values that appear Hertz-like (and are thus more familiar).  However, scaling is rarely recommended as in someways it undoes the process of normalization.  See http://lingtools.uoregon.edu/norm/about_norm.php for some important details.
}
\value{ The original data frame with the normalized values scaled. }
\section{Warning }{The development of the library and this function are ongoing.  The arguments to the function may change in future version.}
\author{ Kendall, Tyler <tsk@uoregon.edu> }
\seealso{ \code{\link{norm.lobanov}}, \code{\link{norm.nearey}}, \code{\link{norm.wattfabricius}} }
%\examples{ }
\keyword{ IO }

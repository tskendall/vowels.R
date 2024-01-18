\name{norm.lobanov}
\alias{norm.lobanov}
\title{ Normalize Vowels with Lobanov Method }
\description{
  Normalizes acoustic vowel formant data using Lobanov Method.
}
\usage{
norm.lobanov(vowels, f1.all.mean=NA, f2.all.mean=NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{vowels}{ a required dataframe of the format: speaker_id, vowel_id, context, F1, F2, F3, F1_glide, F2_glide, F3_glide.  The context column and glide columns must exist but can be empty. }
  \item{f1.all.mean}{ while it is not recommended that you supply values for f1.all.mean and f2.all.mean, doing so will override the speaker intrinsic generation of the mean formant values for the current speaker. }
  \item{f2.all.mean}{ see above. }
}
\details{
  Lobanov's method was one of the earlier vowel-extrinsic formulas to appear, but it remains among the best.  The implementation here follows Nearey (1977) and Adank et al. (2004).
}
\value{ A data frame in the format: speaker_id, vowel_id, F1', F2', F1'gl, F2'gl, with the attributes "no.f3s" == TRUE, "norm.method" == "Lobanov" }
\section{Warning }{The development of the library and this function are ongoing.  The arguments to the function may change in future version.}
\references{ Thomas, Erik R. and Tyler Kendall. 2007. NORM: The vowel normalization and plotting suite. [ Online Resource: http://lingtools.uoregon.edu/norm/ ]

Adank, Patti, Smits, Roel, and van Hout, Roeland. 2004. A comparison of vowel normalization procedures for language variation research. Journal of the Acoustical Society of America 116:3099-107.

Lobanov, B. M. 1971. Classification of Russian vowels spoken by different listeners. Journal of the Acoustical Society of America 49:606-08. 

Nearey, Terrance M. 1977. Phonetic Feature Systems for Vowels. Dissertation, University of Alberta. Reprinted 1978 by the Indiana University Linguistics Club.
}
\author{ Kendall, Tyler <tsk@uoregon.edu> }
\seealso{ \code{\link{norm.bark}}, \code{\link{norm.labov}}, \code{\link{norm.nearey}}, \code{\link{norm.wattfabricius}} }
%\examples{ }
\keyword{ methods }

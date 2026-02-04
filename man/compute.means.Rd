\name{compute.means}
\alias{compute.means}
\alias{compute.medians}
\alias{compute.sds}
\title{ Compute the Formant Means (or Medians or Standard Deviations) of a Data Frame of Vowel Data }
\description{
  Computes the mean formant values (or medians or standard deviations) for uniquely named vowels, in a data frame of vowel formant data.
}
\usage{
compute.means(vowels, separate=FALSE, speaker=NA)

compute.medians(vowels, separate=FALSE, speaker=NA)

compute.sds(vowels, separate=FALSE, speaker=NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{vowels}{ a required data frame of one of two formats - either: speaker_id, vowel_id, context, F1, F2, F3, F1_glide, F2_glide, F3_glide, or: speaker_id, vowel_id, context, F1, F2, F1_glide, F2_glide.  The context column and glide columns can be blank. }
  \item{separate}{ if TRUE, calculates means separately for each speaker_id in the vowels data frame.  Otherwise, if FALSE, the default, calculates one set of means over all speakers.  "separate" trumps "speaker" }
  \item{speaker}{ optionally, the speaker_id to extract from the data frame for averaging.  If NA, the default, the function averages across all speakers in the data frame }
}
\details{
 Compute the mean formant values the median formant values or the standard deviations in vowel formant data data frames.  These can take either a data frame with F1, F2, and F3 data or just one with F1 and F2 data (such as that resulting from Lobanov or Watt & Fabricius normalization)
 
 compute.sds() mostly exists for use by the add.spread.vowelplot() function.
}
\value{ compute.means() and compute.medians() return either a data frame in the format speaker_id, vowel_id, N, F1, F2, F3, F1_glide, F2_glide, F3_glide with the attribute "mean.values" == TRUE or a data frame in the format speaker_id, vowel_id, N, F1, F2, F1_glide, F2_glide with the attributes "mean.values" == TRUE and "no.f3s" == TRUE.  The resulting data frame also has whatever value (if any) the input data frame had for the attributes "norm.method" and "norm.variant" 
	
The compute.medians() and compute.sds() functions have the same return values except instead of the attribute "mean.values", they have the attribute "median.values" or "standard.devs" respectively}
\section{Warning }{The development of the library and this function are ongoing.  The arguments to the function may change in future version.}
\references{ Thomas, Erik R. and Tyler Kendall. 2007. NORM: The vowel normalization and plotting suite. [ Online Resource: http://lingtools.uoregon.edu/norm/ ]
}
\author{ Kendall, Tyler <tsk@uoregon.edu> }
\seealso{ \code{\link{norm.lobanov}}, \code{\link{norm.wattfabricius}}, \code{\link{vowelplot}} \code{\link{add.spread.vowelplot}} }
\examples{ 
data(ohiovowels)
means <- compute.means(ohiovowels)
vowelplot(means, color="vowels", labels="vowels")

ohd.means <- compute.means(ohiovowels, speaker="OHDMTV_M")
vowelplot(ohd.means, color="vowels", labels="none")
add.spread.vowelplot(ohiovowels, speaker="OHDMTV_M", color="vowels", sd.mult=1)
}
\keyword{ methods }

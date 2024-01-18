\name{norm.labov}
\alias{norm.labov}
\title{ Normalize Vowels with Labov ANAE Method }
\description{
  Normalizes acoustic vowel formant data using Labovs modification of Nearey, from the Atlas of North American English.
}
\usage{
norm.labov(vowels, G.value=NA, use.f3=FALSE, geomean=TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{vowels}{ a required dataframe of the format: speaker_id, vowel_id, context, F1, F2, F3, F1_glide, F2_glide, F3_glide.  The context column and glide columns must exist but can be empty. }
  \item{G.value}{ the overall "grand mean" value to use in the normalization formula.  See details, below.  If NA, the function uses the default value of 6.896874, which Labov in his Telsur project found to be a stable group mean for 345 American English speakers. Differences in G.value for a set of data probably only effect of the scaling. }
  \item{use.f3}{ if TRUE, the normalization procedure includes F3 values in the process.  This both generates normalization F3' values AND impacts the values obtained for F1' and F2'.  Default is FALSE. }
  \item{geomean}{ following Labov, the default (TRUE) uses the geometric mean instead of the arithmetic mean to calculate the normalized values. The results of the method are slightly different depending on which mean strategy is used, but testing has indicated the differences are insignificant. }
}
\details{
  Labov's method - the normalization approach used by the phonological Atlas of North American English (Labov et al. 2006) - is a modification of Nearey's. While it also uses a log-mean method to normalize the formant values, the primary difference is that it computes a single grand mean for all speakers included in the study (i.e. it's speaker-extrinsic, while Nearey is typically speaker-intrinsic). Also, unlike Nearey, it computes a scaling factor for each individual which is then used to modify each individual's vowel space rather than computing a set of non-Hertz-like values. In other words, since it is speaker-extrinsic, it is able to scale the original Hertz values as a part of its normalization process.
  
  NORM's implementation of the Labov method follows the formulas laid out by Labov et al. (2006: 39-40). A logarithmic grand geometric mean, G, is required for all vowels for all speakers. A logarithmic mean value, S, is then calculated for each speaker by taking the natural log of the F1 and F2 values for all of that speaker's vowels. The anti-log of the difference, G - S, is taken for F, the scaling factor for that speaker. Each individual's formant values are then multiplied by the scaling factor F to obtain her or his normalized values.
}
\value{ A data frame in one of two formats: 
	If use.f3 is TRUE: speaker_id, vowel_id, F1', F2', F3', F1'gl, F2'gl, F3'gl
	If use.f3 is FALSE: speaker_id, vowel_id, F1', F2', F1'gl, F2'gl, with the attribute "no.f3s" == TRUE
	In both cases, the data frame also has the attributes "norm.method" == "Labov" and "G.value", which equals the used G.value.  When G.value == 6.896874, there is the additional attribute of "norm.variant" == "Labov, w/ Telsur G" }
\section{Warning }{The development of the library and this function are ongoing.  The arguments to the function may change in future version.}
\references{ Thomas, Erik R. and Tyler Kendall. 2007. NORM: The vowel normalization and plotting suite. [ Online Resource: http://lingtools.uoregon.edu/norm/ ]

Labov, William, Sharon Ash, and Charles Boberg. 2006. \emph{The Atlas of North American English: Phonology, Phonetics, and Sound Change. A Multimedia Reference Tool}. Berlin: Mouton de Gruyter.
}
\author{ Kendall, Tyler <tsk@uoregon.edu> }
\seealso{ \code{\link{norm.bark}}, \code{\link{norm.lobanov}}, \code{\link{norm.nearey}}, \code{\link{norm.wattfabricius}} }
%\examples{ }
\keyword{ methods }

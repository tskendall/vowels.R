\name{norm.nearey}
\alias{norm.nearey}
\title{ Normalize Vowels with Nearey Method(s) }
\description{
  Normalizes acoustic vowel formant data using Nearey Methods.
}
\usage{
norm.nearey(vowels, formant.int=FALSE, use.f3=FALSE, 
all.mean=NA, all.mean.f2=NA, all.mean.f3=NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{vowels}{ a required data frame of the format: speaker_id, vowel_id, context, F1, F2, F3, F1_glide, F2_glide, F3_glide.  The context column and glide columns must exist but can be empty. }
  \item{formant.int}{ if TRUE, uses formant intrinsic Nearey1 procedure, calculating a separate grand mean for each formant.  If FALSE, uses formant extrinisc Nearey2, calculating a combined grand mean from all formants. }
  \item{use.f3}{ if TRUE, the normalization procedure includes F3 values in the process.  This both generates normalization F3 values AND impacts the values obtained for F1 and F2.  Default is FALSE. }
  \item{all.mean}{ while it is not recommended that you supply values for all.mean (the f1 all.mean), all.mean.f2, and all.mean.f3, doing so will override the speaker intrinsic generation of the mean formant values for the current speaker. }
  \item{all.mean.f2}{ see above. }
  \item{all.mean.f3}{ see above. }
}
\details{
  This implements two versions of the method that Terrance Nearey developed in his 1977 dissertation. The Nearey methods are vowel-extrinsic and in general rather similar to the Lobanov formula, though their formulae differ in that they normalize using log mean values. Following Adank et al. (2004) the major branches of the Nearey method are named here Nearey1 and Nearey2.
}
\value{ A data frame in one of two formats: 
	If use.f3 is TRUE: speaker_id, vowel_id, F*1, F*2, F*3, F*1gl, F*2gl, F*3gl
	If use.f3 is FALSE: speaker_id, vowel_id, F*1, F*2, F*1gl, F*2gl, with the attribute "no.f3s" == TRUE
	In both cases, the data frame also has the attributes "norm.method" == "Nearey" and "norm.variant" == "Nearey1" or "Nearey2", depending on whether formant.int is FALSE or TRUE }
\section{Warning }{The development of the library and this function are ongoing.  The arguments to the function may change in future version.}
\references{ Thomas, Erik R. and Tyler Kendall. 2007. NORM: The vowel normalization and plotting suite. [ Online Resource: http://lingtools.uoregon.edu/norm/ ]

Nearey, Terrance M. 1977. Phonetic Feature Systems for Vowels. Dissertation, University of Alberta. Reprinted 1978 by the Indiana University Linguistics Club.

Adank, Patti, Smits, Roel, and van Hout, Roeland. 2004. A comparison of vowel normalization procedures for language variation research. Journal of the Acoustical Society of America 116:3099-107.

Labov, William, Ash, Sharon, and Boberg, Charles. 2006. The Atlas of North American English: Phonology, Phonetics, and Sound Change. A Multimedia Reference Tool. Berlin: Mouton de Gruyter.
Lobanov, B. M. 1971. Classification of Russian vowels spoken by different listeners. Journal of the Acoustical Society of America 49:606-08. 
}
\author{ Kendall, Tyler <tsk@uoregon.edu> }
\seealso{ \code{\link{norm.bark}}, \code{\link{norm.labov}}, \code{\link{norm.lobanov}}, \code{\link{norm.wattfabricius}} }
%\examples{ }
\keyword{ methods }

\name{norm.bark}
\alias{norm.bark}
\title{ Normalize Vowels with Bark Difference Method }
\description{
  Normalizes acoustic vowel formant data using the Bark Difference Method.
}
\usage{
norm.bark(vowels)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{vowels}{ a required data frame of the format: speaker_id, vowel_id, context, F1, F2, F3, F1_glide, F2_glide, F3_glide.  The context column and glide columns must exist but can be empty. }
}
\details{
  The Bark Difference Method is a vowel-intrinsic method modified from the formula developed by Syrdal and Gopal (1986). Syrdal and Gopal proposed using two dimensions. Both involved computing differences between Bark-converted values (Z). To model advancement, they used either Z3-Z2 or Z2-Z1 (i.e., Bark-converted F3 minus Bark-converted F2 or Bark-converted F2 minus Bark-converted F1). To model height, they used Z1-Z0 (Bark-converted F1 minus Bark-converted F0). Z0 was used because, all other things being equal, F0 tends to be higher for high vowels than for low vowels, thus minimizing the distance between F0 and F1 for high vowels and maximizing it for low vowels. However, the problem is that all other things are seldom equal. Intonation, tone, and consonantal influences affect F0, as does creakiness. Those processes can be circumvented, but another factor, the effects of aging on F0, cannot, at least not speaker- and vowel-intrinsically. As a result, the Z3-Z1 is substituted here for Z1-Z0, though Z3-Z2 is retained.
  
  Uses the Bark conversion formula from Traunmuller (1997): 
  
  Zi = 26.81/(1+1960/Fi) - 0.53
}
\value{ A data frame in the format speaker_id, vowel_id, context, Z3-Z1, Z3-Z2, Z2-Z1, Z3-Z1_gl, Z3-Z2_gl, Z2-Z1_gl with the attribute "norm.method" == "Bark Difference"}
\section{Warning }{The development of the library and this function are ongoing.  The arguments to the function may change in future version.}
\references{ Thomas, Erik R. and Tyler Kendall. 2007. NORM: The vowel normalization and plotting suite. [ Online Resource: http://lingtools.uoregon.edu/norm/ ]

Traunmuller, Hartmut. 1997. Auditory scales of frequency representation. [ Online: http://www.ling.su.se/staff/hartmut/bark.htm ] 
}
\author{ Kendall, Tyler <tsk@uoregon.edu> }
\seealso{ \code{\link{norm.labov}}, \code{\link{norm.lobanov}}, \code{\link{norm.nearey}}, \code{\link{norm.wattfabricius}} }
%\examples{ }
\keyword{ methods }

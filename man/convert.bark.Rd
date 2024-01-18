\name{convert.bark}
\alias{convert.bark}
\alias{convert.erb}
\title{ Convert Vowels from Hertz to Bark or ERB }
\description{
  Converts acoustic vowel formant data to auditory scales following Traunmuller (1997)'s' formula.
}
\usage{
convert.bark(vowels)

convert.erb(vowels)
}
\arguments{
  \item{vowels}{ a required data frame of the format: speaker_id, vowel_id, context, F1, F2, F3, F1_glide, F2_glide, F3_glide.  The context column and glide columns must exist but can be empty. }
}
\details{
  Converts vowel data from acoustic - Hertz - values to auditory values, in Bark or ERB.
  
  convert.bark uses the Bark conversion formula from Traunmuller (1997): 
  
  Zi = 26.81/(1+1960/Fi) - 0.53
  
  convert.erb uses the ERB conversion formula from Traunmuller (1997):
  
  Ei = 11.17*log((Fi + 312)/(Fi + 14675))+43.0
}
\value{ A data frame in the format speaker_id, vowel_id, context, F1, F2, F3, F1_glide, F2_glide, F3_glide, where F1, etc, are in Bark or ERB scales.  The data frame has the attribute "unit.type" of "Bark" or "ERB"}
\section{Warning }{The development of the library and this function are ongoing.  The arguments to the function may change in future version.}
\references{ Thomas, Erik R. and Tyler Kendall. 2007. NORM: The vowel normalization and plotting suite. [ Online Resource: http://lingtools.uoregon.edu/norm/ ]

Traunmuller, Hartmut. 1997. Auditory scales of frequency representation. [ Online: http://www.ling.su.se/staff/hartmut/bark.htm ] 
}
\author{ Kendall, Tyler <tsk@uoregon.edu> }
\seealso{ \code{\link{norm.bark}} }
%\examples{ }
\keyword{ methods }

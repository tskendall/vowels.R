\name{vowelplot}
\alias{vowelplot}
\alias{add.vowelplot}
\alias{add.spread.vowelplot}
\alias{setup.axes}
\alias{setup.point.color}
\alias{setup.point.shape}
\alias{setup.sizes}
\alias{default.point.colors}
\title{ Plot Vowels in F1~F2 Space }
\description{
  Plot vowel formant data in the familiar F1~F2 dot plot format, with arrows for diphthong values.  Optionally, can add standard deviation bars, or additional overlaid vowel data sets.
}
\usage{
vowelplot(vowels, speaker=NA, color=NA, color.choice=NA, 
shape="speakers", shape.choice=NA, size=NA, labels="none", 
leg="speakers", a.size=NA, l.size=NA, title="", subtitle=NA, 
xlim=NA, ylim=NA)

add.vowelplot(vowels, speaker=NA, color=NA, color.choice=NA, 
shape="speakers", shape.choice=NA, size=NA, labels="none")

add.spread.vowelplot(vowels, mean.points=FALSE, sd.mult=2, 
ellipsis=FALSE, speaker=NA, color=NA, color.choice=NA, 
shape="speakers", shape.choice=NA, size = NA, leg=FALSE,
labels="none", separate=TRUE)

setup.axes(vowels)
setup.point.color(vowels, color=NA, color.choice=NA)
setup.point.shape(vowels, shape="speakers", shape.choice=NA)
setup.sizes(vowels, size=NA, a.size=NA, l.size=NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{vowels}{ a required dataframe of the format: speaker_id, vowel_id, context/N, F1, F2, F3, F1_glide, F2_glide, F3_glide.  The context/N column and the glide columns can be blank.}
  \item{speaker}{ a character string specifying which speaker to plot.  If NA, the default, plots all speakers. }
  \item{color}{ Use color to differentiate "speakers" or "vowels".  If NA, the default, plots in black and white. }
  \item{color.choice}{ A vector of colors to use if not generating a black and white plot, in hex code or valid R color name (see color()).  If NA, the default, uses the default NORM colors.}
  \item{shape}{ Use plot shapes to differentiate "speakers" or "vowels".  Defaults to using shapes for "speakers". }
  \item{shape.choice}{ A vector of point shapes for overriding the defaults (see help for points() and run example("points") - your R may support Unicode characters (IPA-like symbols)).  If not enough are specified, the shapes are recycled as needed. }
  \item{size}{ If NA, the dot sizes are determined logarithmically based on the number of vowel measurements to plot.  Override to plot with a specific cex size.}
  \item{a.size}{ The base size for annotation text and points (such as the plot title and axis labels).  If NA, is set to cex 1.0. }
  \item{l.size}{ The size for legend text and points.  If NA, is set to 75 percent of the a.size setting. }
  \item{labels}{ If "vowels", plots the vowel identifier along with the dots.  If "speakers", plots the speaker ids as labels along with the dots.  If labels is set to any other value, other than "none", the function includes both the speaker id and the vowel identifier as the labels.  If "none", the default, labels are suppressed.}
  \item{leg}{ Include a legend in the vowel plot?  If so, for speakers or vowels?  If NA, do not generate a legend. Default is "speakers" for vowelplot().  For add.spread.vowelplot() this is a boolean, defaulting to FALSE, which, if TRUE, shows the number of standard deviations depicted by the bars. }
  \item{title}{ Include a custom main title for the plot?  If blank (""), will generate a title based on the data submitted to the function. }
  \item{subtitle}{ Include a custom subtitle (smaller font title at the bottom) for the plot?  If NA, and the vowel data has attributes of "norm.variant" or "unit.type"!="Hertz", the subtitle will default to those values (in that order).  Set to blank (""), to have no subtitle, otherwise prints whatever user specifies. }
  \item{xlim}{ Specify with a two-unit vector (i.e. xlim=c(800, 200)) if you want to override the automatic determination of the size of the plot area.  You must provide both xlim and ylim for this take effect. Remember that for other than Bark difference normalized vowels, axes run from largest to smallest value - you must provide the values in the correct order. }
  \item{ylim}{ Specify with a two-unit vector if you want to override the automatic determination of the size of the plot area.  You must provide both xlim and ylim for this take effect. Remember that for other than Bark difference normalized vowels, axes run from largest to smallest value - you must provide the values in the correct order. }
  \item{mean.points}{ For the add.spread.vowelplot() function only.  If TRUE, plot mean data points in addition to the standard deviation bars.  Default is FALSE.  The "shape" and "size" arguments are ignored if FALSE. }
  \item{sd.mult}{ For the add.spread.vowelplot() function only.  The multiplier for the range of standard deviations plotted by the bars.  Default is 2. }
  \item{ellipsis}{ For the add.spread.vowelplot() function only.  Should this plot ellipses rather than standard deviation bars?  Default is FALSE. Set to TRUE for ellipsis.  As of Vowels 1.2 this makes 'true' ellipsis around the dimensions of variation.  For the original version, which plotted horizontal-vertical ellipses only, set to "horizvert". }
  \item{separate}{ For the add.spread.vowelplot() function only. If FALSE, this generates bars/ellipses collapsed across all speakers in the data.  If TRUE, this generates separate bars/ellipses for each speaker.  The default is TRUE (note that this default is the opposite of the default action for the compute.means(), compute.sds(), and compute.medians() functions).}
}
\details{
  The vowelplot() function provides helpful shortcuts for formatting vowel data frames for plotting in "standard" F2~F1 formats.  Cf. Thomas (2001) for a range of examples of vowel plots.  The add.vowelplot() function adds more vowel data to an existing plot.  It is helpful for adding, for example, mean values to a plot of individual vowels (see examples).  The add.spread.vowelplot() function computes and adds standard deviation bars or ellipses to the vowel data.
  
  The "setup" functions - setup.axes(), setup.point.color(), setup.point.shape(), and setup.sizes() - are called by vowelplot() to determine settings for the plots.
}
\value{ Nothing is returned. }
\section{Warning }{The development of the library and this function are ongoing.  The arguments to the function may change in future version.}
%\references{ Thomas, Erik R. 2001. \emph{An Acoustic Analysis of Vowel Variation in New World English}. Publication of the American Dialect Society 85. Durham, NC: Duke University Press. }
\author{ Kendall, Tyler <tsk@uoregon.edu>\cr
	with contributions from Santiago Barreda }
\seealso{ \code{\link{load.vowels}}, \code{\link{compute.means}} }
\examples{ 
data(ohiovowels)
vowelplot(ohiovowels, color="vowels", label="vowels")

vowelplot(norm.bark(ohiovowels), speaker="JOHG09", color="vowels",
 color.choice=rainbow(length(unique(ohiovowels[,2]))), label="none", 
title="JOHG09 Bark Difference Normalized Vowels")
add.spread.vowelplot(norm.bark(ohiovowels), speaker="JOHG09", sd.mult=1,
 color.choice=rainbow(length(unique(ohiovowels[,2]))), color="vowels", leg=TRUE)

par(mfrow=c(2,1))
vowelplot(compute.means(ohiovowels), shape="vowels")
vowelplot(compute.means(norm.lobanov(ohiovowels)), shape="vowels")

par(mfrow=c(1,1))
g09.means <- compute.means(ohiovowels, speaker="JOHG09")
vowelplot(g09.means, color="vowels", labels="none")
add.spread.vowelplot(ohiovowels, speaker="JOHG09", sd.mult=1, color="vowels", labels="none")
# can add annotations to the vowel plots as any other R graph, eg:
legend("top", legend="Can you guess which vowel is 'BOY'?", col='lightslategrey', bty="n")

vowelplot(norm.nearey(ohiovowels), speaker="JOHG09", color="speakers", labels="vowels",
 title="Individual vowels and means for JOHG09\nNearey1 Normalized")
add.vowelplot(compute.means(norm.nearey(ohiovowels), speaker="JOHG09"), color=NA, size=2,
 labels="vowels")

vowelplot(norm.wattfabricius(ohiovowels), speaker="JOHG09", shape="vowels", color="vowels",
 color.choice=sample(colors(), length(unique(ohiovowels[,2]))), leg="vowels",
 title="Randomly colored vowels for JOHG09\nWatt & Fabricious normalized")
}

\keyword{ hplot }


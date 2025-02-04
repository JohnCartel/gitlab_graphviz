---
title: Font FAQ
type: docs
---

Before we launch into the gory details, we would like to explain
why fonts are a hard problem.  The naming and rendering of text fonts
in Graphviz (and other programs) is complicated.  There are several reasons:

- Graphviz runs on a wide range of systems: Linux and other Unix
  variants, Microsoft Windows, and Mac.
- Graphviz has a wide range of output formats: raster-oriented formats
  like [PNG](/docs/outputs/png/) and [GIF](/docs/outputs/gif/); path-based ones like [Postscript](/docs/outputs/ps/), [PDF](/docs/outputs/pdf/) and [SVG](/docs/outputs/svg/); some
  idiosyncractic legacy formats, like troff [PIC](/docs/outputs/pic/).
- Often, output will be downloaded and displayed on a computer or other 
  device, different than the one where the layout was created.
- Graphviz layouts should be identical in size and appearance,
  regardless of the output format.
- Graphviz can run on external libraries that help with naming and
  rendering text fonts, but they are not required, and stripped-down
  Graphviz tools can be built without them. In fact, Graphviz may have
  to run on systems with no font files installed.
- There are several major font file formats to be supported.
- Non-Western, international character sets should be supported.
- Graphviz should provide a good set of standard fonts.
- It should be easy to specify standard fonts.
- Users should be able to load their own custom fonts.
- Output should be small to download quickly.
- Output should allow the best rendering possible in a given format.
- Output files should be easy to postprocess, for example, retaining
  the objects of the original graph if possible.
- It is very helpful to work around known bugs or missing features
  in support libraries and popular external tools.

This is a tall order. Some of the goals conflict.  Generally our
approach has been to define defaults that favor convenience and good
looking output, and give the user options to override the defaults.

## Overview

In the following, we will assume a "standard" version of Graphviz 
with the full set of support libraries (fontconfig, gd, Cairo and Pango),
running on a desktop system or server with a standard installation of
font files.

The [graphviz layout engines](/docs/layouts/) ([dot](/docs/layouts/dot/), [neato](/docs/layouts/neato), etc) create layouts with nodes
sized to enclose the text labels.  This requires knowing the size of
the text blocks, which in turn requires knowing the metrics of the font
glyphs and their composition into words, taking into account wordspacing,
kerning, hinting, etc.  So the overall process is: font specification,
then text layout, followed by Graphviz output (and final rendering on
the target display or device, which may or may not be by a Graphviz tool).

A font is usually selected by family name ([`fontname`](/docs/attrs/fontname/)) and other properties
(see below: "Font selection"). Then fontconfig matches the request
to a system font.

Note: in older versions of Graphviz, `fontname` was
simply a file name.  This required exact file name matching (with a little
bit of helpful name mangling under the hood, e.g. translating `Times-Roman`
to `Times`, or `Helvetica` to `Arial` on Windows systems (and yes, we know
there is a difference).  Under fontconfig, fontnames are family names,
which fontconfig matches to the closest font it finds. This always
"succeeds", but unfortunately produces surprising results if fontconfig's
idea of "close" doesn't match yours. This can happen when you specify
a custom (or just nonexistent) font, like `Steve-North-Handwriting`,
and fontconfig silently falls back to something safe like a typewriter
font.

Text layout is performed by [pango](https://pango.gnome.org/), which accepts text and computes a
layout with metrics that determine node sizes.

Though line drawing is provided by [cairo](https://www.cairographics.org/) for many output formats (and
likely more in the future), for raster output formats, font rendering
is passed though cairo to [freetype](https://freetype.org/). Freetype is also called if [gd](https://libgd.github.io/) is
used for drawing.  (gd can also be requested explicitly, e.g. `dot -Tpng:gd`,
or by default when Graphviz is built without cairo).  Freetype provides
antialiasing, hinting, kerning, and other low-level font features.

Font metrics are obtained from the fonts installed on the system running
Graphviz.  Results are guaranteed when Graphviz outputs raster formats,
because freetype immediately renders the fonts into pixels.  On the
other hand, with path-based formats like Postscript ([`-Tps`](/docs/outputs/ps/)) and SVG ([`-Tsvg`](/docs/outputs/svg/)),
final rendering may be done on a different platform altogether, with
different font files installed.  Clearly, Your Mileage May Vary.  In the
case of Postscript, the driver in Graphviz passes the expected metrics
of the text block down to the renderer, and asks it to make a final stretch
(or squeeze) to force the text to fit the metrics that were in effect at
layout time.  In Graphviz SVG, there is only a hope and a prayer that
the SVG rendering program's fonts match the ones fontconfig and freetype
used when Graphviz was run.  (More about this later.)

## Default fonts and PostScript fonts

The default font in graphviz is, and always has been, `Times-Roman`.

Graphviz has historically supported some "standard" Postscript
fonts, initially, `Times-Roman`, `Helvetica`, `Courier` and `Symbol`.
This list was later enlarged by Adobe to include 35 fonts, which are:

```
AvantGarde-Book AvantGarde-BookOblique AvantGarde-Demi
AvantGarde-DemiOblique Bookman-Demi Bookman-DemiItalic
Bookman-Light Bookman-LightItalic Courier Courier-Bold
Courier-BoldOblique Courier-Oblique Helvetica
Helvetica-Bold Helvetica-BoldOblique Helvetica-Narrow
Helvetica-Narrow-Bold Helvetica-Narrow-BoldOblique
Helvetica-Narrow-Oblique Helvetica-Oblique NewCenturySchlbk-Bold
NewCenturySchlbk-BoldItalic NewCenturySchlbk-Italic
NewCenturySchlbk-Roman Palatino-Bold Palatino-BoldItalic
Palatino-Italic Palatino-Roman Symbol Times-Bold Times-BoldItalic
Times-Italic Times-Roman ZapfChancery-MediumItalic ZapfDingbats
```

Unfortunately, fontconfig doesn't recognize PostScript-style font
names directly, so Graphviz makes custom mappings from its list of
PostScipt names into fontconfig family names for use in all cairo
and gd based renderers. In [`-Tps`](/docs/outputs/ps/) output, these fonts are used without
name translation.

## Font selection

The fontname attribute in .gv graphs is a fontconfig style specification.

From: http://www.fontconfig.org/fontconfig-user.html

> Fontconfig provides a textual representation for patterns that
> the library can both accept and generate. The representation is
> in three parts, first a family name list, second list of point sizes,
> and finally a list of additional properties:
> 
> `<families>-<point sizes>:<name1>=<values1>:<name2>=<values2>...`
> 
> Values in a list are separated with commas. The name needn't
> include either a family or point size; they can be elided. In
> addition, there are symbolic constants that simultaneously
> indicate both a name and a value. Here are some examples:
> 
> Name | Meaning
> -----|--------
> `Times-12`                  | 12 point Times Roman
> `Times-12:bold`             | 12 point Times Bold
> `Courier:italic`            | Courier Italic in the default size
> `Monospace:matrix=1 .1 0 1` | The users preferred monospace font with artificial obliquing

Graphviz currently has a separate attribute for specififying fontsize.

TODO: We should allow the fontconfig style specification.  `Times-20` does
not currently result in a 20pt font.  This is probably because of special treatment of `-` for postscript
font names.

TODO: We seem to have a bug with use of `:` in fontnames, probably because
of special treatment for filenames in Windows. In fontnames, use `<space>` instead of `:` to separate values. `-Nfontname="Courier:italic"` doesn't produce an italic font in
graphviz-2.16.1, but: `-Nfontname="Courier italic"` works, but
`-Nfontname="Monospace matrix=1 .1 0 1"` doesn't.

## Font management with fontconfig

### How can I tell what fonts are available?

```shell-session
$ fc-list
```

### How can I tell what fonts dot is using?

```shell-session
$ dot foo.gv -Tpng -o foo.png -v 2>&1 | grep font
```

### How can I add a custom font?

In the current version of Graphviz with fontconfig, Cairo and
Pango, this cannot be done by simply putting a file in the
current directory or setting the DOTFONTPATH path variable.
Your custom font must be explicitly installed by fontconfig tools.

For a single font, e.g., `foo.ttf`:

```shell-session
$ mkdir -p ~/.fonts
$ cp foo.ttf ~/.fonts/
```

One can run `fc-cache` to speed up the use of fontconfig.

```shell-session
$ fc-cache
```

For Windows users, one can go to the `C:\windows\fonts`
folder and use File -> Install New Font from the pull-down menus
to install the font.

For a new font directory, e.g., `/Library/Fonts`, add a new `<dir>` element

```xml
<dir>/Library/Fonts</dir>
```

to a `.conf` file. Note that the file must have a correct xml structure
as specified by the fontconfig `fonts.dtd`. Possible choices for the
`.conf` file are local.conf in the same directory as the system-wide
`fonts.conf` file, or `.fonts.conf` in your home directory. 

### How can I ... font?

See: http://www.fontconfig.org/fontconfig-user.html

### Can I specify a font by filename instead of by familyname?

Sorry, the answer is no.  (The reason is that for this to
work, Graphviz has to intercept the font lookup before
fontconfig is called, and this can't be done when fonts
are being looked up by Pango.)

Some versions of fontconfig appear to recognize pathnames and
attempt to use that, but this isn't always the case.

### How can I be sure that a specific font is selected?

Provide enough specification in the fontname, and test it
with `fc-match` to ensure that your desired font is selected.
(Note, this will not ensure that the same font is used in [`-Tps`](/docs/outputs/ps/)
or [`-Tsvg`](/docs/outputs/svg/) renderings where we rely on the fonts available on the
final printer or computer.)

Note the downside, as mentioned previously, is that Graphviz cannot
do much to warn you when fontconfig didn't find a very
good match, because fontconfig just cheerfully falls back
to some standard font.  It would be really nice if the
fontconfig developers could provide a metric reflecting the
quality of the font match in their API.

### What about SVG fonts?

Graphviz has a native SVG driver that we wrote (which is the
default), and cairo's SVG driver (which you get with `-Tsvg:cairo`).

Graphviz' native SVG driver generates Windows compliant names
like `Times New Roman` or `Arial` by default. The names work in a
lot of situations (like Firefox running on Windows), but are
not guaranteed to be portable.  If you set `-Gfontnames=ps`,
you get Postscript names like `Times-Roman`.  If you set `-Gfontnames=svg`
you are guaranteed to get rock solid standards compliant SVG.
The SVG standard says that the legal generic font names
are `Serif`, `Sans-Serif`, and `Monospace` (plus `Cursive` and
`Fantasy` which we don't use in Graphviz). We generate those names.
The bad news is that various downstream renderers and editors
may resolve the generic font names differently, so it's not
quite clear how your SVG will look.  Many W3C examples show
how to use CSS (Cascading Style Sheets) to get around this
problem by giving a list of font family names in order of
lookup precedence, but some downstream processors (like the
inkscape editor in Linux) don't implement CSS, so we're up a tree here.

The cairo SVG driver solves this in an effective though brute
force way: it simply encodes embeds the needed fonts as lines and
curves in the target SVG.  For small examples, `-Tsvg:cairo` is
about 10 times bigger than [`-Tsvg`](/docs/outputs/svg/), but maybe it's worth it for
correctness.  The other problem is that such SVG is much much
slower to render, no doubt because it bypasses any system
font rendering services, and does it the old fashioned way.

### What about Postscript fonts?

TODO: say something here.  What about non-ASCII like `Latin1`?
What about loading your own fonts via `-L` like in the old
days with the weird outline font example.

## "What if" issues for nonstandard Graphviz builds
The following only apply if you build your own version of Graphviz
by configuring and compiling the source code to build your own
custom executable.  If you don't know what this means, it
definitely does not mean you.

### No freetype

When graphviz is built on systems without freetype, then only the gd
renderer will be available for bitmap outputs, and the only available
fonts are a small set of builtin bitmap fonts.  The poor quality of
these fonts will be evident, also, `dot ... -v 2>&1 | grep font`  will
say that the font is `<internal>`. This may actually be desirable
for installing minimal graphviz programs on a server where fonts
may not even be installed.

### No fontconfig

If graphviz is built on systems without fontconfig (e.g. Redhat-7) then
the fontname attribute will be interpreted as a font file name. The
system directories will be searched for this, or the directories can
be specified with the `GDFONTPATH` environment variable (or `DOTFONTPATH`
for historical reasons). Graphviz will use gd and freetype to obtain
metrics and render text.  No pango/cairo renderers will be available
without fontconfig support.

### Disabling fontconfig

Pango/cairo depends on fontconfig, so to disable fontconfig you also have
to disable pango/cairo.    The easiest way to do this temporarily is to
edit `/usr/lib/graphviz/config` and remove the entire `libpango` block.

Note that any changes to this file will be lost the next time graphviz
is updated, or `dot -c` is run with installer privileges.

With pango disabled, graphviz will use gd which, even if it was built with
fontconfig support, will still allow fontnames to be given as filenames.

You can also disable cairopango at build time with configure script options.

### No gd

Cairopango works without gd.  We are moving graphviz to the pango/cairo
libraries, but gd still offers some features that are hard to replace,
such as JPEGs, GIFs and paletted color bitmap outputs. However, font support
is fully functional without gd so long as pango, cairo, fontconfig,
freetype are available.

### No pango/cairo

Without pango/cairo, some of the key renderers are only available
with gd, which produces lower quality (but smaller) output.

Looking forward, we expect to depend more on pango for things like:
line wrapping, multiple fonts per label, bidirectional text and
other internationalization features.

### No gd and no cairopango

This is basically the original Graphviz without any external fonts.
It cannot render any raster formats, so it's mainly good for Postscript.
It relies on a few internal font tables

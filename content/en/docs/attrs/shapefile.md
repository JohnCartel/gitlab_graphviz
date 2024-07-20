---
defaults:
- '""'
flags: []
minimums: []
title: shapefile
types:
- string
used_by: "N"
description: A file containing user-supplied node content
---
*(Deprecated)*.

Sets the node's <code>[shape]({{< ref "shape.md" >}})="[box](/docs/shapes/#polygon)"</code>. The image in the shapefile must be
rectangular. The image formats supported as well as the precise semantics of
how the file is used depends on the [output format]({{< ref "../outputs/_index.md" >}}). For further
details, see [Image Formats]({{< ref "../outputs/_index.md#image-formats" >}}) and [External
PostScript files](../../../faq/#ext_image).

There is one exception to this usage: If <code>[shape]({{< ref "shape.md" >}})="epsf"</code>,
`shapefile` gives a filename containing a definition of the node in
PostScript. The graphics defined must be contain all of the node content,
including any desired boundaries. For further details, see [External
PostScript files](../../../faq/#ext_ps_file).

Only paths to local resources are supported. If you want to use a URL to a
remote resource, see the
[`dot_url_resolve.py`](https://gitlab.com/graphviz/graphviz/-/blob/main/contrib/dot_url_resolve.py)
script.

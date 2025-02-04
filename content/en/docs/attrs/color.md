---
defaults:
- black
flags: []
minimums: []
title: color
types:
- color
- colorList
used_by: ENC
description: Basic drawing color for graphics, not text
---
For the latter, use the
[`fontcolor`]({{< relref "fontcolor.md" >}}) attribute.

For edges, the value can either be a single color or a
[`colorList`](/docs/attr-types/colorList/).

In the latter case, if `colorList` has no fractions,
the edge is drawn using parallel splines or lines,
one for each color in the list, in the order given.

The head arrow, if any, is drawn using the first color in the list,
and the tail arrow, if any, the second color. This supports the common
case of drawing opposing edges, but using parallel splines instead of
separately routed multiedges. 

If any fraction is used, the colors are drawn in series, with each color
being given roughly its specified fraction of the edge.

For example, the graph:

{{< dot_card header="Edge Color Example" >}}
digraph G {
  a -> b [dir=both color="red:blue"]
  c -> d [dir=none color="green:red;0.25:blue"]
}
{{< /dot_card >}}

yields:

![](/doc/info/colorlist.svg)

{{< dot_card header="Subgraph & Node Color Example" >}}
digraph G {
  subgraph cluster_yellow {
    color="yellow"
    a [color="red"]
    b [color="green"]
  }
}
{{< /dot_card >}}

yields:

![](/doc/info/subgraph_node_color.svg)

See also:

- [`colorscheme`]({{< relref "colorscheme.md" >}})

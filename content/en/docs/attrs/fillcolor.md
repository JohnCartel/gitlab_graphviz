---
defaults:
- default: lightgrey
  for: (nodes)
- default: black
  for: (clusters)
flags: []
minimums: []
title: fillcolor
types:
- color
- colorList
used_by: NEC
description: Color used to fill the background of a node or cluster
---
Assuming <code>[style]({{< relref "style.md" >}})=filled</code>, or a filled [`arrowhead`]({{< relref "arrowhead.md" >}}).

If `fillcolor` is not defined, [`color`]({{< relref "color.md" >}}) is
used. (For clusters, if `color` is not defined,
[`bgcolor`]({{< relref "bgcolor.md" >}}) is used.) If this is not defined,
the default is used, except for
<code>[shape]({{< relref "shape.md" >}})=point</code> or when the output
format is `MIF`,
which use black by default.

If the value is a [`colorList`](/docs/attr-types/colorList/), a gradient fill is
used. By default, this is a linear fill; setting <code>[style]({{< relref "style.md" >}})=radial</code> will
cause a radial fill. At present, only two colors are used. If the second
color (after a colon) is missing, the default color is used for it.

See also the [`gradientangle`]({{< relref "gradientangle.md" >}}) attribute
for setting the gradient angle. 

Note that a cluster inherits the root graph's attributes if defined.
Thus, if the root graph has defined a `fillcolor`, this will override a
[`color`]({{< relref "color.md" >}}) or [`bgcolor`]({{< relref "bgcolor.md" >}}) attribute set for the cluster.

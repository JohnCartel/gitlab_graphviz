---
defaults:
- '1'
flags: []
minimums:
- 0(dot,twopi)
- 1(neato,fdp)
title: weight
types:
- int
- double
used_by: E
description: Weight of edge
---


In `dot`, the heavier the weight, the shorter, straighter and more vertical the edge is.

For `twopi`, `weight=0` indicates the edge should not be used in
constructing a spanning tree from the root.

For other layouts, a larger weight encourages the layout to make the edge
length closer to that specified by the [`len`]({{< relref "len.md" >}}) attribute.

Weights in `dot` must be integers.

{{< dot_card header="Edge Weights" >}}
digraph {
  root -> a
  root -> b [weight=2]
  root -> c [weight=3]
}
{{< /dot_card >}}

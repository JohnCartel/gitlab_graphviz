---
defaults:
- <device-dependent>
flags: []
minimums: []
title: margin
types:
- double
- point
used_by: NCG
description: For graphs, this sets x and y margins of canvas, in inches
---

If the margin is a single double, both margins are set equal to the given
value.

Note that the margin is not part of the drawing but just empty space left
around the drawing. The margin basically corresponds to a translation of
drawing, as would be necessary to center a drawing on a page. Nothing is
actually drawn in the margin. To actually extend the background of a drawing,
see the [`pad`]({{< relref "pad.md" >}}) attribute.

For clusters, `margin` specifies the space between the nodes in the cluster
and the cluster bounding box. By default, this is 8 points.

For nodes, this attribute specifies space left around the node's label. By
default, the value is `0.11,0.055`.

{{< dot_card header="Nodes Example: Tall Margins, Wide Margins, and Equal Margins">}}
graph {
  "1.5x0.5" [shape=rect margin="1.5,0.5"] # in inches
  "0.5x1.5" [shape=rect margin="0.5,1.5"] # in inches
  "1.5x1.5" [shape=rect margin="1.5"]     # in inches
}
{{< /dot_card >}}

{{< dot_card header="Example: Cluster and Graph Margins">}}
graph {
    bgcolor=lightgray
    margin=0 # in inches
    
    subgraph cluster_one {
      margin=8 # in points
      a
      b
    }
    subgraph cluster_two {
      margin=16 # in points
      c
      d
    }
}
{{< /dot_card >}}

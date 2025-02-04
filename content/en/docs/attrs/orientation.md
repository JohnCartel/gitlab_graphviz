---
defaults:
- '0.0'
- '""'
flags: []
minimums:
- '-360.0'
title: orientation
types:
- double
- string
used_by: NG
description: node shape rotation angle, or graph orientation
---

When used on nodes: Angle, in degrees, to rotate polygon node shapes. For any number of polygon sides, 0 degrees rotation results in a flat base.
When used on graphs: If `"[lL]*"`, sets graph orientation to landscape.

Used only if [`rotate`]({{< relref "rotate.md" >}}) is not defined.

{{< dot_card header="Node Orientations">}}
digraph {
  layout=neato       # Render in a circular layout
  node [shape=house] # Make all nodes have 'house' shape

    0 [orientation=0]
   45 [orientation=45]
   90 [orientation=90]
  135 [orientation=135]
  180 [orientation=180]
  225 [orientation=225]
  270 [orientation=270]
  315 [orientation=315]
  0 -> 45 -> 90 -> 135 -> 180 -> 225 -> 270 -> 315 -> 0
}
{{< /dot_card >}}

{{< dot_card header="Landscape Graph Orientation">}}
digraph {
  orientation=L
  a -> b
}
{{< /dot_card >}}

See also:

- [`orientation`]({{< relref "orientation.md" >}})
- [`rotate`]({{< relref "rotate.md" >}})

---
defaults: []
flags:
- write
minimums: []
title: vertices
types:
- pointList
used_by: "N"
description: Sets the coordinates of the vertices of the node's polygon, in inches
---

Used if the node is polygonal, and output is `dot` or `xdot`.

If the node is an ellipse or circle, the [`samplepoints`]({{< relref "samplepoints.md" >}})
attribute affects the output.

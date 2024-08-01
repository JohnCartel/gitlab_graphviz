---
defaults:
- default: '8'
  for: (output)
- default: '20'
  for: (overlap and image maps)
flags: []
minimums: []
title: samplepoints
types:
- int
used_by: "N"
description: Gives the number of points used for a circle/ellipse node
---

Used if the input graph defines the [`vertices`]({{< relref "vertices.md" >}}) attribute, and
output is `dot` or `xdot`.

It plays the same role in `neato`, when adjusting the layout to avoid
overlapping nodes, and in image maps.

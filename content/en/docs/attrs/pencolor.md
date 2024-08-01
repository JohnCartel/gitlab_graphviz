---
defaults:
- black
flags: []
minimums: []
title: pencolor
types:
- color
used_by: C
description: Color used to draw the bounding box around a cluster
---

 If `pencolor` is not defined, [`color`]({{< relref "color.md" >}}) is used.
 
 If [`color`]({{< relref "color.md" >}}) is not defined, [`bgcolor`]({{< relref "bgcolor.md" >}}) is used.
 
 If [`bgcolor`]({{< relref "bgcolor.md" >}}) is not defined, the default is used.

Note that a cluster inherits the root graph's attributes if defined. Thus, if
the root graph has defined a `pencolor`, this will override a [`color`]({{< relref "color.md" >}}) or
[`bgcolor`]({{< relref "bgcolor.md" >}}) attribute set for the cluster.

---
defaults:
- 1+(avg. len)*sqrt(|V|)
flags:
- neato
minimums:
- epsilon
title: defaultdist
types:
- double
used_by: G
description: The distance between nodes in separate connected components
---
If set too small, connected components may overlap.

Only applicable if <code>[pack]({{< relref "pack.md" >}})=false</code>.

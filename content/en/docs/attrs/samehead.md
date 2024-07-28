---
defaults:
- '""'
flags:
- dot
minimums: []
title: samehead
types:
- string
used_by: E
description: Edges with the same head and the same `samehead` value are aimed at the same point on the head
---

This has no effect on loops.

Prior to Graphviz 8.0.1, each node can have at most 5 unique `samehead` values.

See [limitation]({{< relref "_index.md#undir_note" >}}).

See also [`sametail`]({{< relref "sametail.md" >}}).

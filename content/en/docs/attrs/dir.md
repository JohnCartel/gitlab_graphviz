---
defaults:
- default: forward
  for: (directed)
- default: none
  for: (undirected)
flags: []
minimums: []
title: dir
types:
- dirType
used_by: E
description: Edge type for drawing arrowheads
---

Indicates which ends of the edge should be decorated with an arrowhead.

The actual style of the arrowhead can be specified using the
[`arrowhead`]({{< relref "arrowhead.md" >}}) and [`arrowtail`]({{< relref "arrowtail.md" >}}) attributes.

See [limitation]({{< relref "_index.md#undir_note" >}}).

{{< dot_card header="Example">}}
digraph {
  A->B [dir=forward]
  C->D [dir=back]
  E->F [dir=both]
  G->H [dir=none]
}
{{< /dot_card >}}

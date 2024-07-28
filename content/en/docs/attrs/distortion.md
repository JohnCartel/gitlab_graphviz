---
defaults:
- '0.0'
flags: []
minimums:
- '-100.0'
title: distortion
types:
- double
used_by: "N"
description: Distortion factor for <code>[shape](/docs/attrs/shape)=[polygon](/doc/info/shapes.html#polygon)</code>
---

Positive values cause top part to be larger than bottom; negative values do
the opposite.

See also [`skew`]({{< relref "skew.md" >}}).

{{< dot_card header="Example">}}
graph {
  LargeBottom [shape=polygon sides=4 distortion=-.5]
  LargeTop    [shape=polygon sides=4 distortion=.5]
}
{{< /dot_card >}}

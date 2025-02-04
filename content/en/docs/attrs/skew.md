---
defaults:
- '0.0'
flags: []
minimums:
- '-100.0'
title: skew
types:
- double
used_by: "N"
description: Skew factor for <code>[shape](/docs/attrs/shape)=polygon</code>
---

Positive values skew top of polygon to right; negative to left.

See also [`distortion`]({{< relref "distortion.md" >}}).

{{< dot_card header="Example">}}
graph {
  SkewLeft  [shape=polygon sides=4 skew=-.5]
  SkewRight [shape=polygon sides=4 skew=.5]
}
{{< /dot_card >}}

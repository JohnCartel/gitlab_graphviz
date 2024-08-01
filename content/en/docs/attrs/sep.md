---
defaults:
- '+4'
flags:
- fdp
- neato
- sfdp
- osage
- circo
- twopi
minimums: []
title: sep
types:
- addDouble
- addPoint
used_by: G
description: Margin to leave around nodes when removing node overlap
---

This guarantees a minimal non-zero distance between nodes.

If the attribute begins with a plus sign `'+'`, an additive margin is
specified. That is, `"+w,h"` causes the node's bounding box to be increased by
`w` points on the left and right sides, and by `h` points on the top and bottom.

Without a plus sign, the node is scaled by `1 + w` in the x coordinate and
`1 + h` in the y coordinate.

If only a single number is given, this is used for both dimensions.

If unset but [`esep`]({{< relref "esep.md" >}}) is defined, the `sep` values will be set to the
[`esep`]({{< relref "esep.md" >}}) values divided by `0.8`. If [`esep`]({{< relref "esep.md" >}}) is unset, the
default value is used.

{{< dot_card header="Example: No separation">}}
graph {
    layout="fdp"
    sep="0"
    A -- B
    B -- C
    C -- D
    D -- A
}
{{< /dot_card >}}

{{< dot_card header="Example: separation of 3">}}
graph {
    layout="fdp"
    sep="3"
    A -- B
    B -- C
    C -- D
    D -- A
}
{{< /dot_card >}}

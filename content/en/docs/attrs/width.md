---
defaults:
- '0.75'
flags: []
minimums:
- '0.01'
title: width
types:
- double
used_by: "N"
description: Width of node, in inches
---

This is taken as the initial, minimum width of the node. If
[`fixedsize`]({{< relref "fixedsize.md" >}}) is true, this will be the final width of the
node. Otherwise, if the node label requires more width to fit, the node's
width will be increased to contain the label.

If the output format is `dot`, the value given to `width` will be the final
value.

If the node shape is regular, the width and height are made identical:

* If either the width or the height is set explicitly, that value is used.
* If both the width or the height are set explicitly, the maximum of the two values is used.
* If neither is set explicitly, the minimum of the two default values is used.

{{< dot_card header="Width Example" >}}
digraph {
  "d" # default
  "1in" [width=1]
  "2in" [width=2]
}
{{< /dot_card >}}

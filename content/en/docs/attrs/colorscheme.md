---
defaults:
- '""'
flags: []
minimums: []
title: colorscheme
types:
- string
used_by: ENCG
description: "A color scheme namespace: the context for interpreting color names"
---

In particular, if a [`color`](/docs/attr-types/color/) value has form `"xxx"` or `"//xxx"`,
then the color `xxx` will be evaluated according to the current color scheme.
If no color scheme is set, the standard [X11 naming]({{< relref "../colors.md#x11" >}}) is used.

For example, if `colorscheme=oranges9` (from [Brewer color schemes]({{< relref "../colors.md#brewer" >}})), then `color=7` is interpreted as
`color="/oranges9/7"`, the 7th color in the `oranges9` colorscheme.

{{< dot_card header="Orange Colorscheme">}}
graph {
  node [colorscheme=oranges9] # Apply colorscheme to all nodes
  1 [color=1]
  2 [color=2]
  3 [color=3]
  4 [color=4]
  5 [color=5]
  6 [color=6]
  7 [color=7]
  8 [color=8]
  9 [color=9]
}
{{< /dot_card >}}

{{< dot_card header="Green Colorscheme">}}
graph {
  node [colorscheme=greens9] # Apply colorscheme to all nodes
  1 [color=1]
  2 [color=2]
  3 [color=3]
  4 [color=4]
  5 [color=5]
  6 [color=6]
  7 [color=7]
  8 [color=8]
  9 [color=9]
}
{{< /dot_card >}}

See also:

- [`color`]({{< relref "color.md" >}})

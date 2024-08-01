---
defaults:
- <none>
flags: []
minimums: []
title: _background
types:
- xdot
used_by: G
description: A string in the [`xdot` format](/docs/attr-types/xdot/) specifying an arbitrary background
---
During rendering, the canvas is first filled as described in the
[`bgcolor` attribute]({{< relref "bgcolor.md" >}}).

Then, if `_background` is defined, the graphics
operations described in the string are performed on the canvas.

See [`xdot` format](/docs/attr-types/xdot/) page for more information.

{{< dot_card header="Render a red square in the background">}}
digraph G {
  _background="c 7 -#ff0000 p 4 4 4 36 4 36 36 4 36";
  a -> b
}
{{</ dot_card >}}

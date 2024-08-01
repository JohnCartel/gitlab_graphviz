---
defaults:
- 'false'
flags: []
minimums: []
title: landscape
types:
- bool
used_by: G
description: If true, the graph is rendered in landscape mode
---
Synonymous with
<code>[rotate]({{< relref "rotate.md" >}})=90</code> or <code>[orientation]({{< relref "orientation.md" >}})=landscape</code>.

{{< dot_card header="Rotations">}}
digraph {
  landscape=true
  a -> b
}
{{< /dot_card >}}

See also:

- [`rotate`]({{< relref "rotate.md" >}})
- [`orientation`]({{< relref "orientation.md" >}})

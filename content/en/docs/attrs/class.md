---
defaults:
- '""'
flags:
- svg
minimums: []
title: class
types:
- string
used_by: ENCG
description: Classnames to attach to the node, edge, graph, or cluster's SVG element
---
Combine with [`stylesheet`]({{< relref "stylesheet.md" >}}) for styling SVG output
using CSS classnames.

Multiple space-separated classes are supported.

See also:

- [`stylesheet`]({{< relref "stylesheet.md" >}})
- [`id`]({{< relref "id.md" >}})

Example:

{{< dot_card >}}
digraph G {
  graph [class="cats"];

  subgraph cluster_big {
    graph [class="big_cats"];

    "Lion" [class="yellow social"];
    "Snow Leopard" [class="white solitary"];
  }
}
{{< /dot_card >}}

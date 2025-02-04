---
defaults:
- default: '"\N"'
  for: '(nodes)'
- default: '""'
  for: '(otherwise)'
flags: []
minimums: []
title: label
types:
- lblString
used_by: ENGC
description: Text label attached to objects
---

If a node's [`shape`]({{< relref "shape.md" >}}) is record, then the label can
have a [special format]({{< relref "../shapes.md#record" >}})
which describes the record layout.

Note that a node's default label is `"\N"`, so the node's name or ID becomes
its label.

Technically, a node's name can be an HTML string but this will not mean that
the node's label will be interpreted as an [HTML-like
label]({{< relref "../shapes.md#html" >}}). This is because the node's actual label is an
ordinary string, which will be replaced by the raw bytes stored in the node's
name.

To get an HTML-like label, the label attribute value itself must be an HTML
string.

{{< dot_card header="Example: Van Gogh Paintings">}}
graph {
  label="Vincent van Gogh Paintings"

  subgraph cluster_self_portraits {
    label="Self-portraits"

    spwgfh [label="Self-Portrait with Grey Felt Hat"]
    spaap [label="Self-Portrait as a Painter"]
  }
  
  subgraph cluster_flowers {
    label="Flowers"

    sf [label="Sunflowers"]
    ab [label="Almond Blossom"]
  }
}
{{< /dot_card >}}

---
defaults:
- <none>
flags:
- map
- postscript
- svg
minimums: []
title: URL
types:
- escString
used_by: ENGC
description: Hyperlinks incorporated into device-dependent output
---
At present, used in `ps2`, `cmap`, `i*map` and `svg` formats.
For all these formats, URLs can be attached to nodes, edges and
clusters. URL attributes can also be attached to the root graph in `ps2`,
`cmap` and `i*map` formats. This serves as the base URL for relative URLs in the
former, and as the default image map file in the latter.

For `svg`, `cmapx` and `imap` output, the active area for a node is its
visible image.
For example, an unfilled
node with no drawn boundary will only be active on its label.
For other output, the active area is its bounding box.
The active area for a cluster is its bounding box.
For edges, the active areas are small circles where the edge contacts its head
and tail nodes. In addition, for `svg`, `cmapx` and `imap`, the active area
includes a thin polygon approximating the edge. The circles may
overlap the related node, and the edge URL dominates.
If the edge has a label, this will also be active.
Finally, if the edge has a head or tail label, this will also be active.

For edges, the attributes [`headURL`]({{< relref "headURL.md" >}}),
[`tailURL`]({{< relref "tailURL.md" >}}), [`labelURL`]({{< relref "labelURL.md" >}}) and
[`edgeURL`]({{< relref "edgeURL.md" >}}) allow control of various parts of an
edge.

if active areas of two edges overlap, it is unspecified which area dominates.

See also:

- [`edgehref`]({{< relref "edgehref.md" >}}), [`edgeURL`]({{< relref "edgeURL.md" >}})
- [`headhref`]({{< relref "headhref.md" >}}), [`headURL`]({{< relref "headURL.md" >}})
- [`labelhref`]({{< relref "labelhref.md" >}}), [`labelURL`]({{< relref "labelURL.md" >}})
- [`tailhref`]({{< relref "tailhref.md" >}}), [`tailURL`]({{< relref "tailURL.md" >}})
- [`href`]({{< relref "href.md" >}}), [`URL`]({{< relref "URL.md" >}})

{{< dot_card header="Example: Van Gogh Paintings with Links">}}
graph {
  label="Vincent van Gogh Paintings"
  URL="https://en.wikipedia.org/wiki/Vincent_van_Gogh"

  subgraph cluster_self_portraits {
    URL="https://en.wikipedia.org/wiki/Portraits_of_Vincent_van_Gogh"
    label="Self-portraits"

    "Self-Portrait with Grey Felt Hat" [URL="https://www.vangoghmuseum.nl/en/collection/s0016V1962"]
    "Self-Portrait as a Painter" [URL="https://www.vangoghmuseum.nl/en/collection/s0022V1962"]
  }
  
  subgraph cluster_flowers {
    URL="https://en.wikipedia.org/wiki/Sunflowers_(Van_Gogh_series)"
    label="Flowers"

    "Sunflowers" [URL="https://www.nationalgallery.org.uk/paintings/vincent-van-gogh-sunflowers"]
    "Almond Blossom" [URL="https://www.vangoghmuseum.nl/en/collection/s0176V1962"]
  }
}
{{< /dot_card >}}
